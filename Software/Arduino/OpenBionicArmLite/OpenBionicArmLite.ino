#include "main.h"

void setup()
{
    if (!sys_init())
    {
        Serial.begin(SERIAL_SPEED);
        Serial.println("Initialization has occurred some problems!");
    }
}

void loop()
{
    communication();
    Serial.flush();
    work();
    //idle();
}
