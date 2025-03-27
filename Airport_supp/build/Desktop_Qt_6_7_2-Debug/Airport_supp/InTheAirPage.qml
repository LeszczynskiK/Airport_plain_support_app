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
