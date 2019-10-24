import QtQuick 2.12
import QtQuick.Window 2.12

Window {
	id: root
	visible: true
	width: 360
	height: 720
	title: qsTr("Test App")

	Rectangle {
		width: root.width
		height: root.height

		ListModel {
			id: dataModel
		}

		ListView {
			id: view

			width: parent.width
			height: parent.height - button.height - 10
			spacing: 10
			model: dataModel
			clip: true

			delegate: Rectangle {
				width: view.width - 10
				height: 40
				radius: 3
				border.width: 1
				border.color: "lightblue"
				color: "skyblue"

				anchors.horizontalCenter: parent.horizontalCenter

				Text {
					anchors.centerIn: parent
					renderType: Text.NativeRendering
					text: model.index
				}
			}
		}

		Rectangle {
			id: button

			width: 100
			height: 40
			radius: 5

			anchors {
				horizontalCenter: parent.horizontalCenter
				bottom: parent.bottom
			}
			border {
				color: "black"
				width: 1
			}

			Text {
				anchors.centerIn: parent
				renderType: Text.NativeRendering
				text: "Add"
			}

			MouseArea {
				anchors.fill: parent
				onClicked: dataModel.append({})
			}
		}
	}
}
