#include "weatherconditiondisplay.h"

WeatherConditionsDisplay::WeatherConditionsDisplay(QObject *parent) : QObject(parent) {
    // Initialize with example weather data
    m_temperature = 15; // Example: 15°C
    m_windSpeed = 45;   // Example: 45 km/h
    updateWeather();    // Actualise conditions about weather
}

int WeatherConditionsDisplay::temperature() {
    return m_temperature; // Return current temperature
}

int WeatherConditionsDisplay::windSpeed() {
    return m_windSpeed; // Return current wind speed
}

QString WeatherConditionsDisplay::warningMessage() {
    return m_warningMessage; // Return current warning message
}

bool WeatherConditionsDisplay::hasWarning() {
    return m_hasWarning; // Return if there's an active warning
}

void WeatherConditionsDisplay::updateWeather() {
    // Simulate weather conditions and set warnings(based on values set)
    if (m_windSpeed > 40) {
        m_warningMessage = "Caution: Strong winds detected! Avoid routes over England.";
        m_hasWarning = true;
    } else if (m_temperature < 0) {
        m_warningMessage = "Warning: Icing risk due to low temperature!";
        m_hasWarning = true;
    } else {
        m_warningMessage = "";
        m_hasWarning = false;
    }
    emit weatherChanged(); // Notify QML of changes
}
