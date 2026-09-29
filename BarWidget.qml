import QtQuick
import qs.Ui

BarWidget {
  id: root
  moduleName: "local.theme-picker"

  implicitWidth: button.implicitWidth
  implicitHeight: button.implicitHeight

  BarIconButton {
    id: button
    anchors.fill: parent
    bar: root.bar
    text: "\ue22b"
    fontFamily: "omarchy"
    horizontalMargin: 7.5
    tooltipText: "Theme and background actions"
    onPressed: function(mouseButton) {
      if (!root.bar) return
      if (mouseButton === Qt.LeftButton)
        root.bar.run(root.pluginPath + " menu;")
      else if (mouseButton === Qt.RightButton)
        root.bar.run(root.pluginPath + " theme;")
    }
  }

  readonly property string pluginPath:
    StandardPaths.writableLocation(StandardPaths.HomeLocation)
      + "/.config/omarchy/plugins/local.theme-picker/pick-theme"
}
