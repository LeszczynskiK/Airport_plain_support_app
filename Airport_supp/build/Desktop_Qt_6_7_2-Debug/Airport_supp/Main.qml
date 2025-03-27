import QtQuick

Window {
    width: 1280
    height: 800
    visible: true
    title: qsTr("Airport simulation")

    Image {//background set
        anchors.fill: parent//fill your parent(so will WIndow)
        source: "qrc:/prefix1/background.png" //this is from resources.qrc
        fillMode: Image.PreserveAspectCrop//scale it with size keeping(save scale of width and height)
    }
}
