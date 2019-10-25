import QtQuick 2.2
import QtQuick.Window 2.2
Window {
    id: root
    visible: true
    width: 360
    height: width
    title: qsTr("Test App")
    color: "lightgray"

    ListModel {
        id: clockModel
        ListElement {
            text: ""
        }
        ListElement {
            text: ":"
        }
        ListElement {
            text: ""
        }
        ListElement {
            text: ":"
        }
        ListElement {
            text: ""
        }
    }


    property var currentTime
    property var locale: Qt.locale()
    property string separator: qsTr(":")

    function updateModel() {
        clockModel.get(0).text = currentTime.toLocaleString(locale, "hh")
        clockModel.get(2).text = currentTime.toLocaleString(locale, "mm")
        clockModel.get(4).text = currentTime.toLocaleString(locale, "ss")
    }

    Timer {
        id: timer
        interval: 1000
        running: true
        repeat: true
        onTriggered: {
            currentTime = new Date()
            updateModel()
        }
    }

    DigitalClockFace {id: digitalClockFace}

    Component.onCompleted: { // Fill data model
        currentTime = new Date()
        updateModel()
        updateModel()
    }
}
