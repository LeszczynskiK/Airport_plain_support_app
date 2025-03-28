import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    Image {
        //by url to file
        source: "file:///home/krzysiek89/Desktop/QT_aplikacje/Plane_support_app_airport_visualisation/Airport_supp/background1.png"
        anchors.fill: parent//fill parent(parent is ApplicationWindow(
        fillMode: Image.PreserveAspectCrop//keep aspect of size if cropped png
    }

    // Runway Availability Display
    Column {
        x: 50 // X coordinate
        y: 100 // Y coordinate
        spacing: 20 // Space between items
        Text {
            text: "Runway Availability:" // Section title
            font.pixelSize: 36 // Font size set to 24
            font.bold: true     // Bold font for emphasis
            color: "#151818" // Text color
        }

        // Runway 1
        Row {
            spacing: 10 // Space between circle and text
            Rectangle {
                width: 30 // Circle width
                height: 30 // Circle height
                radius: 15 // Make it a circle
                color: runwayManager.runway1Occupied ? "#FF0000" : "#008000" // Red for occupied, green for free
            }
            Text {
                text: "Runway 1: " + (runwayManager.runway1Occupied ? "Occupied" : "Free") // Display runway status
                font.pixelSize: 32 // Font size set to 32
                color: "#151818" // Text color
                anchors.verticalCenter: parent.verticalCenter // Align text vertically with circle
            }
        }

        // Runway 2
        Row {
            spacing: 10 // Space between circle and text
            Rectangle {
                width: 30 // Circle width
                height: 30 // Circle height
                radius: 15 // Make it a circle
                color: runwayManager.runway2Occupied ? "#FF0000" : "#008000" // Red for occupied, green for free
            }
            Text {
                text: "Runway 2: " + (runwayManager.runway2Occupied ? "Occupied" : "Free") // Display runway status
                font.pixelSize: 32 // Font size set to 32
                color: "#151818" // Text color
                anchors.verticalCenter: parent.verticalCenter // Align text vertically with circle
            }
        }

        // Runway 3
        Row {
            spacing: 10 // Space between circle and text
            Rectangle {
                width: 30 // Circle width
                height: 30 // Circle height
                radius: 15 // Make it a circle
                color: runwayManager.runway3Occupied ? "#FF0000" : "#008000" // Red for occupied, green for free
            }
            Text {
                text: "Runway 3: " + (runwayManager.runway3Occupied ? "Occupied" : "Free") // Display runway status
                font.pixelSize: 32 // Font size set to 20
                color: "#151818" // Text color
                anchors.verticalCenter: parent.verticalCenter // Align text vertically with circle
            }
        }
    }

    // Takeoff Clearance Indicator
    Rectangle {
        x: 50
        y: 400
        width: 200
        height: 50
        color: runwayManager.takeoffClearance ? "#008000" : "#FF0000" // Green for free, red for not clear
        radius: 15 //Make if circle
        Text {
            anchors.centerIn: parent
            text: runwayManager.takeoffClearance ? "You can fly now!" : "Stay and don't move" // If line clear...
            font.pixelSize: 20
            color: "#FFFFFF"
        }
    }

    // Runway Guidance
    Column {
        x: 50
        y: 500
        spacing: 5
        Text {
            text: runwayManager.recommendedRunway //Put here hext based on function to choose line to fly off
            font.pixelSize: 32
            color: "#151818"
            width: 400  // Ensure text doesn't get cut off
            wrapMode: Text.WordWrap  // Wrap text if too long
        }
    }

    // Weather Conditions Display
    Column {
        x: 750
        y: 100
        spacing: 15
        Text {
            text: "Weather Conditions:"
            font.pixelSize: 36
            font.bold: true
            color: "#151818"
        }
        Text {
            text: "Temperature: " + weatherConditions.temperature + "°C"
            font.pixelSize: 28
            color: "#151818"
        }
        Text {
            text: "Wind Speed: " + weatherConditions.windSpeed + " km/h"
            font.pixelSize: 28
            color: "#151818"
        }
        Text {
            text: weatherConditions.warningMessage
            font.pixelSize: 24
            font.bold: true
            color: "#FF0000" // Red color for warnings
            visible: weatherConditions.hasWarning // Only show if there's a warning
            width: 300
            wrapMode: Text.WordWrap
        }
    }

    // Additional Information Section (Flight Plan, NOTAMs, Fuel/Load)
    Column {
        x: 700
        y: 400
        spacing: 15
        Text {
            text: "Pre-Flight Information:\n"
            font.pixelSize: 36
            font.bold: true
            color: "#151818"
        }
        // Flight Plan Overview
        Text {
            text: "Flight Plan: \n" + preFlightInfo.flightPlan
            font.pixelSize: 28
            color: "#151818"
            width: 500
            wrapMode: Text.WordWrap
        }
        // NOTAMs Display
        Text {
            text: "NOTAMs: \n" + preFlightInfo.notams
            font.pixelSize: 36
            color: "#FF0000" // Red to highlight importance
            width: 500
            wrapMode: Text.WordWrap
        }
        // Fuel and Load Information
        Text {
            text: "Fuel: " + preFlightInfo.fuelLoad + " kg, Passengers: " + preFlightInfo.passengerCount
            font.pixelSize: 28
            color: "#151818"
            width: 500
            wrapMode: Text.WordWrap
        }
    }


    Button {
        text: "Back" // Button label
        x: 20 // X coordinate
        y: 20 // Y coordinate
        width: 100 // Button width
        height: 50 // Button height
        onClicked: {
            stackView.pop() // Return to previous page
        }
        contentItem: Text {
            text: parent.text // Use button's text
            font.pixelSize: 20 // Font size set to 20
            color: "#151818" // Text color
            horizontalAlignment: Text.AlignHCenter // Center text horizontally
            verticalAlignment: Text.AlignVCenter // Center text vertically
        }
        background: Rectangle {
            color: "#95ede5" // Background color
            opacity: 0.6 // 60% transparency
            border.width: 2 // 2px frame around button
            border.color: "#151818" // Frame colour
        }
    }
}
