#include "inflightassistance.h"

InFlightAssistance::InFlightAssistance(QObject *parent) : QObject(parent) {
    // Set example values
    m_altitude = 10210; //height in meters
    m_speed = 1250;     // Speed in km/h
    m_heading = "East"; // Flight direction
}

double InFlightAssistance::altitude() {
    return m_altitude;
}

double InFlightAssistance::speed() {
    return m_speed;
}

QString InFlightAssistance::heading() {
    return m_heading;
}
