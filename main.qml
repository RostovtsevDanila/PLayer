import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
    id: root
    visible: true
    width: 640
    height: 480
    title: qsTr("Test App")

    ExampleButton{
        anchors {
            horizontalCenter: parent.horizontalCenter
            verticalCenter: parent.verticalCenter
        }
        width: root.width / 10
        height: root.height / 10
    }
}
