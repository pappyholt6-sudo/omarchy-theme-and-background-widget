# Omarchy Theme And Background Widget

A top-bar widget for Omarchy with actions to:

- Add a background
- Remove a background
- Choose a background
- Choose a theme
- Remove a theme

![Theme and background actions menu](preview.png)

## Install

```bash
omarchy plugin add https://github.com/pappyholt6-sudo/omarchy-theme-and-background-widget.git
omarchy bar put local.theme-picker --section right
omarchy restart shell
```

The first command installs the plugin, and `omarchy bar put` enables it and adds
it to the right side of the bar. The restart is normally unnecessary because
the shell hot-reloads plugin and bar changes, but makes the result explicit if
the widget does not appear immediately.

The widget appears as **Omarchy Theme And Background Widget** in the top bar.

## Install from a local checkout

From inside a downloaded checkout, copy the plugin into Omarchy's user plugin
directory, then rescan and place it:

```bash
mkdir -p "$HOME/.config/omarchy/plugins/local.theme-picker"
cp manifest.json BarWidget.qml pick-theme "$HOME/.config/omarchy/plugins/local.theme-picker/"
chmod +x "$HOME/.config/omarchy/plugins/local.theme-picker/pick-theme"
omarchy-shell shell rescanPlugins
omarchy plugin enable local.theme-picker
omarchy bar put local.theme-picker --section right
```

## Remove

```bash
omarchy plugin remove local.theme-picker
```

This removes the plugin checkout and its bar entry without changing unrelated
bar configuration. Restart the shell only if the old icon remains visible.
