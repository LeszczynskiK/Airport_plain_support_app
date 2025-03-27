import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    Rectangle {
        anchors.fill: parent
        color: "#90ee90" // Light green background
    }

    Column {
        x: 50
        y: 100
        spacing: 15

        Text {
            text: "Parking Guidance:"
            font.pixelSize: 32
            color: "#151818"
        }

        Row {
            spacing: 5 // Small spacing between the label and the value
            Text {
                text: "Your Terminal is: "
                font.pixelSize: 30
                color: "#151818" // Black color for the label
            }
            Text {
                text: afterLanding.parkingGuidance
                font.pixelSize: 32
                color: "#FF0000" // Red color for the value
            }
        }

        Row {
            spacing: 5 // Small spacing between the label and the value
            Text {
                text: "Go to gate: "
                font.pixelSize: 30
                color: "#151818" // Black color for the label
            }
            Text {
                text: afterLanding.gateAssignment
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
