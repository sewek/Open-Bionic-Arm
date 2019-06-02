#ifndef MAIN_H
#define MAIN_H

// Variables
#include "macros.h"
#include "commands.h"

// Config
#include "config.h"

// Helpers
#include "pins.h"

// Functions
bool sys_init();
void communication();
void work();
void idle();

#endif