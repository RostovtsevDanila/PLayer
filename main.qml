import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
	id: root
	visible: true
	width: 640
	height: 480
	title: qsTr("Test App")

//	ExampleButton{
//		anchors {
//			horizontalCenter: parent.horizontalCenter
//			verticalCenter: parent.verticalCenter
//		}
//		width: root.width / 10
//		height: root.height / 10
//	}

	//Task 1
	Rectangle {
		id: _red_square
		color: "red"
		width: 100
		height: 100
	}
	Rectangle {
		id: _green_square
		color: "lightgreen"
		width: 100
		height: 100
		anchors.left: _red_square.right
		anchors.top: _red_square.verticalCenter
	}
	Rectangle {
		id: _violet_square
		color: "violet"
		width: 100
		height: 100
		anchors.left: _green_square.horizontalCenter
		anchors.bottom: _green_square.verticalCenter
	}

	//Task2
	Rectangle {
		width: 320
		height: 220

		Row {
			anchors.horizontalCenter: parent.horizontalCenter
			anchors.verticalCenter: parent.verticalCenter
			spacing: 5

			Column {
				spacing: 5
				Rectangle {
					width: 100
					height: 100
					color: "red"
				}
				Rectangle {
					width: 100
					height: 100
					color: "green"
				}
			}
			Column {
				spacing: 5
				Rectangle {
					width: 100
					height: 100
					color: "yellow"
				}
			}
			Column {
				spacing: 5
				Rectangle {
					width: 100
					height: 100
					color: "brown"
				}
				Rectangle {
					width: 100
					height: 100
					color: "blue"
				}
			}
		}
	}

	//Task 3
	Rectangle {
		anchors.centerIn: parent
		width: 200
		height: 200
		color: "black"
		transform: Scale {
			xScale: 0.5
			yScale: 1.1
		}
	}
}
