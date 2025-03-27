import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    Rectangle {
        anchors.fill: parent
        color: "#d3d3d3" // Light gray background
    }

    Text {
        anchors.centerIn: parent // Center text in the parent item
        text: "Airport Page" // Page title
        font.pixelSize: 40 // Font size set to 40
        color: "#151818" // Text color
    }

    // Runway Availability Display
    Column {
        x: 50 // X coordinate
        y: 100 // Y coordinate
        spacing: 20 // Space between items
        Text {
            text: "Runway Availability:" // Section title
            font.pixelSize: 24 // Font size set to 24
            color: "#151818" // Text color
        }

        // Runway 1
        Row {
            spacing: 10 // Space between circle and text
            Rectangle {
                width: 20 // Circle width
                height: 20 // Circle height
                radius: 10 // Make it a circle
                color: runwayManager.runway1Occupied ? "#FF0000" : "#008000" // Red for occupied, green for free
            }
            Text {
                text: "Runway 1: " + (runwayManager.runway1Occupied ? "Occupied" : "Free") // Display runway status
                font.pixelSize: 20 // Font size set to 20
                color: "#151818" // Text color
                anchors.verticalCenter: parent.verticalCenter // Align text vertically with circle
            }
        }

        // Runway 2
        Row {
            spacing: 10 // Space between circle and text
            Rectangle {
                width: 20 // Circle width
                height: 20 // Circle height
                radius: 10 // Make it a circle
                color: runwayManager.runway2Occupied ? "#FF0000" : "#008000" // Red for occupied, green for free
            }
            Text {
                text: "Runway 2: " + (runwayManager.runway2Occupied ? "Occupied" : "Free") // Display runway status
                font.pixelSize: 20 // Font size set to 20
                color: "#151818" // Text color
                anchors.verticalCenter: parent.verticalCenter // Align text vertically with circle
            }
        }

        // Runway 3
        Row {
            spacing: 10 // Space between circle and text
            Rectangle {
                width: 20 // Circle width
                height: 20 // Circle height
                radius: 10 // Make it a circle
                color: runwayManager.runway3Occupied ? "#FF0000" : "#008000" // Red for occupied, green for free
            }
            Text {
                text: "Runway 3: " + (runwayManager.runway3Occupied ? "Occupied" : "Free") // Display runway status
                font.pixelSize: 20 // Font size set to 20
                color: "#151818" // Text color
                anchors.verticalCenter: parent.verticalCenter // Align text vertically with circle
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
