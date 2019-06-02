#include "Finger.h"

class Hand
{
private:
    Finger m_finger1;
    Finger m_finger2;
    Finger m_finger3;
    Finger m_finger4;
    Finger m_finger5;

public:
    Hand();
    ~Hand();

    void update();

    void closeHand();
    void closeFinger();

    void freeHand();
    void freeFinger();
    
    void openHand();
    void openFinger();
};

