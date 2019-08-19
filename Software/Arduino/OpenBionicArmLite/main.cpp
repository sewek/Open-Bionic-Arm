#include "main.h"
#include "commands.h"

#include <stdio.h>
#include <stdlib.h>
#include <Arduino.h>

// Local Variables
volatile bool conversion_flag = false;
volatile bool start_conversion = false;
volatile int conversions_number = 0;
volatile unsigned int interval = 2;
volatile unsigned int** sensors_value;
volatile unsigned int** sensors_deltatime;
volatile unsigned long** sensors_oldtime;

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
        Serial.println("Elo");
        String cmd = Serial.readStringUntil('\n');
        
        #if defined(VERBOSE)
          Serial.println(cmd);
        #endif
        
        if (cmd == OK)
        {
            // Nothing
        }
        else if (cmd == ERROR)
        {
            // Nothing
        }
        else if (cmd == START_CONVERSION)
        {
            conversions_number = Serial.readStringUntil(';').toInt();
            start_conversion = true;
            conversion_flag = true;
        }
        else if (cmd == STOP_CONVERSION)
        {
            start_conversion = false;
            conversion_flag = false;
        }
        else if (cmd == SET_INTERVALS)
        {
            interval = Serial.readStringUntil(';').toInt();
        }
        else if (cmd == GET_RESOLUTION)
        {
            Serial.println(10, DEC); //TODO: Make it more automatic.
        }
        else
        {
            #if defined(VERBOSE)
                Serial.println("Command not found!");
            #endif
        }
    }

    if (start_conversion)
    {
        if (!conversion_flag)
        {
            for (int j = 0; j < conversions_number; j++)
            {
                for (uint8_t i = 0; i < SENSORS_NUM; i++)
                {
                    //TODO: Make limits 1 byte, 2 bytes, 2 bytes.
                    Serial.print("D");
                    Serial.print(i, DEC);
                    Serial.print(";");
                    Serial.print(sensors_value[j][i], DEC);
                    Serial.print(";");
                    Serial.print(sensors_deltatime[j][i], DEC);
                    Serial.println();
                }
            }
            conversion_flag = true;
        }
    }
}

void work()
{
    if (!conversion_flag || !start_conversion)
        return;
    
    free(sensors_value);
    free(sensors_deltatime);
    free(sensors_oldtime);

    sensors_value = malloc(conversions_number*sizeof(int));
    sensors_deltatime = malloc(conversions_number*sizeof(int));
    sensors_oldtime = malloc(conversions_number*sizeof(long));

    for (int j = 0; j < conversions_number; j++)
    {
        sensors_value[j] = malloc(SENSORS_NUM*sizeof(int));
        sensors_deltatime[j] = malloc(SENSORS_NUM*sizeof(int));
        sensors_oldtime[j] = malloc(SENSORS_NUM*sizeof(long));
        for (uint8_t i = 0; i < SENSORS_NUM; i++)
        {
            if (sensors_oldtime[j][i] == 0)
                sensors_oldtime[j][i] = millis();
    
            sensors_value[j][i] = map(analogRead(SENSORS_PINS[i]), 0, 1023, 0, 10000);
            sensors_deltatime[j][i] = millis() - sensors_oldtime[j][i];
            sensors_oldtime[j][i] = millis();
        }
    }
    
    conversion_flag = false;
}

void idle()
{
    delay(interval);
}
