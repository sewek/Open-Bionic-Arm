#include "Muscle.h"

class Finger
{
private:
    void m_set_force_all(int);

    int m_force_close = 200;
    int m_force_free = 10;
    int m_force_open = 0;

public:
    Finger();
    ~Finger();

    void update();

    void close();
    void free();
    void open();

    Muscle *muscle[3];
};