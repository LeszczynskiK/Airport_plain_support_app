import QtQuick 2.15
import QtQuick.Controls 2.15

ApplicationWindow {
    visible: true
    width: 1280
    height: 800
    title: qsTr("Airport simulation")

    Image {
        source: "file:///home/krzysiek89/Desktop/QT_aplikacje/Plane_support_app_airport_visualisation/Airport_supp/background.png"
        anchors.fill: parent
        fillMode: Image.PreserveAspectCrop
    }

}
