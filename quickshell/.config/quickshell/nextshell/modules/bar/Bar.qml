import QtQuick
import QtQuick.Shapes
import Quickshell
import Quickshell.Hyprland
import "../../data" as Dat
import "../../components" as Cmp

PanelWindow
{
  id: panel
  color: "#00000000"

  anchors
  {
    top: Dat.Global.barOnTop
    left: true
    right: true
    bottom: !Dat.Global.barOnTop
  }

  implicitHeight: 30 * Dat.Global.scale

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
    color: "#ee252578"
    radius: 0 // 5

    // border.color: "#333333"
    // border.width: 3

    Cmp.TimeComponent {}
    Cmp.WorkspaceComponent {}  // 2. The "Negative Radius" Bridge
  }
}
