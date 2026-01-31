//@ pragma UseQApplication

import QtQuick
import Quickshell
import "./modules/bar/"
import "./pills/"

ShellRoot {
  id: root

  Bar {}
  TestPill {}
}
