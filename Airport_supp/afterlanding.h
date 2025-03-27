#ifndef AFTERLANDING_H
#define AFTERLANDING_H

#include <QObject>

class AfterLanding : public QObject {
    Q_OBJECT
    // Properties for QML to access parking guidance and gate assignment
    Q_PROPERTY(QString parkingGuidance READ parkingGuidance CONSTANT)
    Q_PROPERTY(QString gateAssignment READ gateAssignment CONSTANT)

public:
    explicit AfterLanding(QObject *parent = nullptr);

    QString parkingGuidance();
    QString gateAssignment();

private:
    QString m_parkingGuidance; // Directions to parking terminals
    QString m_gateAssignment;  // Designated gate for parking
};

#endif // AFTERLANDING_H
