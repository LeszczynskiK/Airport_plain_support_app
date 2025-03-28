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
    m_remainingFuel = 39000; // Example: 39,000 kg remaining fuel
    m_turbulenceAlert = "Turbulence ahead! Consider climbing to 12,000 m."; // Example turbulence alert
    m_hasTurbulenceAlert = true; // Enable turbulence alert
    m_distanceToDestination = 3200; // Example: 3,200 km to destination
    m_eta = "15:30 UTC"; // Example: Estimated time of arrival
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

int InFlightAssistance::remainingFuel() {
    return m_remainingFuel; // Return remaining fuel
}

QString InFlightAssistance::turbulenceAlert() {
    return m_turbulenceAlert; // Return turbulence alert message
}

bool InFlightAssistance::hasTurbulenceAlert() {
    return m_hasTurbulenceAlert; // Return if there's a turbulence alert
}

int InFlightAssistance::distanceToDestination() {
    return m_distanceToDestination; // Return distance to destination
}

QString InFlightAssistance::eta() {
    return m_eta; // Return estimated time of arrival
}
