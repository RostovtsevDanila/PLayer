import QtQuick 2.0

Rectangle {
	width: 4
	color: "blue"
	radius: 2
	transform: Rotation {
		origin.x: width / 2
		angle: 180
	}
}
