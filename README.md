# Omarchy Theme And Background Widget

A top-bar widget for Omarchy with actions to:

- Add a background
- Remove a background
- Choose a background
- Choose a theme
- Remove a theme

![Theme and background actions menu](preview.png)

## Requirements

- Omarchy with the Quattro shell plugin system
- An active Omarchy theme
- Images in `~/Downloads`, `~/Pictures`, or
  `~/.config/omarchy/backgrounds` for the **Add background** action

## Install

```bash
omarchy plugin add https://github.com/pappyholt6-sudo/omarchy-theme-and-background-widget.git
omarchy bar put local.theme-picker --section right
omarchy restart shell
```

The first command installs the plugin. `omarchy bar put` enables it and adds it
to the right side of the bar. The shell normally hot-reloads these changes; if
the widget does not appear, run `omarchy restart shell`.

The widget appears as **Omarchy Theme And Background Widget** in the top bar.

## Use

- Left-click the widget to open the actions menu.
- Right-click the widget to open the theme switcher.
- **Add background** imports an image into the current theme's background
  directory and applies it.
- **Remove background** deletes a selected background from the current theme.
- **Choose background** opens Omarchy's background switcher.
- **Remove theme** permanently removes the selected user theme directory.

The plugin uses Omarchy's existing theme and menu commands. It does not manage
themes or backgrounds outside Omarchy's standard user directories.

## Remove

```bash
omarchy plugin remove local.theme-picker
```

This removes the plugin checkout and its bar entry without changing unrelated
bar configuration. If the old icon remains visible, run `omarchy restart shell`.
