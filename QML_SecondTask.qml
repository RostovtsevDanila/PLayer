import QtQuick 2.0

Rectangle {
	width: parent.width
	height: parent.height

	ListModel {
		id: dataModel

		ListElement {
			type: "warm"
			color: "red"
			text: "First"
		}

		ListElement {
			type: "warm"
			color: "orange"
			text: "Seckond"
		}

		ListElement {
			type: "warm"
			color: "yellow"
			text: "Fhird"
		}

		ListElement {
			type: "cold"
			color: "green"
			text: "Forth"
		}

		ListElement {
			type: "cold"
			color: "skyblue"
			text: "Fifth"
		}

		ListElement {
			type: "cold"
			color: "blue"
			text: "Sixsth"
		}

		ListElement {
			type: "cold"
			color: "violet"
			text: "Seventh"
		}
	}

	ListView {
		id: view

		anchors.fill: parent
		anchors.margins: 10
		spacing: 5
		model: dataModel
		//clip: true

		section.property: "type"
		section.delegate: Rectangle {
			width: view.width
			height: 50
			color: "gray"
			Text {
				anchors.centerIn: parent
				font.bold: true
				text: section
			}
		}

		highlight: Rectangle {
			radius: width / 2
			color: "black"
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
}
