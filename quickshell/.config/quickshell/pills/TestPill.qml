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

  color: "#00000000"
  width: 200 * Dat.Global.scale
  height: 100 * Dat.Global.scale

  // Keep window alive so it can animate
  visible: Dat.PillData.workspacePillEnabled

  Rectangle 
  {
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
      Typ.TextButton { radius: 50; text: "1"; onClicked: Hyprland.dispatch("workspace 1") }
      Typ.TextButton { radius: 50; text: "2"; onClicked: Hyprland.dispatch("workspace 2") }
      Typ.TextButton { radius: 50; text: "3"; onClicked: Hyprland.dispatch("workspace 3") }
      Typ.TextButton { radius: 50; text: "4"; onClicked: Hyprland.dispatch("workspace 4") }
      Typ.TextButton { radius: 50; text: "5"; onClicked: Hyprland.dispatch("workspace 5") }
      Typ.TextButton { radius: 50; text: "6"; onClicked: Hyprland.dispatch("workspace 6") }
      Typ.TextButton { radius: 50; text: "7"; onClicked: Hyprland.dispatch("workspace 7") }
      Typ.TextButton { radius: 50; text: "8"; onClicked: Hyprland.dispatch("workspace 8") }
      Typ.TextButton { radius: 50; text: "9"; onClicked: Hyprland.dispatch("workspace 9") }
    }
    
    /*Typ.TextButton
    {
      anchors.fill: parent
      radius: 50
      //text: "his"
    }*/
  }
}
