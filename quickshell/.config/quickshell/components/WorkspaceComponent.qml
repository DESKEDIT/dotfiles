import QtQuick
import Quickshell
import Quickshell.Hyprland
import "../data" as Dat

Item {
  anchors
  {
    left: parent.left
    verticalCenter: parent.verticalCenter
    leftMargin: 16
  }
  Row
  {
    id: workspacesRow

    anchors
    {
      left: parent.left
      right: parent.right
      verticalCenter: parent.verticalCenter
    }

    spacing: 8
    
    Repeater
    {
      model: Hyprland.workspaces
        
      Rectangle
      {
        visible: modelData.active
        width: 24 * Dat.Global.scale
        height: 24 * Dat.Global.scale
        radius: 50 * Dat.Global.scale
          
        color: workspaceButtonMouseArea.containsMouse ? "#4a9eff" : "#5aaeff" // modelData.active ? "#4a9eff" : "#333333"

        border.color: "#555555"
        border.width: 1

        MouseArea
        {
          id: workspaceButtonMouseArea
          anchors.fill: parent
          hoverEnabled: true

          onClicked: Dat.PillData.workspacePillEnabled = Dat.PillData.workspacePillEnabled ? false : true //Hyprland.dispatch("workspace " + modelData.id)
        }
  
        Text
        {
          text: modelData.id
          anchors.centerIn: parent
          color: modelData.active ? "#ffffff" : "#cccccc"
          font.pixelSize: Dat.Global.fontSize
          font.family: Dat.Global.fontFamily
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
  }
}
