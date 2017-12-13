#!/usr/bin/env bash




## Fullscreen
gsettings reset org.gnome.desktop.wm.keybindings toggle-fullscreen




## Workspace
gsettings reset org.gnome.mutter dynamic-workspaces
gsettings reset org.gnome.desktop.wm.preferences num-workspaces

gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-1
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-2
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-3
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-4
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-5
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-6
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-7
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-8
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-9
gsettings reset org.gnome.desktop.wm.keybindings switch-to-workspace-10

gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-1
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-2
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-3
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-4
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-5
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-6
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-7
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-8
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-9
gsettings reset org.gnome.desktop.wm.keybindings move-to-workspace-10




## Toggle the activities overview
gsettings reset org.gnome.desktop.wm.keybindings panel-main-menu

## Show all applications
gsettings reset org.gnome.shell.keybindings toggle-application-view

## Show the activities overview
gsettings reset org.gnome.shell.keybindings toggle-overview




## Remove Custom Keybindings
gsettings reset org.gnome.settings-daemon.plugins.media-keys custom-keybindings

## Tilix
dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/

## Gnome Terminal
dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/

## Rofi Show Run
dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/

## Rofi Show Window
dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/

## Editor
dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/

## Browser
dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/

## Files
dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/

## Files-1
dconf reset -f /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/
