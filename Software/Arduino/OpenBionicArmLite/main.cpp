#include "main.h"
#include "commands.h"

#include <stdio.h>
#include <Arduino.h>

// Local Variables
volatile bool conversion_flag = false;
volatile bool start_conversion = false;
volatile unsigned int interval = 1;
volatile unsigned int sensors_value[SENSORS_NUM];
volatile unsigned int sensors_deltatime[SENSORS_NUM];
volatile unsigned long sensors_oldtime[SENSORS_NUM];

// Nah Variables
volatile uint8_t m_byte;

bool sys_init()
{
    #if !defined(SERIAL_SPEED)
        #error "You have to specify serial speed. Missing #define SERIAL_SPEED <type> in config file."
    #endif

    #if SENSORS_NUM > SENSORS_MAX_NUM
        #error "Number of sensors is too big for this board! Change it in config file."
    #endif
    
    Serial.begin(SERIAL_SPEED);

    //TODO: Some init xD (idk)

    return true;
}

void communication()
{
    if (Serial.available() > 0)
    {
        switch (Serial.read())
        {
        case OK:
            // Nothing
            break;

        case ERROR:
            // Nothing
            break;

        case START_CONVERSION:
            start_conversion = true;
            conversion_flag = true;
            break;

        case STOP_CONVERSION:
            start_conversion = false;
            conversion_flag = false;
            break;

        case SET_INTERVALS:
            interval = 0;
            while (true)
            {
                m_byte = Serial.read();
                if (m_byte == '\n')
                    break;
                interval <<= 8;
                interval |= (1<<m_byte);
            }
            break;

        case GET_RESOLUTION:
            Serial.print(10, DEC); //TODO: Make it more automatic.
            break;
        
        default:
            break;
        }
    }

    if (start_conversion)
    {
        if (!conversion_flag)
        {
            for (uint8_t i = 0; i < SENSORS_NUM; i++)
            {
                //TODO: Make limits 1 byte, 2 bytes, 2 bytes.
                Serial.print("D");
                Serial.print(i, DEC);
                Serial.print(";");
                Serial.print(sensors_value[i], DEC);
                Serial.print(";");
                Serial.print(sensors_deltatime[i], DEC);
                Serial.println();
            }
            conversion_flag = true;
        }
    }
    
}

void work()
{
    if (!conversion_flag || !start_conversion)
        return;
    
    for (uint8_t i = 0; i < SENSORS_NUM; i++)
    {
        if (sensors_oldtime[i] == 0)
            sensors_oldtime[i] = millis();

        sensors_value[i] = map(analogRead(SENSORS_PINS[i]), 0, 1023, 0, 10000 );
        sensors_deltatime[i] = millis() - sensors_oldtime[i];
        sensors_oldtime[i] = millis();
    }
    conversion_flag = false;
}

void idle()
{
    delay(interval);
}
