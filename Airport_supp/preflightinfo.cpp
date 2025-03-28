#include "preflightinfo.h"

PreFlightInfo::PreFlightInfo(QObject *parent) : QObject(parent) {
    // Initialize with example data
    m_flightPlan = "Depart: EGLL, Dest: KJFK, ETD: 08:00, ETE: 7h 30m";
    m_notams = "Runway 09L closed for maintenance until 10:00";
    m_fuelLoad = 45000; // Example: 45,000 kg of fuel
    m_passengerCount = 180; // Example: 180 passengers
}

QString PreFlightInfo::flightPlan() {
    return m_flightPlan; // Return flight plan summary
}

QString PreFlightInfo::notams() {
    return m_notams; // Return NOTAMs
}

int PreFlightInfo::fuelLoad() {
    return m_fuelLoad; // Return fuel load
}

int PreFlightInfo::passengerCount() {
    return m_passengerCount; // Return passenger count
}
