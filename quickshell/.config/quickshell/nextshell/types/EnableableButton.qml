import QtQuick
import "../data" as Dat

Rectangle {
  id: root

  property string text
  property bool enabled
  signal clicked()

  width: 24 * Dat.Global.scale
  height: 24 * Dat.Global.scale
  radius: Dat.Global.radius // "#4a9eff" : "#5aaeff"
  color: mouseArea.containsMouse ? (enabled ? "#4a9eff" : "#686c70") : (enabled ? "#5aaeff" : "#212223")
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

