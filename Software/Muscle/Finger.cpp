#include "Finger.h"

Finger::Finger()
{
}

Finger::~Finger()
{
}

void Finger::update()
{
    m_muscle1.update();
    m_muscle2.update();
    m_muscle3.update(); 
}

int Muscle::getForce()
{
    return 0;
}

void Muscle::setForce(int _force)
{
}