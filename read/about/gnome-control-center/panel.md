---
layout: page
title: 如何找到「gnome-control-center」各個「panel」指令
description: >
  如何找到「gnome-control-center」各個「panel」指令。
parent:
  title: 關於「gnome-control-center」
  url: '/read/about/gnome-control-center'
source_url: '/read/about/gnome-control-center/panel.md'
---


## 原始討論

* [#25 回覆: Ubuntu 17.10 推出](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358820#forumpost358820)


## Manpage

$ man [gnome-control-center](http://manpages.ubuntu.com/manpages/artful/en/man1/gnome-control-center.1.html)


## 探索開始

執行

``` sh
$ dpkg -L gnome-control-center | grep '\.desktop'
```

顯示

```
/usr/share/applications/gnome-background-panel.desktop
/usr/share/applications/gnome-bluetooth-panel.desktop
/usr/share/applications/gnome-color-panel.desktop
/usr/share/applications/gnome-control-center.desktop
/usr/share/applications/gnome-datetime-panel.desktop
/usr/share/applications/gnome-default-apps-panel.desktop
/usr/share/applications/gnome-display-panel.desktop
/usr/share/applications/gnome-info-overview-panel.desktop
/usr/share/applications/gnome-info-panel.desktop
/usr/share/applications/gnome-keyboard-panel.desktop
/usr/share/applications/gnome-mouse-panel.desktop
/usr/share/applications/gnome-network-panel.desktop
/usr/share/applications/gnome-notifications-panel.desktop
/usr/share/applications/gnome-online-accounts-panel.desktop
/usr/share/applications/gnome-power-panel.desktop
/usr/share/applications/gnome-printers-panel.desktop
/usr/share/applications/gnome-privacy-panel.desktop
/usr/share/applications/gnome-region-panel.desktop
/usr/share/applications/gnome-removable-media-panel.desktop
/usr/share/applications/gnome-search-panel.desktop
/usr/share/applications/gnome-sharing-panel.desktop
/usr/share/applications/gnome-sound-panel.desktop
/usr/share/applications/gnome-ubuntu-panel.desktop
/usr/share/applications/gnome-universal-access-panel.desktop
/usr/share/applications/gnome-user-accounts-panel.desktop
/usr/share/applications/gnome-wacom-panel.desktop
/usr/share/applications/gnome-wifi-panel.desktop
```

## 以「/usr/share/applications/gnome-keyboard-panel.desktop」來舉例

執行下面指令，觀看「/usr/share/applications/gnome-keyboard-panel.desktop」的內容

``` sh
$ cat /usr/share/applications/gnome-keyboard-panel.desktop
```

顯示

``` ini
[Desktop Entry]
# Translators: Add soft hyphens to your translations so that the icon view won't clip your translations. See https://bugzilla.gnome.org/show_bug.cgi?id=647087#c13 for details
Name=Key­board
Comment=View and change keyboard shortcuts and set your typing preferences
Exec=gnome-control-center keyboard
Icon=input-keyboard
Terminal=false
Type=Application
NoDisplay=true
StartupNotify=true
Categories=GNOME;GTK;Settings;HardwareSettings;X-GNOME-Settings-Panel;X-GNOME-DevicesSettings;
OnlyShowIn=GNOME;Unity;
X-GNOME-Bugzilla-Bugzilla=GNOME
X-GNOME-Bugzilla-Product=gnome-control-center
X-GNOME-Bugzilla-Component=keyboard
X-GNOME-Bugzilla-Version=3.26.1
# Translators: those are keywords for the keyboard control-center panel
Keywords=Shortcut;Workspace;Window;Resize;Zoom;Contrast;Input;Source;Lock;Volume;
X-Ubuntu-Gettext-Domain=gnome-control-center-2.0
```

執行下面指令，過濾出「`Exec=`」開頭的那一行

``` sh
$ grep '^Exec=' /usr/share/applications/gnome-keyboard-panel.desktop
```

顯示

```
Exec=gnome-control-center keyboard
```

搭配「[cut](http://manpages.ubuntu.com/manpages/artful/en/man1/cut.1.html)」來過濾

執行

``` sh
$ grep '^Exec=' /usr/share/applications/gnome-keyboard-panel.desktop | cut -d '=' -f 2
```

顯示

```
gnome-control-center keyboard
```

就可以找到執行的指令「`gnome-control-center keyboard`」。

於是就可以執行

``` sh
$ gnome-control-center keyboard
```

就會叫出「[gnome-control-center](http://manpages.ubuntu.com/manpages/artful/en/man1/gnome-control-center.1.html)」，並且進到「keyboard panel」畫面。

註:

除了可以在「Terminal」執行，

也可以鍵盤按下「`<Alt>+F2`」，呼叫出「Run Command」對話框，輸入「`gnome-control-center keyboard`」來執行。


## 如何列出所有的指令

執行

``` sh
#!/usr/bin/env bash

for DESKTOP_FILE in $(dpkg -L gnome-control-center | grep '\.desktop') ; do
	## echo $DESKTOP_FILE
	grep '^Exec=' $DESKTOP_FILE | cut -d '=' -f 2
done
```

顯示

```
gnome-control-center background
gnome-control-center bluetooth
gnome-control-center color
gnome-control-center --overview
gnome-control-center datetime
gnome-control-center default-apps
gnome-control-center display
gnome-control-center info-overview
gnome-control-center info
gnome-control-center keyboard
gnome-control-center mouse
gnome-control-center network
gnome-control-center notifications
gnome-control-center online-accounts
gnome-control-center power
gnome-control-center printers
gnome-control-center privacy
gnome-control-center region
gnome-control-center removable-media
gnome-control-center search
gnome-control-center sharing
gnome-control-center sound
gnome-control-center ubuntu
gnome-control-center universal-access
gnome-control-center user-accounts
gnome-control-center wacom
gnome-control-center wifi
```
