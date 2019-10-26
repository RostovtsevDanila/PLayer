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

		Rectangle {
			width: face.width / 4
			height: face.height
			radius: width / 10
			border.color: "black"
			border.width: 1
			Text {
				id: numOfHours
				anchors.centerIn: parent
				font.pointSize: parent.width * 0.4
			}
		}
		Rectangle {
			id: firstDot
			width: face.width / 10
			height: face.height
			Text {
				anchors.centerIn: parent
				font.pointSize: parent.height * 0.8
				text: qsTr(":")
			}
		}
		Rectangle {
			width: face.width / 4
			height: face.height
			radius: width / 10
			border.color: "black"
			border.width: 1
			Text {
				id: numOfMinutes
				anchors.centerIn: parent
				font.pointSize: parent.width * 0.4
			}
		}
		Rectangle {
			id: seckondDot
			width: face.width / 10
			height: face.height
			Text {
				anchors.centerIn: parent
				font.pointSize: parent.height * 0.8
				text: qsTr(":")
			}
		}
		Rectangle {
			width: face.width / 4
			height: face.height
			radius: width / 10
			border.color: "black"
			border.width: 1
			Text {
				id: numOfSeconds
				anchors.centerIn: parent
				font.pointSize: parent.width * 0.4
			}
		}
	}
	Timer {
		interval: 100
		running: true
		repeat: true
		onTriggered: {
			var locale = Qt.locale()
			var currentTime = new Date()
			numOfSeconds.text = currentTime.toLocaleString(locale, "ss")
			numOfMinutes.text = currentTime.toLocaleString(locale, "mm")
			numOfHours.text = currentTime.toLocaleString(locale, "hh")
		}
	}
}
