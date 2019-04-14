#pragma once

#if defined(__AVR_ATmega328P__)

    #include "../../devices/atmega328/clock.hpp"

#elif defined(__AVR_ATmega8__)

    //todo

#else

    #include "../../devices/virtual/clock.hpp"

#endif