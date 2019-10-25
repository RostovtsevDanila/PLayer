import QtQuick 2.0

Rectangle {
    id: face
    width: parent.width
    height: width / 5.5
    radius: height / 10
    anchors.horizontalCenter: parent.horizontalCenter
    anchors.verticalCenter: parent.verticalCenter
    Row {
        anchors.centerIn: parent
        spacing: 3

        Repeater {
            model: clockModel
            Rectangle {
                width: model.index%2 === 0 ? face.width/4 : face.width/10
                height: face.height
                radius: width / 10
                border.color: "black"
                border.width: 1
                Text {
                    id: textDelegate
                    anchors.centerIn: parent
                    font.pointSize: parent.width * 0.4
                    text: model.text
                }
            }
        }
    }
}
