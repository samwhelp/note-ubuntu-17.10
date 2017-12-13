#!/usr/bin/env bash




## Fullscreen
gsettings get org.gnome.desktop.wm.keybindings toggle-fullscreen




## Workspace
gsettings get org.gnome.mutter dynamic-workspaces
gsettings get org.gnome.desktop.wm.preferences num-workspaces

gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-1
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-2
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-3
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-4
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-5
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-6
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-7
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-8
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-9
gsettings get org.gnome.desktop.wm.keybindings switch-to-workspace-10

gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-1
gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-2
gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-3
gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-4
gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-5
gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-6
gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-7
gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-8
gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-9
gsettings get org.gnome.desktop.wm.keybindings move-to-workspace-10



## Toggle the activities overview
gsettings get org.gnome.desktop.wm.keybindings panel-main-menu

## Show all applications
gsettings get org.gnome.shell.keybindings toggle-application-view

## Show the activities overview
gsettings get org.gnome.shell.keybindings toggle-overview




## Custom Keybindings
gsettings get org.gnome.settings-daemon.plugins.media-keys custom-keybindings

## Tilix
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/name
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/command
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/tilix/binding

## Gnome Terminal
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/name
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/command
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/gnome-terminal/binding

## Rofi Show Run
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/name
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/command
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-run/binding

## Rofi Show Window
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/name
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/command
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/rofi-show-window/binding

## Editor
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/name
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/command
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/editor/binding

## Editor
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/name
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/command
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/browser/binding

## Files
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/name
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/command
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files/binding

## Files-1
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/name
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/command
dconf read /org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/files-1/binding
