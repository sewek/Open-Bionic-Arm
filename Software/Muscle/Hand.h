#include "Finger.h"

class Hand
{
private:

public:
    Hand();
    ~Hand();

    void update();

    void close();
    void free();
    void open();

    Finger *finger[5];
};

