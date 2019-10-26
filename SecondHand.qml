import QtQuick 2.0

Rectangle {
	width: 2
	color: "yellow"
	radius: 1
	transform: Rotation {
		origin.x: width / 2
		angle: 180
	}
}
