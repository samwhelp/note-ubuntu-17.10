---
layout: page
title: 關於「gedit」的「color scheme」
description: >
  關於「gedit」的「color scheme」。
parent:
  title: 關於「gedit」
  url: '/read/subject/gedit'
source_url: '/read/subject/gedit/color-scheme.md'
---


## 原始討論

* [#38 回覆: Ubuntu 17.10 推出](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358846#forumpost358846)


## Recipe

* [gedit/color-scheme](https://github.com/samwhelp/note-ubuntu-17.10/tree/gh-pages/recipe/gedit/color-scheme)


## 測試環境

* gedit: 3.22.1


## 探索開始

如何找到「org.gnome.gedit.preferences.editor scheme」

執行

``` sh
$ gsettings list-recursively | grep gedit | grep scheme
```

顯示

```
org.gnome.gedit.preferences.editor scheme 'classic'
```


## get

執行

``` sh
$ gsettings get org.gnome.gedit.preferences.editor scheme
```


## set

執行

``` sh
$ gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'
```

我是設定「oblivion」，

也可以透過「Gedit / Application Menu / Preferences / 」的「Font & Colors / Color Scheme」那來設定。

另外下面會有更多的說明，說明如何找到『可用「color scheme」列表』。


## reset

執行

``` sh
$ gsettings reset org.gnome.gedit.preferences.editor scheme
```


## scheme

執行

``` sh
$ grep 'scheme' /usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml -A 4
```

顯示

```
<pre><code>
    <key name="scheme" type="s">
      <default>'classic'</default>
      <summary>Style Scheme</summary>
      <description>The ID of a GtkSourceView Style Scheme used to color the text.</description>
    </key>
</code></pre>
```


## 如何找到「color scheme」的定義檔。

若有安裝「gnome-builder」這個套件，

在「gedit」的「color scheme」也可以設定「builder-dark」或是「builder」。

執行下面指令，設定「builder-dark」。

``` sh
$ gsettings set org.gnome.gedit.preferences.editor scheme 'builder-dark'
```

執行下面指令，設定「builder」。

``` sh
$ gsettings set org.gnome.gedit.preferences.editor scheme 'builder-dark'
```

回到原本要討論的，如何找到「color scheme」的定義檔。

執行

``` sh
$ dpkg -L gnome-builder | grep builder-dark
```

顯示

```
/usr/share/gtksourceview-3.0/styles/builder-dark.xml
```

可以找到「/usr/share/gtksourceview-3.0/styles/」這個資料夾。

執行

``` sh
$ ls /usr/share/gtksourceview-3.0/styles/ -1
```

顯示

```
builder-dark.xml
builder.xml
classic.xml
cobalt.xml
kate.xml
oblivion.xml
solarized-dark.xml
solarized-light.xml
styles.rng
tango.xml
```

執行下面指令，了解「/usr/share/gtksourceview-3.0/styles」裡面的檔案，是來自於那些套件。

``` sh
$ dpkg -S /usr/share/gtksourceview-3.0/styles
```

顯示

```
gnome-builder, libgtksourceview-3.0-common: /usr/share/gtksourceview-3.0/styles
```

表示「/usr/share/gtksourceview-3.0/styles」裡面的檔案，是來自「[gnome-builder](https://packages.ubuntu.com/artful/gnome-builder)」和「[libgtksourceview-3.0-common](https://packages.ubuntu.com/artful/libgtksourceview-3.0-common)」這兩個套件。

執行

``` sh
$ dpkg -L libgtksourceview-3.0-common | grep styles
```

顯示

```
/usr/share/gtksourceview-3.0/styles
/usr/share/gtksourceview-3.0/styles/classic.xml
/usr/share/gtksourceview-3.0/styles/cobalt.xml
/usr/share/gtksourceview-3.0/styles/kate.xml
/usr/share/gtksourceview-3.0/styles/oblivion.xml
/usr/share/gtksourceview-3.0/styles/solarized-dark.xml
/usr/share/gtksourceview-3.0/styles/solarized-light.xml
/usr/share/gtksourceview-3.0/styles/styles.rng
/usr/share/gtksourceview-3.0/styles/tango.xml
```

所以可以找到「[libgtksourceview-3.0-common](https://packages.ubuntu.com/artful/libgtksourceview-3.0-common)」這個套件。

因為我一開始在「gedit」和「gedit-common」這兩個套件找尋，並沒有找到「color scheme」的定義檔。


## 可用「color scheme」列表

執行

``` sh
$ ls /usr/share/gtksourceview-3.0/styles -1 | cut -d '.' -f 1
```

顯示

```
builder-dark
builder
classic
cobalt
kate
oblivion
solarized-dark
solarized-light
styles
```

執行下面指令

``` sh
$ ls /usr/share/gtksourceview-3.0/styles -1 | awk -F '.' '{printf "$ gsettings set org.gnome.gedit.preferences.editor scheme \x27%s\x27\n", $1}'
```

或是執行下面指令

``` sh
#!/usr/bin/env bash

for SCHEME in $(ls /usr/share/gtksourceview-3.0/styles -1 | cut -d '.' -f 1) ; do
	#echo $SCHEME
	echo '$' "gsettings set org.gnome.gedit.preferences.editor scheme '$SCHEME'"
done
```

顯示

```
$ gsettings set org.gnome.gedit.preferences.editor scheme 'builder-dark'
$ gsettings set org.gnome.gedit.preferences.editor scheme 'builder'
$ gsettings set org.gnome.gedit.preferences.editor scheme 'classic'
$ gsettings set org.gnome.gedit.preferences.editor scheme 'cobalt'
$ gsettings set org.gnome.gedit.preferences.editor scheme 'kate'
$ gsettings set org.gnome.gedit.preferences.editor scheme 'oblivion'
$ gsettings set org.gnome.gedit.preferences.editor scheme 'solarized-dark'
$ gsettings set org.gnome.gedit.preferences.editor scheme 'solarized-light'
$ gsettings set org.gnome.gedit.preferences.editor scheme 'styles'
$ gsettings set org.gnome.gedit.preferences.editor scheme 'tango'
```
