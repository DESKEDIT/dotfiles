import QtQuick
import Quickshell
import Quickshell.Wayland
import "../Data/" as Dat

Scope {
  Variants {
    model: Quickshell.screens

    delegate: WlrLayershell {
      id: notch

      required property ShellScreen modelData

      anchors.left: true
      anchors.right: true
      anchors.top: true
      color: "transparent"
      exclusionMode: ExclusionMode.Auto
      focusable: false
      implicitHeight: (Dat.Globals.notchState != "COLLAPSED") ? (30 * Dat.Globals.notchScale) : 0
      layer: WlrLayer.Top
      namespace: "rexies.notch.quickshell"
      screen: modelData
      surfaceFormat.opaque: false
    }
  }
}
