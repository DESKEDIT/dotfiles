import QtQuick
import QtQuick.Layouts

import "../Data/" as Dat

Rectangle {
  id: root

  clip: true
  color: Dat.Colors.surface//Dat.Colors.withAlpha(Dat.Colors.surface, 1)
  radius: Dat.Globals.radius

  RowLayout {
    anchors.fill: parent
    spacing: 0

    CentralPane {
      Layout.fillHeight: true
      Layout.fillWidth: true
      radius: root.radius
    }

    KuruKuru {
      Layout.fillHeight: true
      Layout.fillWidth: true
      radius: root.radius
    }
  }
}
