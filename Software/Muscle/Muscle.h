

class Muscle
{
private:
    float m_temperature;
    int m_force;

public:
    Muscle();
    ~Muscle();

    void update();

    float getTemperature();
    void setTemperature(float);

    void setForce(int);
    int getForce();
};

