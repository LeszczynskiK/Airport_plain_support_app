#include "runwaymanager.h"

RunwayManager::RunwayManager(QObject *parent) : QObject(parent) {
    // Set initial values for runways- example status
    m_runway1Occupied = false; // Runway 1 is free
    m_runway2Occupied = true;  // Runway 2 is occupied
    m_runway3Occupied = false; // Runway 3 is free
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
