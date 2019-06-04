#include "Muscle.h"

Muscle::Muscle()
{
}

Muscle::~Muscle()
{
}

void update()
{
    //TODO: Check temperature
    //TODO: Reduce PWM signal
}

float Muscle::getTemperature()
{
    return m_temperature;
}

void Muscle::setTemperature(float _temp)
{
    m_temperature = _temp;
}

int Muscle::getForce()
{
    return m_force;
}

void Muscle::setForce(int _force)
{
    m_force = _force;
    //TODO: Set PWM
}