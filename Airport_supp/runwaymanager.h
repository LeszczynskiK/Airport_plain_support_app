#ifndef RUNWAYMANAGER_HPP
#define RUNWAYMANAGER_HPP

#include <QObject>

class RunwayManager : public QObject {
    Q_OBJECT
    // Expose runway statuses to QML
    Q_PROPERTY(bool runway1Occupied READ runway1Occupied CONSTANT)
    Q_PROPERTY(bool runway2Occupied READ runway2Occupied CONSTANT)
    Q_PROPERTY(bool runway3Occupied READ runway3Occupied CONSTANT)

public:
    RunwayManager(QObject *parent = nullptr); // Constructor

    bool runway1Occupied(); // Getter for Runway 1 status
    bool runway2Occupied(); // Getter for Runway 2 status
    bool runway3Occupied(); // Getter for Runway 3 status

private:
    bool m_runway1Occupied; // Status of Runway 1
    bool m_runway2Occupied; // Status of Runway 2
    bool m_runway3Occupied; // Status of Runway 3
};

#endif // RUNWAYMANAGER_HPP
