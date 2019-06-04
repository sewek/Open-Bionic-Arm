#include "Hand.h"

Hand::Hand()
{
    for (int i = 0; i < 5; i++)
    {
        finger[i] = new Finger();
    }
}

Hand::~Hand()
{
    delete[] finger;
}

void Hand::update()
{
    for (int i = 0; i < 5; i++)
    {
        finger[i]->update();
    }
}

void Hand::close()
{}

void Hand::free()
{}

void Hand::open()
{}
