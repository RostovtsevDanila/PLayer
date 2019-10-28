import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.12

Window {
	id: root
	visible: true
	width: 480
	height: 720
	title: qsTr("Test App")

	QML_ForthTask {}
}
