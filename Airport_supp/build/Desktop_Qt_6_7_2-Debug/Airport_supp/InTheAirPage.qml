import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    Image {
        //by url to file
        source: "file:///home/krzysiek89/Desktop/QT_aplikacje/Plane_support_app_airport_visualisation/Airport_supp/background1.png"
        anchors.fill: parent//fill parent(parent is ApplicationWindow(
        fillMode: Image.PreserveAspectCrop//keep aspect of size if cropped png
    }

    Column {
        x: 50
        y: 100
        spacing: 20

        Text {
            text: "In-Flight Assistance"
            font.bold: true     // Bold font for emphasis
            font.pixelSize: 36
            color: "#151818"
        }

        Row {
            spacing: 5 // Small spacing between the label and the value
            Text {
                text: "Altitude: "
                font.pixelSize: 30
                color: "#151818" // Black color for the label
            }
            Text {
                text: inFlightAssistance.altitude + " m"
                font.pixelSize: 32
                color: "#FF0000" // Red color for the value
            }
        }

        Row {
            spacing: 5 // Small spacing between the label and the value
            Text {
                text: "Speed: "
                font.pixelSize: 30
                color: "#151818" // Black color for the label
            }
            Text {
                text: inFlightAssistance.speed + " km/h"
                font.pixelSize: 32
                color: "#FF0000" // Red color for the value
            }
        }

        Row {
            spacing: 5 // Small spacing between the label and the value
            Text {
                text: "Heading: "
                font.pixelSize: 30
                color: "#151818" // Black color for the label
            }
            Text {
                text: inFlightAssistance.heading
                font.pixelSize: 32
                color: "#FF0000" // Red color for the value
            }
        }
    }

    // Flight Path Guidance Section
    Column {
        x: 650
        y: 60
        spacing: 10
        Text {
            text: "Flight Path Guidance:"
            font.pixelSize: 36
            font.bold: true
            color: "#151818"
        }
        Row {
            spacing: 5
            Text {
                text: "Coordinates: "
                font.pixelSize: 28
                color: "#151818"
            }
            Text {
                text: inFlightAssistance.latitude + ", " + inFlightAssistance.longitude
                font.pixelSize: 28
                color: "#FF0000"
            }
        }
        Row {
            spacing: 5
            Text {
                text: "Direction: "
                font.pixelSize: 28
                color: "#151818"
            }
            Text {
                text: inFlightAssistance.direction + "°"
                font.pixelSize: 28
                color: "#FF0000"
            }
        }
        Text {
            text: inFlightAssistance.guidanceMessage
            font.pixelSize: 24
            color: "#151818"
            width: 400
            wrapMode: Text.WordWrap
        }
    }

    // Air Traffic Awareness Section
    Column {
        x: 650
        y: 300
        spacing: 10
        Text {
            text: "Air Traffic Awareness:"
            font.pixelSize: 36
            font.bold: true
            color: "#151818"
        }
        Rectangle {
            width: 560
            height: 420
            color: "transparent"
            border.color: "#151818"
            border.width: 2
            Image {
                anchors.fill: parent
                anchors.margins: 5
                source: "file:///home/krzysiek89/Desktop/QT_aplikacje/Plane_support_app_airport_visualisation/Airport_supp/radar1.png"
                fillMode: Image.PreserveAspectFit
            }
        }
    }

    // En-Route Information Section: Displays fuel, turbulence alerts, and ETA
    Column {
        x: 50 // X position of the column
        y: 370 // Y position of the column
        spacing: 10 // Space between elements in the column
        Text {
            text: "En-Route Information:"
            font.pixelSize: 36 // Font size for the title
            font.bold: true // Bold font for emphasis
            color: "#151818" // Black text color
        }
        // Row for displaying remaining fuel
        Row {
            spacing: 5 // Space between label and value
            Text {
                text: "Remaining Fuel: "
                font.pixelSize: 28 // Font size for the label
                color: "#151818" // Black color for the label
            }
            Text {
                text: inFlightAssistance.remainingFuel + " kg" // Display remaining fuel
                font.pixelSize: 32 // Font size for the value
                color: "#FF0000" // Red color for the value
            }
        }
        // Turbulence alert message
        Text {
            text: inFlightAssistance.turbulenceAlert // Display turbulence alert message
            font.pixelSize: 36 // Font size for the message
            color: "#FF0000" // Red color for warnings
            width: 400 // Width to allow wrapping
            wrapMode: Text.WordWrap // Wrap text if too long
            visible: inFlightAssistance.hasTurbulenceAlert // Only show if there's an alert
        }
        // Row for displaying distance to destination
        Row {
            spacing: 5 // Space between label and value
            Text {
                text: "Distance to Dest: "
                font.pixelSize: 32 // Font size for the label
                color: "#151818" // Black color for the label
            }
            Text {
                text: inFlightAssistance.distanceToDestination + " km" // Display distance to destination
                font.pixelSize: 32 // Font size for the value
                color: "#FF0000" // Red color for the value
            }
        }
        // Row for displaying estimated time of arrival (ETA)
        Row {
            spacing: 5 // Space between label and value
            Text {
                text: "ETA: "
                font.pixelSize: 32 // Font size for the label
                color: "#151818" // Black color for the label
            }
            Text {
                text: inFlightAssistance.eta // Display ETA
                font.pixelSize: 32 // Font size for the value
                color: "#FF0000" // Red color for the value
            }
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
