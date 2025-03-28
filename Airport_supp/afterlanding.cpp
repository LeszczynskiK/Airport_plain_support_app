#include "afterlanding.h"

AfterLanding::AfterLanding(QObject *parent) : QObject(parent) {
    // Initialize with example post-landing data
    m_parkingGuidance = "A"; // Example terminal for parking
    m_gateAssignment = "A12"; // Example gate assignment
    m_currentTime = "14:45 UTC"; // Example current time
    m_delayStatus = "Delayed by 30 minutes"; // Example delay status
    m_hasDelay = true; // Flight is delayed
    m_remainingFuel = 5000; // Example: 5,000 kg of remaining fuel
}

QString AfterLanding::parkingGuidance() {
    return m_parkingGuidance; // Return parking guidance instructions
}

QString AfterLanding::gateAssignment() {
    return m_gateAssignment; // Return assigned gate
}

QString AfterLanding::currentTime() {
    return m_currentTime; // Return current time
}

QString AfterLanding::delayStatus() {
    return m_delayStatus; // Return delay status message
}

bool AfterLanding::hasDelay() {
    return m_hasDelay; // Return if the flight is delayed
}

int AfterLanding::remainingFuel() {
    return m_remainingFuel; // Return remaining fuel
}
