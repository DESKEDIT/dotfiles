import QtQuick
import Quickshell
import Quickshell.Hyprland

PanelWindow
{
  id: panel
  color: "#00000000"

  anchors
  {
    top: true
    left: true
    right: true
  }

  implicitHeight: 30

  margins
  {
    top: 0   // 5
    left: 0  // 5
    right: 0 // 5
  }

  Rectangle 
  {
    id: bar

    anchors.fill: parent
    color: "#a6252578"
    radius: 0 // 5

    // border.color: "#333333"
    // border.width: 3

    Row
    {
      id: workspacesRow

      anchors
      {
        left: parent.left
        verticalCenter: parent.verticalCenter
        leftMargin: 16
      }

      spacing: 8

      Repeater
      {
        model: Hyprland.workspaces
        
        Rectangle
        {
          width: 32
          height: 24
          radius: 16
          
          color: workspaceButtonMouseArea.containsMouse ? (modelData.active ? "#4a9eff" : "#333333") : (modelData.active ? "#5aaeff" : "#434343" ) // modelData.active ? "#4a9eff" : "#333333"

          border.color: "#555555"
          border.width: 1

          MouseArea
          {
            id: workspaceButtonMouseArea
            anchors.fill: parent
            
            hoverEnabled: true

            onClicked: Hyprland.dispatch("workspace " + modelData.id)
           }

          Text
          {
            text: modelData.id
            anchors.centerIn: parent
            color: modelData.active ? "#ffffff" : "#cccccc"
            font.pixelSize: 12
            font.family: "Inter, sans-serif"
          }
        }
      }

      Text {
        visible: Hyprland.workspaces.length === 0
        text: "No workspaces"
        color: "#ffffff"
        font.pixelSize: 12
        font.family: "Inter, sans-serif"
      }

      Text 
      {
        id: timeDisplay
        anchors 
        {
          //right: parent.right
          verticalCenter: parent.verticalCenter
          rightMargin: 16
        }

        property string currentTime: "Time"

        text: currentTime
        color: "#ffffff"
        font.pixelSize: 14
        font.family: "Inter, sans-serif"

        
      }
    }
  }
}
