import QtQuick
import QtQuick.Layouts
import Quickshell
import Quickshell.Hyprland
import "../data" as Dat
import "../types" as Typ

PanelWindow 
{
  id: root

  anchors 
  {
    top: Dat.Global.barOnTop
    left: true
    bottom: !Dat.Global.barOnTop
  }

  margins
  {
    bottom: 5
    left:  5
  }

  color: "#00000000"
  width: 200 * Dat.Global.scale
  height: 100 * Dat.Global.scale

  // Keep window alive so it can animate
  visible: Dat.PillData.workspacePillEnabled

  Rectangle 
  {
    radius: 5

    anchors.fill: parent
    color: "#ee252578"
  
    GridLayout
    {
      anchors
      {
        centerIn: parent
      }
      columns: 3
      rows: 3
      Typ.EnableableButton { radius: 50; text: "1"; onClicked: Hyprland.dispatch("workspace 1"); enabled: Hyprland.focusedWorkspace.id == 1}
      Typ.EnableableButton { radius: 50; text: "2"; onClicked: Hyprland.dispatch("workspace 2"); enabled: Hyprland.focusedWorkspace.id == 2 }
      Typ.EnableableButton { radius: 50; text: "3"; onClicked: Hyprland.dispatch("workspace 3"); enabled: Hyprland.focusedWorkspace.id == 3 }
      Typ.EnableableButton { radius: 50; text: "4"; onClicked: Hyprland.dispatch("workspace 4"); enabled: Hyprland.focusedWorkspace.id == 4 }
      Typ.EnableableButton { radius: 50; text: "5"; onClicked: Hyprland.dispatch("workspace 5"); enabled: Hyprland.focusedWorkspace.id == 5 }
      Typ.EnableableButton { radius: 50; text: "6"; onClicked: Hyprland.dispatch("workspace 6"); enabled: Hyprland.focusedWorkspace.id == 6 }
      Typ.EnableableButton { radius: 50; text: "7"; onClicked: Hyprland.dispatch("workspace 7"); enabled: Hyprland.focusedWorkspace.id == 7 }
      Typ.EnableableButton { radius: 50; text: "8"; onClicked: Hyprland.dispatch("workspace 8"); enabled: Hyprland.focusedWorkspace.id == 8 }
      Typ.EnableableButton { radius: 50; text: "9"; onClicked: Hyprland.dispatch("workspace 9"); enabled: Hyprland.focusedWorkspace.id == 9 }
    }
    
    /*Typ.EnableableButton
    {
      anchors.fill: parent
      radius: 50
      //text: "his"
    }*/
  }
}
