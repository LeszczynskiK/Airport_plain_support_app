#ifndef INFLIGHTASSISTANCE_H
#define INFLIGHTASSISTANCE_H

#include <QObject>

class InFlightAssistance : public QObject {
    Q_OBJECT// Q_OBJECT macro is required for any class that uses Qt's meta-object compiler.
    // It enables features like signals, slots, and properties (Q_PROPERTY) to work with QML and other Qt systems.

    // The current altitude of the aircraft in feet.
    // READ altitude: uses the altitude() method to get the value.
    // CONSTANT: this property won't change after initialization (no setter or signal).
    Q_PROPERTY(double altitude READ altitude CONSTANT)

    // The current speed of the aircraft in knots.
    // READ speed: uses the speed() method to get the value.
    // CONSTANT: this property won't change after initialization.
    Q_PROPERTY(double speed READ speed CONSTANT)

    // The current direction the aircraft is heading (e.g., "North").
    // READ heading: uses the heading() method to get the value.
    Q_PROPERTY(QString heading READ heading CONSTANT)

    // Property for latitude coordinate, readable via latitude(), constant
    Q_PROPERTY(double latitude READ latitude CONSTANT)

    // Property for longitude coordinate, readable via longitude(), constant
    Q_PROPERTY(double longitude READ longitude CONSTANT)

    // Property for direction in degrees, readable via direction(), constant
    Q_PROPERTY(double direction READ direction CONSTANT)

    // Property for guidance message, readable via guidanceMessage(), constant
    Q_PROPERTY(QString guidanceMessage READ guidanceMessage CONSTANT)



public:
    explicit InFlightAssistance(QObject *parent = nullptr);

    double altitude(); // Getter for altitude
    double speed(); // Getter for speed
    QString heading(); // Getter for heading message

    double latitude(); // Getter for latitude
    double longitude(); // Getter for longitude
    double direction(); // Getter for direction in degrees
    QString guidanceMessage(); // Getter for guidance message

private:
    double m_altitude; // Stores altitude in meters
    double m_speed; // Stores speed in km/h
    QString m_heading; // Stores heading direction (e.g., "North")
    double m_latitude; // Stores latitude coordinate
    double m_longitude; // Stores longitude coordinate
    double m_direction; // Stores direction in degrees
    QString m_guidanceMessage; // Stores guidance message for flight path
};

#endif // INFLIGHTASSISTANCE_H
