import QtQuick 2.0
import QtQuick.Controls 2.12

Rectangle {
	id: root
	color: "#7C1F7C"
	radius: Math.min(width, height) * 0.1
	border.color: _area.pressed? "gray" : "black"
	border.width: 1

	Text {
		text: qsTr ("text on\nbutton")
		color: "#DAFB3F"
		anchors {
			horizontalCenter: root.horizontalCenter
			verticalCenter: root.verticalCenter
		}
		font {
			pointSize: Math.min(root.width, root.height) / 5
			bold: true
		}
	}

	MouseArea {
		id: _area
		anchors.fill: parent
	}
}
