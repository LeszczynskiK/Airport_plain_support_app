#ifndef AFTERLANDING_H
#define AFTERLANDING_H

#include <QObject>

class AfterLanding : public QObject {
    Q_OBJECT // Q_OBJECT macro enables Qt's meta-object compiler for signals, slots, and properties

    // Property for parking guidance, readable via parkingGuidance(), constant
    Q_PROPERTY(QString parkingGuidance READ parkingGuidance CONSTANT)

    // Property for gate assignment, readable via gateAssignment(), constant
    Q_PROPERTY(QString gateAssignment READ gateAssignment CONSTANT)

    // Property for current time, readable via currentTime(), constant
    Q_PROPERTY(QString currentTime READ currentTime CONSTANT)

    // Property for delay status, readable via delayStatus(), constant
    Q_PROPERTY(QString delayStatus READ delayStatus CONSTANT)

    // Property for delay flag, readable via hasDelay(), constant
    Q_PROPERTY(bool hasDelay READ hasDelay CONSTANT)

    // Property for remaining fuel in kg, readable via remainingFuel(), constant
    Q_PROPERTY(int remainingFuel READ remainingFuel CONSTANT)

public:
    explicit AfterLanding(QObject *parent = nullptr); // Constructor (explicit call only avaiable - if programmer want to create object only)

    // Getter for parking guidance: returns instructions to reach the parking terminal
    QString parkingGuidance();

    // Getter for gate assignment: returns the assigned gate
    QString gateAssignment();

    // Getter for current time: returns the current time as a string
    QString currentTime();

    // Getter for delay status: returns the delay status message
    QString delayStatus();

    // Getter for delay flag: returns true if the flight is delayed
    bool hasDelay();

    // Getter for remaining fuel: returns the remaining fuel in kg
    int remainingFuel();

private:
    QString m_parkingGuidance; // Stores parking guidance instructions
    QString m_gateAssignment; // Stores the assigned gate
    QString m_currentTime; // Stores the current time
    QString m_delayStatus; // Stores the delay status message
    bool m_hasDelay; // Flag indicating if the flight is delayed
    int m_remainingFuel; // Stores the remaining fuel in kg
};

#endif // AFTERLANDING_H
