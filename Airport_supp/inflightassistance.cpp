#include "inflightassistance.h"

InFlightAssistance::InFlightAssistance(QObject *parent) : QObject(parent) {
    // Set example values
    m_altitude = 10210; //height in meters
    m_speed = 1250;     // Speed in km/h
    m_heading = "East"; // Flight direction
    m_latitude = 51.5074; // Latitude for London
    m_longitude = -0.1278; // Longitude for London
    m_direction = 90; // Direction in degrees (East)
    m_guidanceMessage = "Follow direction to 90° to reach destination safely.";
}

double InFlightAssistance::altitude() {
    return m_altitude; // Return current altitude
}

double InFlightAssistance::speed() {
    return m_speed; // Return current speed
}

QString InFlightAssistance::heading() {
    return m_heading; // Return current heading
}

double InFlightAssistance::latitude() {
    return m_latitude; // Return current latitude
}

double InFlightAssistance::longitude() {
    return m_longitude; // Return current longitude
}

double InFlightAssistance::direction() {
    return m_direction; // Return current direction in degrees
}

QString InFlightAssistance::guidanceMessage() {
    return m_guidanceMessage; // Return guidance message
}
