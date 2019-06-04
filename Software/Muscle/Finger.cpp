#include "Finger.h"

Finger::Finger()
{
    for (int i = 0; i < 3; i++)
    {
        muscle[i] = new Muscle();
    }
}

Finger::~Finger()
{
    delete[] muscle;
}

void Finger::update()
{
    for (int i = 0; i < 3; i++)
    {
        muscle[i]->update();
    }
}

void Finger::close()
{
    m_set_force_all(m_force_close);
}

void Finger::free()
{
    m_set_force_all(m_force_free);
}

void Finger::open()
{
    m_set_force_all(m_force_open);
}

// Private

void Finger::m_set_force_all(int _force)
{
    for (int i = 0; i < 3; i++)
    {
        muscle[i]->setForce(_force);
    }
}