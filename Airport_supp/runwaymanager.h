#ifndef RUNWAYMANAGER_HPP
#define RUNWAYMANAGER_HPP

#include <QObject>

class RunwayManager : public QObject {
    Q_OBJECT
    // Expose runway statuses to QML
    Q_PROPERTY(bool runway1Occupied READ runway1Occupied CONSTANT)
    Q_PROPERTY(bool runway2Occupied READ runway2Occupied CONSTANT)
    Q_PROPERTY(bool runway3Occupied READ runway3Occupied CONSTANT)
    Q_PROPERTY(bool takeoffClearance READ takeoffClearance NOTIFY takeoffClearanceChanged)
    Q_PROPERTY(QString recommendedRunway READ recommendedRunway NOTIFY recommendedRunwayChanged)

public:
    RunwayManager(QObject *parent = nullptr); // Constructor

    bool runway1Occupied(); // Getter for Runway 1 status
    bool runway2Occupied(); // Getter for Runway 2 status
    bool runway3Occupied(); // Getter for Runway 3 status

    bool takeoffClearance();
    QString recommendedRunway();

signals: //signals emit basement
    void takeoffClearanceChanged(); //If line is taken/free (condition changed) inform
    void recommendedRunwayChanged(); //If reccomendation about line changed, inform

private:
    bool m_runway1Occupied; // Status of Runway 1
    bool m_runway2Occupied; // Status of Runway 2
    bool m_runway3Occupied; // Status of Runway 3
    bool m_takeoffClearance; //Can fly from line?
    QString m_recommendedRunway; //String based on QString to display which runway take

    void updateGuidance(); //Method to inform which line is currently avaiable to fly off from
};

#endif // RUNWAYMANAGER_HPP
