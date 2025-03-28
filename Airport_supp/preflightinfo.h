#ifndef PREFLIGHTINFO_H
#define PREFLIGHTINFO_H

#include <QObject>

class PreFlightInfo : public QObject {
    Q_OBJECT

    // Property for flight plan summary, readable via flightPlan(), constant
    Q_PROPERTY(QString flightPlan READ flightPlan CONSTANT)

    // Property for NOTAMs, readable via notams(), constant
    Q_PROPERTY(QString notams READ notams CONSTANT)

    // Property for fuel load in kg, readable via fuelLoad(), constant
    Q_PROPERTY(int fuelLoad READ fuelLoad CONSTANT)

    // Property for passenger count, readable via passengerCount(), constant
    Q_PROPERTY(int passengerCount READ passengerCount CONSTANT)

public:
    PreFlightInfo(QObject *parent = nullptr); // Constructor

    QString flightPlan(); // Getter for flight plan summary
    QString notams(); // Getter for NOTAMs
    int fuelLoad(); // Getter for fuel load
    int passengerCount(); // Getter for passenger count

private:
    QString m_flightPlan; // Stores flight plan summary
    QString m_notams; // Stores NOTAMs
    int m_fuelLoad; // Stores fuel load in kg
    int m_passengerCount; // Stores passenger count
};

#endif // PREFLIGHTINFO_H
