#ifndef WEATHERCONDITIONSDISPLAY_H
#define WEATHERCONDITIONSDISPLAY_H

#include <QObject>

class WeatherConditionsDisplay : public QObject {
    Q_OBJECT

    // Exposes the temperature value to QML, readable via temperature(), notifies on change
    Q_PROPERTY(int temperature READ temperature NOTIFY weatherChanged)

    // Exposes the wind speed value to QML, readable via windSpeed(), notifies on change
    Q_PROPERTY(int windSpeed READ windSpeed NOTIFY weatherChanged)

    // Exposes the warning text to QML, readable via warningMessage(), notifies on change
    Q_PROPERTY(QString warningMessage READ warningMessage NOTIFY weatherChanged)

    // Exposes if a warning is active to QML, readable via hasWarning(), notifies on change
    Q_PROPERTY(bool hasWarning READ hasWarning NOTIFY weatherChanged)


public:
    WeatherConditionsDisplay(QObject *parent = nullptr); // Constructor

    int temperature(); // Getter for temperature
    int windSpeed(); // Getter for wind speed
    QString warningMessage(); // Getter for warning message
    bool hasWarning(); // Getter to check if there's a warning

signals:
    void weatherChanged(); // Signal emitted when weather conditions change

private:
    int m_temperature; // Simulated temperature in Celsius
    int m_windSpeed; // Simulated wind speed in km/h
    QString m_warningMessage; // Warning message for severe conditions
    bool m_hasWarning; // Flag to indicate if a warning is active

    void updateWeather(); // Method to simulate and update weather conditions
};

#endif // WEATHERCONDITIONSDISPLAY_H
