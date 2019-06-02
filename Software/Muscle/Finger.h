#include "Muscle.h"

class Finger
{
private:
    Muscle m_muscle1;
    Muscle m_muscle2;
    Muscle m_muscle3;

public:
    Finger();
    ~Finger();

    void update();

    void setForce(int);
    int getForce();

};