import QtQuick 2.0
import com.company.TestModel 1.0

Rectangle {
	width: parent.width
	height: parent.height
	color: "#679ED2"

	TestModel {
		id: dataModel
	}

	ListView {
		id: view

		anchors.fill: parent
		anchors.margins: 10
		spacing: 5
		model: dataModel
		//clip: true

		highlight: Rectangle {
			radius: width / 2
			color: "#006F48"
		}
		//highlightFollowsCurrentItem: true

		delegate: Item {
			id: listDelegate

			width: view.width
			height: 50

			//property var view: ListView.view
			//property var isCurrent: ListView.isCurrentItem



			Rectangle {
				anchors.fill: parent
				anchors.margins: 2
				radius: height / 2
				color: model.color
				border.color: "gray"
				border.width: 1
			}

			Text {
				anchors.centerIn: parent
				text: model.text
			}

			MouseArea {
				anchors.fill: parent
				onClicked: view.currentIndex = model.index
			}
		}
	}
	Rectangle {
		height: 40
		width: 200
		anchors.horizontalCenter: parent.horizontalCenter
		anchors.bottom: parent.bottom
		color: "lightgreen"
		border.color: "green"
		border.width: 2
		//model: dataModel
		Text {
			anchors.centerIn: parent
			text: "ADD"
		}
		MouseArea {
			id: clickZone
			anchors.fill: parent
			onClicked: dataModel.add({})
		}
	}
}
