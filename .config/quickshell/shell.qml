import Quickshell
import Quickshell.Io
import QtQuick
import QtQuick.Controls

PanelWindow {
  color: "#46252558"
  anchors {
    top: true
    left: true
    right: true
  }
  implicitHeight: 30
  Text {
    id: clock
    color: "#ffffff"
    anchors.centerIn: parent
    
    Process {
      id: timeDateProcess
      command: ["date"]

      running: true

      stdout: StdioCollector {
        onStreamFinished: clock.text = text
      }
    }

    Timer {
      interval: 1000
      running: true
      repeat: true
      onTriggered: timeDateProcess.running = true
    }
  }
}
