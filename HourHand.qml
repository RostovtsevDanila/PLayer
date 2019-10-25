import QtQuick 2.0

Rectangle {
	width: 6
	color: "green"
	radius: 3
	transform: Rotation {
		origin.x: width / 2
		angle: 180
	}
}
