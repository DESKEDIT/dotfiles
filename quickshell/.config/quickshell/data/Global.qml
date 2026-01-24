pragma Singleton
import Quickshell

Singleton
{
    id: root

    property real scale: 1
    property real radius: 5 * scale

    property real fontSize: 15 * scale
    property var fontFamily: "JetBrainsMono Nerd Font"

    property bool barOnTop: false // Set to false for bar to be on top; else the bar is on bottom
}
