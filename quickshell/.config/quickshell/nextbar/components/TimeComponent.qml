import QtQuick
import "../data" as Dat

Item
{
  id: root
  
  anchors {
    rightMargin: 16
    leftMargin: 16
    verticalCenter: parent.verticalCenter
    // Enable centerIn for text to be in middle
    centerIn: parent
    // Enable left for text to be on the left
    //left: parent.left
    // Enable right for text to be on right
    //right: parent.right
  }

  property string currentTime: Date().toString()

  Timer 
  {
    triggeredOnStart: true
    repeat: true
    running: true
    id: timeTimer
    interval: 1000
    onTriggered: root.currentTime = Date().toString()
  }

  Text 
  {

    text: root.currentTime
    color: "#ffffff"
    font.pixelSize: Dat.Global.fontSize
    font.family: Dat.Global.fontFamily
    anchors.centerIn: parent
  }
}
