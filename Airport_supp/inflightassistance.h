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


public:
    explicit InFlightAssistance(QObject *parent = nullptr);

    double altitude();
    double speed();
    QString heading();

private:
    double m_altitude;
    double m_speed;
    QString m_heading;
};

#endif // INFLIGHTASSISTANCE_H
