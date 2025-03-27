#include "runwaymanager.h"

RunwayManager::RunwayManager(QObject *parent) : QObject(parent) {
    // Set initial values for runways- example status
    m_runway1Occupied = true; // Runway 1 is occupied
    m_runway2Occupied = true;  // Runway 2 is occupied
    m_runway3Occupied = false; // Runway 3 is free

    updateGuidance();//call to set takeoffclearance and recommended line
}

bool RunwayManager::runway1Occupied() {
    return m_runway1Occupied; // Return status of Runway 1
}

bool RunwayManager::runway2Occupied() {
    return m_runway2Occupied; // Return status of Runway 2
}

bool RunwayManager::runway3Occupied() {
    return m_runway3Occupied; // Return status of Runway 3
}

bool RunwayManager::takeoffClearance() { //Return status of clearance on line
    return m_takeoffClearance;
}

QString RunwayManager::recommendedRunway() { //Return reccomentation about which line take to fly off
    return m_recommendedRunway;
}

void RunwayManager::updateGuidance() {
    if (!m_runway1Occupied) {// If not taken....
        m_recommendedRunway = "Proceed to Runway 1";
        m_takeoffClearance = true;
    } else if (!m_runway2Occupied) {// If not taken....
        m_recommendedRunway = "Proceed to Runway 2";
        m_takeoffClearance = true;
    } else if (!m_runway3Occupied) {// If not taken....
        m_recommendedRunway = "Proceed to Runway 3";
        m_takeoffClearance = true;
    } else {//if all taken
        m_recommendedRunway = "All runways occupied - Hold position";
        m_takeoffClearance = false;// You cant take off! position is not clear
    }
    emit takeoffClearanceChanged(); // Emit signal about clearance and recommentation change
    emit recommendedRunwayChanged();
}
