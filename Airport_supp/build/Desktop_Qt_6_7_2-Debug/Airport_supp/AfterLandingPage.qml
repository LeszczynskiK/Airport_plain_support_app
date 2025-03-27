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
        spacing: 15

        Text {
            text: "Parking Guidance:"
            font.bold: true     // Bold font for emphasis
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

    // Title for the Post-Landing Checklist section
    Text {
        x: 50  // X position for the checklist title
        y: 300   // Y position for the checklist title
        text: "Post-Landing Checklist"
        font.pixelSize: 36  // Font size for the title
        font.bold: true     // Bold font for emphasis
        color: "#151818"    // Black color for text
    }

    // Column containing the checklist items, aligned in a single column
    Column {
        x: 50      // Starting X position for the checklist (aligned with the title)
        y: 350      // Starting Y position for the first item
        spacing: 15 // Vertical spacing between checklist items, adjusted to match the image

        CheckBox {
            text: "Turn off engines"
            font.pixelSize: 21  // Font size for the checkbox text, matching the image
            checked: false      // No items checked by default
            contentItem: Text {
                text: parent.text
                font: parent.font
                color: "#151818"    // Black color for text
                leftPadding: parent.indicator.width + parent.spacing  // Space between indicator and text
            }
        }

        CheckBox {
            text: "Set parking brake"
            font.pixelSize: 21
            checked: false
            contentItem: Text {
                text: parent.text
                font: parent.font
                color: "#151818"
                leftPadding: parent.indicator.width + parent.spacing
            }
        }

        CheckBox {
            text: "Turn off transponder"
            font.pixelSize: 21
            checked: false
            contentItem: Text {
                text: parent.text
                font: parent.font
                color: "#151818"
                leftPadding: parent.indicator.width + parent.spacing
            }
        }

        CheckBox {
            text: "Open passenger doors"
            font.pixelSize: 21
            checked: false
            contentItem: Text {
                text: parent.text
                font: parent.font
                color: "#151818"
                leftPadding: parent.indicator.width + parent.spacing
            }
        }

        CheckBox {
            text: "Contact ground crew"
            font.pixelSize: 21
            checked: false
            contentItem: Text {
                text: parent.text
                font: parent.font
                color: "#151818"
                leftPadding: parent.indicator.width + parent.spacing
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
