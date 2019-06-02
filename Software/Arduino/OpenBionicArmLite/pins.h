#ifndef _PINS_H_
#define _PINS_H_

#if defined(BOARD)
    #if BOARD == BOARD_ARDUINO_UNO
    
    #elif BOARD == BOARD_ARDUINO_LEONARDO
    
    #elif BOARD == BOARD_ARDUINO_MEGA
    
    #elif BOARD == BOARD_ARDUINO_MINI
    
    #elif BOARD == BOARD_ARDUINO_MICRO
    
    #elif BOARD == BOARD_ARDUINO_NANO
        #include "pins/ArduinoNano_pins.h"
    #endif
#else
    #error "You have to specify board type! Missing #define BOARD <type> in config file."
#endif

#endif