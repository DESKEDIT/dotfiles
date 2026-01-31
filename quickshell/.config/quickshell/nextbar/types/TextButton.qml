import QtQuick
import "../data" as Dat

Rectangle {
  id: root

  property string text
  signal clicked()

  visible: modelData.active
  width: 24 * Dat.Global.scale
  height: 24 * Dat.Global.scale
  radius: Dat.Global.radius
  color: mouseArea.containsMouse ? "#686c70" : "#212223"
  border.color: "#555555"
  border.width: 1

  MouseArea {
    id: mouseArea
    anchors.fill: parent
    hoverEnabled: true
    onClicked: root.clicked()
  }

  Text {
    text: root.text
    anchors.centerIn: parent
    color: "#ffffff"
    font.pixelSize: Dat.Global.fontSize
    font.family: Dat.Global.fontFamily
  }
}

