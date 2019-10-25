import QtQuick 2.0

Rectangle {
	id: clockFace
	width: Math.min(parent.width, parent.height)
	height: Math.min(parent.width, parent.height)
	color: "white"
	radius: width / 2
	anchors.centerIn: parent
	border.color: "black"
	border.width: 3

	Rectangle {
		width: 4
		height: parent.height / 10
		color: "black"
		anchors.top: parent.top
		anchors.horizontalCenter: parent.horizontalCenter
	}
	Rectangle {
		width: 4
		height: parent.height / 10
		color: "black"
		anchors.bottom: parent.bottom
		anchors.horizontalCenter: parent.horizontalCenter
	}
	Rectangle {
		width: parent.width / 10
		height: 4
		color: "black"
		anchors.left: parent.left
		anchors.verticalCenter: parent.verticalCenter
	}
	Rectangle {
		width: parent.width / 10
		height: 4
		color: "black"
		anchors.right: parent.right
		anchors.verticalCenter: parent.verticalCenter
	}
	Rectangle {
		width: parent.width / 15
		height: parent.height / 15
		radius: width / 2
		color: "red"
		anchors.centerIn: parent
	}
}
