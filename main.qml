import QtQuick 2.2
import QtQuick.Window 2.2

Window {
	id: root
	visible: true
	width: 360
	height: width
	title: qsTr("Test App")
	color: "lightgray"



	/*	ListModel {
		id: model
	}

	ListView {
		id: view
		width: parent.width
		height: parent.height
		spacing: 0
		model: model
		clip: true

		ClockFace {
			SecondHand {
				height: parent.height / 2.2
				anchors.top: parent.verticalCenter
				anchors.horizontalCenter: parent.horizontalCenter
			}
			MinuteHand {
				height: parent.height / 3
				anchors.top: parent.verticalCenter
				anchors.horizontalCenter: parent.horizontalCenter
			}
			HourHand {
				height: parent.height / 4
				anchors.top: parent.verticalCenter
				anchors.horizontalCenter: parent.horizontalCenter
			}
		}
	}
	*/

	DigitalClockFace {}

}
