#include "afterlanding.h"

AfterLanding::AfterLanding(QObject *parent) : QObject(parent) {
    // Set example values for parking guidance and gate assignment
    m_parkingGuidance = "A";
    m_gateAssignment = "A12";
}

QString AfterLanding::parkingGuidance() {
    return m_parkingGuidance;
}

QString AfterLanding::gateAssignment() {
    return m_gateAssignment;
}
