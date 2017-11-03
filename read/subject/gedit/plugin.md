---
layout: page
title: 如何透過安裝套件的方式，安裝額外的「gedit-plugin」
description: >
  如何透過安裝套件的方式，安裝額外的「gedit-plugin」。
parent:
  title: 關於「gedit」
  url: '/read/subject/gedit'
source_url: '/read/subject/gedit/plugin.md'
---


## Recipe

* [gedit/plugin](https://github.com/samwhelp/note-ubuntu-17.10/tree/gh-pages/recipe/gedit/plugin)


## 測試環境

* gedit: 3.22.1


## 探索起點

執行

``` sh
$ apt-cache search gedit-plugin
```

顯示

```
gedit-plugin-bookmarks - Bookmarks plugin for gedit
gedit-plugin-bracket-completion - Bracket Completion plugin for gedit
gedit-plugin-character-map - Character Map plugin for gedit
gedit-plugin-code-comment - Code Comment plugin for gedit
gedit-plugin-color-picker - Color Picker plugin for gedit
gedit-plugin-color-schemer - Color Schemer plugin for gedit
gedit-plugin-commander - Commander plugin for gedit
gedit-plugin-dashboard - Dashboard plugin for gedit
gedit-plugin-draw-spaces - Draw Spaces plugin for gedit
gedit-plugin-find-in-files - Find in Files plugin for gedit
gedit-plugin-git - Git plugin for gedit
gedit-plugin-join-lines - Join/Split Lines plugin for gedit
gedit-plugin-multi-edit - Multi Edit plugin for gedit
gedit-plugin-smart-spaces - Smart Spaces plugin for gedit
gedit-plugin-synctex - SyncTex plugin for gedit
gedit-plugin-terminal - Terminal plugin for gedit
gedit-plugin-text-size - Text Size plugin for gedit
gedit-plugin-word-completion - Word Completion plugin for gedit
gedit-plugin-zeitgeist - Zeitgeist plugin for gedit
gedit-plugins - set of plugins for gedit
gedit-plugins-common - common files for gedit-plugins
```


### 初步探索套件列表

* [gedit-plugin-bookmarks](https://packages.ubuntu.com/artful/gedit-plugin-bookmarks) - Bookmarks plugin for gedit
* [gedit-plugin-bracket-completion](https://packages.ubuntu.com/artful/gedit-plugin-bracket-completion) - Bracket Completion plugin for gedit
* [gedit-plugin-character-map](https://packages.ubuntu.com/artful/gedit-plugin-character-map) - Character Map plugin for gedit
* [gedit-plugin-code-comment](https://packages.ubuntu.com/artful/gedit-plugin-code-comment) - Code Comment plugin for gedit
* [gedit-plugin-color-picker](https://packages.ubuntu.com/artful/gedit-plugin-color-picker) - Color Picker plugin for gedit
* [gedit-plugin-color-schemer](https://packages.ubuntu.com/artful/gedit-plugin-color-schemer) - Color Schemer plugin for gedit
* [gedit-plugin-commander](https://packages.ubuntu.com/artful/gedit-plugin-commander) - Commander plugin for gedit
* [gedit-plugin-dashboard](https://packages.ubuntu.com/artful/gedit-plugin-dashboard) - Dashboard plugin for gedit
* [gedit-plugin-draw-spaces](https://packages.ubuntu.com/artful/gedit-plugin-draw-spaces) - Draw Spaces plugin for gedit
* [gedit-plugin-find-in-files](https://packages.ubuntu.com/artful/gedit-plugin-find-in-files) - Find in Files plugin for gedit
* [gedit-plugin-git](https://packages.ubuntu.com/artful/gedit-plugin-git) - Git plugin for gedit
* [gedit-plugin-join-lines](https://packages.ubuntu.com/artful/gedit-plugin-join-lines) - Join/Split Lines plugin for gedit
* [gedit-plugin-multi-edit](https://packages.ubuntu.com/artful/gedit-plugin-multi-edit) - Multi Edit plugin for gedit
* [gedit-plugin-smart-spaces](https://packages.ubuntu.com/artful/gedit-plugin-smart-spaces) - Smart Spaces plugin for gedit
* [gedit-plugin-synctex](https://packages.ubuntu.com/artful/gedit-plugin-synctex) - SyncTex plugin for gedit
* [gedit-plugin-terminal](https://packages.ubuntu.com/artful/gedit-plugin-terminal) - Terminal plugin for gedit
* [gedit-plugin-text-size](https://packages.ubuntu.com/artful/gedit-plugin-text-size) - Text Size plugin for gedit
* [gedit-plugin-word-completion](https://packages.ubuntu.com/artful/gedit-plugin-word-completion) - Word Completion plugin for gedit
* [gedit-plugin-zeitgeist](https://packages.ubuntu.com/artful/gedit-plugin-zeitgeist) - Zeitgeist plugin for gedit
* [gedit-plugins](https://packages.ubuntu.com/artful/gedit-plugins) - set of plugins for gedit
* [gedit-plugins-common](https://packages.ubuntu.com/artful/gedit-plugins-common) - common files for gedit-plugins

上面套件列表的「[Markdown](https://en.wikipedia.org/wiki/Markdown)」語法，可以透過執行下面指令產生

``` sh
$ apt-cache search gedit-plugin | awk -F ' - ' '{printf "* [%s](https://packages.ubuntu.com/artful/%s) - %s\n", $1, $1, $2}'
```

若是要產生「[BBCode](https://en.wikipedia.org/wiki/BBCode)」語法，可以透過執行下面指令產生

``` sh
$ apt-cache search gedit-plugin | awk -F ' - ' '{printf "[url=https://packages.ubuntu.com/artful/%s]%s[/url] - %s\n", $1, $1, $2}'
```


## 單一安裝

舉例

執行下面指令安裝「[gedit-plugin-find-in-files](https://packages.ubuntu.com/artful/gedit-plugin-find-in-files)」

``` sh
$ sudo apt-get install gedit-plugin-find-in-files
```

然後在系統的上方「TopBar」，點選「gedit」的「Applicaion Menu」，會出現一個下拉選單，

有一個選項「Preferences」，點選它，

就會出現一個標題為「Preferences」的設定視窗，有四個頁簽(tab)，分別是


* View
* Editor
* Font & Colors
* Plugins

選「Plugins」，切換到該頁簽的內容，

就可以找到一個選項

標題:「Find in Files」
簡述:「Find text in all files of a folder」

勾選這個選項，就可以啟用「gedit-plugin-find-in-files (Find in Files)」這個「gedit-plugin」。

接著請把「Preferences」這個視窗關閉。

然後在「gedit」的主視窗，右上方，有一個「三條橫槓」圖示的「按鈕」，
按下後，就會出現一個下拉選單，可以看到其中有一個選項「Find in Files...」，
點選「Find in Files...」這個選項，就會跳出一個標題為「Find in Files...」的對話框。


## 全部安裝

執行下面指令

``` sh
$ sudo apt-get install gedit-plugins
```

安裝「[gedit-plugins](https://packages.ubuntu.com/artful/gedit-plugins)」這套件，就會安裝所有的「gedit-plugin」。

可以執行下面指令，就可以了解到會安裝那些「gedit-plugin」。

``` sh
$ apt-cache show gedit-plugins | grep '^Depends:'
```

顯示

```
Depends: gedit-plugin-bookmarks, gedit-plugin-bracket-completion, gedit-plugin-character-map, gedit-plugin-code-comment, gedit-plugin-color-picker, gedit-plugin-color-schemer, gedit-plugin-commander, gedit-plugin-dashboard, gedit-plugin-draw-spaces, gedit-plugin-find-in-files, gedit-plugin-git, gedit-plugin-join-lines, gedit-plugin-multi-edit, gedit-plugin-smart-spaces, gedit-plugin-synctex, gedit-plugin-terminal, gedit-plugin-word-completion, gedit-plugin-zeitgeist
```

執行下面指令，拆成列表來觀看

``` sh
$ apt-cache show gedit-plugins | grep '^Depends:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g'
```

顯示

```
gedit-plugin-bookmarks
gedit-plugin-bracket-completion
gedit-plugin-character-map
gedit-plugin-code-comment
gedit-plugin-color-picker
gedit-plugin-color-schemer
gedit-plugin-commander
gedit-plugin-dashboard
gedit-plugin-draw-spaces
gedit-plugin-find-in-files
gedit-plugin-git
gedit-plugin-join-lines
gedit-plugin-multi-edit
gedit-plugin-smart-spaces
gedit-plugin-synctex
gedit-plugin-terminal
gedit-plugin-word-completion
gedit-plugin-zeitgeist
```

### gedit-plugins 相依套件列表

* [gedit-plugin-bookmarks](https://packages.ubuntu.com/artful/gedit-plugin-bookmarks)
* [gedit-plugin-bracket-completion](https://packages.ubuntu.com/artful/gedit-plugin-bracket-completion)
* [gedit-plugin-character-map](https://packages.ubuntu.com/artful/gedit-plugin-character-map)
* [gedit-plugin-code-comment](https://packages.ubuntu.com/artful/gedit-plugin-code-comment)
* [gedit-plugin-color-picker](https://packages.ubuntu.com/artful/gedit-plugin-color-picker)
* [gedit-plugin-color-schemer](https://packages.ubuntu.com/artful/gedit-plugin-color-schemer)
* [gedit-plugin-commander](https://packages.ubuntu.com/artful/gedit-plugin-commander)
* [gedit-plugin-dashboard](https://packages.ubuntu.com/artful/gedit-plugin-dashboard)
* [gedit-plugin-draw-spaces](https://packages.ubuntu.com/artful/gedit-plugin-draw-spaces)
* [gedit-plugin-find-in-files](https://packages.ubuntu.com/artful/gedit-plugin-find-in-files)
* [gedit-plugin-git](https://packages.ubuntu.com/artful/gedit-plugin-git)
* [gedit-plugin-join-lines](https://packages.ubuntu.com/artful/gedit-plugin-join-lines)
* [gedit-plugin-multi-edit](https://packages.ubuntu.com/artful/gedit-plugin-multi-edit)
* [gedit-plugin-smart-spaces](https://packages.ubuntu.com/artful/gedit-plugin-smart-spaces)
* [gedit-plugin-synctex](https://packages.ubuntu.com/artful/gedit-plugin-synctex)
* [gedit-plugin-terminal](https://packages.ubuntu.com/artful/gedit-plugin-terminal)
* [gedit-plugin-word-completion](https://packages.ubuntu.com/artful/gedit-plugin-word-completion)
* [gedit-plugin-zeitgeist](https://packages.ubuntu.com/artful/gedit-plugin-zeitgeist)

上面套件列表的「[Markdown](https://en.wikipedia.org/wiki/Markdown)」語法，可以透過執行下面指令產生。

``` sh
$ apt-cache show gedit-plugins | grep '^Depends:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g' | awk '{printf "* [%s](https://packages.ubuntu.com/artful/%s)\n", $1, $1}'
```

或是執行下面指令產生。

``` sh
#!/usr/bin/env bash

for PACKAGE in $(apt-cache show gedit-plugins | grep '^Depends:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g'); do
	#echo $PACKAGE
	echo "* [$PACKAGE](https://packages.ubuntu.com/artful/$PACKAGE)"
done
```

## Source Package: gedit-plugins

執行

``` sh
$ apt-cache showsrc gedit-plugin-find-in-files | grep '^Binary:' -B 2
```

顯示

```
Package: gedit-plugins
Format: 3.0 (quilt)
Binary: gedit-plugins, gedit-plugins-common, gedit-plugin-bookmarks, gedit-plugin-bracket-completion, gedit-plugin-character-map, gedit-plugin-code-comment, gedit-plugin-color-picker, gedit-plugin-color-schemer, gedit-plugin-commander, gedit-plugin-dashboard, gedit-plugin-draw-spaces, gedit-plugin-find-in-files, gedit-plugin-git, gedit-plugin-join-lines, gedit-plugin-multi-edit, gedit-plugin-smart-spaces, gedit-plugin-synctex, gedit-plugin-terminal, gedit-plugin-text-size, gedit-plugin-word-completion, gedit-plugin-zeitgeist

```

可以了解到這些單一套件，都是來自於「[gedit-plugins](https://packages.ubuntu.com/source/artful/gedit-plugins)」這個「Source Package」。


## Package: gedit-plugins-common

而其中有一個套件「[gedit-plugins-common](https://packages.ubuntu.com/artful/gedit-plugin-find-in-files)」，當安裝這些單一套件，就會一併安裝。

```sh
$ apt-cache show gedit-plugin-find-in-files | grep '^Depends:'
```

顯示

```
Depends: libc6 (>= 2.14), libglib2.0-0 (>= 2.35.9), libgtk-3-0 (>= 3.11.5), libgtksourceview-3.0-1 (>= 3.21.3), libpeas-1.0-0 (>= 1.7.0), gedit (>= 3.22), gedit-plugins-common (>= 3.22.0-2)
```

可以從上面看到「gedit-plugins-common (>= 3.22.0-2)」。

執行

``` sh
$ apt-cache rdepends gedit-plugins-common
```

顯示

```
gedit-plugins-common
Reverse Depends:
  gedit-plugin-bookmarks
  gedit-plugin-zeitgeist
  gedit-plugin-word-completion
  gedit-plugin-text-size
  gedit-plugin-terminal
  gedit-plugin-synctex
  gedit-plugin-smart-spaces
  gedit-plugin-multi-edit
  gedit-plugin-join-lines
  gedit-plugin-git
  gedit-plugin-find-in-files
  gedit-plugin-draw-spaces
  gedit-plugin-dashboard
  gedit-plugin-commander
  gedit-plugin-color-schemer
  gedit-plugin-color-picker
  gedit-plugin-code-comment
  gedit-plugin-character-map
  gedit-plugin-bracket-completion
```

## Package: gedit-plugin-find-in-files

以安裝「[gedit-plugin-find-in-files](https://packages.ubuntu.com/artful/gedit-plugin-find-in-files)」為例。

執行

``` sh
$ dpkg -L gedit-plugin-find-in-files
```

顯示

```
/.
/usr
/usr/lib
/usr/lib/x86_64-linux-gnu
/usr/lib/x86_64-linux-gnu/gedit
/usr/lib/x86_64-linux-gnu/gedit/plugins
/usr/lib/x86_64-linux-gnu/gedit/plugins/findinfiles.plugin
/usr/lib/x86_64-linux-gnu/gedit/plugins/libfindinfiles.so
/usr/share
/usr/share/doc
/usr/share/doc/gedit-plugin-find-in-files
/usr/share/doc/gedit-plugin-find-in-files/copyright
/usr/share/metainfo
/usr/share/metainfo/gedit-findinfiles.metainfo.xml
/usr/share/doc/gedit-plugin-find-in-files/changelog.Debian.gz
```

可以注意到三個檔案路徑

* /usr/lib/x86_64-linux-gnu/gedit/plugins/findinfiles.plugin
* /usr/lib/x86_64-linux-gnu/gedit/plugins/libfindinfiles.so
* /usr/share/metainfo/gedit-findinfiles.metainfo.xml

和注意到兩個資料夾路徑

* /usr/lib/x86_64-linux-gnu/gedit/plugins
* /usr/share/metainfo

執行

``` sh
$ cat /usr/lib/x86_64-linux-gnu/gedit/plugins/findinfiles.plugin
```

顯示

``` ini
[Plugin]
Module=findinfiles
IAge=3
Name=Find in Files
Name[ar]=ابحث في الملفات
Name[ca]=Cerca als fitxers
Name[cs]=Hledat v souborech
Name[de]=In Dateien suchen
Name[el]=Εύρεση σε αρχεία
Name[es]=Buscar en archivos
Name[he]=חיפוש בקבצים
Name[hu]=Keresés fájlokban
Name[id]=Cari dalam Berkas
Name[it]=Cerca nei file
Name[ko]=파일에서 찾기
Name[lt]=Rasti failuose
Name[lv]=Meklēt datnēs
Name[pl]=Wyszukiwanie w plikach
Name[pt]=Localizar em ficheiros
Name[pt_BR]=Localizar no Arquivos
Name[sk]=Nájdenie v súboroch
Name[sr]=Пронађи у датотекама
Name[sr@latin]=Pronađi u datotekama
Name[sv]=Sök i filer
Name[th]=หาในแฟ้ม
Name[tr]=Dosyalarda Bul
Name[zh_CN]=在文件中查找
Description=Find text in all files of a folder.
Description[ar]=ابحث عن نص في كل الملفات في مجلد.
Description[ca]=Cerca text en tots els fitxers d'una carpeta.
Description[cs]=Hledá text ve všech souborech ve složce.
Description[de]=Text in allen Dateien eines Ordners suchen.
Description[el]=Εύρεση κειμένου σε όλα τα αρχεία ενός φακέλου.
Description[es]=Buscar texto en todos los archivos o en un carpeta.
Description[he]=מציאת טקסט בכל הקבצים בתיקייה.
Description[hu]=Szöveg keresése egy mappa minden fájljában.
Description[id]=Cari teks dalam semua berkas pada suatu folder.
Description[it]=Cerca il testo in tutti i file di una cartella.
Description[ko]=폴더의 모든 파일에서 문자열 찾기
Description[lt]=Rasti tekstą visuose aplanko failuose.
Description[lv]=Meklēt tekstu visās datnēs un mapēs.
Description[pl]=Wyszukiwanie tekstu we wszystkich plikach w katalogu.
Description[pt]=Localizar texto em todos os ficheiros de uma pasta.
Description[pt_BR]=Localizar texto em todos os arquivos de uma pasta.
Description[sk]=Nájde text vo všetkých súboroch priečinka.
Description[sr]=Пронађите текст у свим датотекама у фасцикли.
Description[sr@latin]=Pronađite tekst u svim datotekama u fascikli.
Description[sv]=Sök text i alla filer för en mapp.
Description[th]=หาข้อความในแฟ้มทั้งหมดของโฟลเดอร์
Description[tr]=Klasörün bütün dosyalarında metin bul.
Description[zh_CN]=在文件夹的所有文件查找文本
Authors=The Lemon Man <thatlemon at google's mail service dot com>
Copyright=Copyright © 2015 The Lemon Man
Website=http://www.gedit.org
Version=3.22.0
```

執行

``` sh
$ cat /usr/share/metainfo/gedit-findinfiles.metainfo.xml
```

顯示

``` xml
<?xml version="1.0" encoding="UTF-8"?>
<component type="addon">
  <id>gedit-findinfiles</id>
  <extends>org.gnome.gedit.desktop</extends>
  <name>Find in Files</name>
  <summary>Find text in all files of a folder</summary>
  <url type="homepage">https://wiki.gnome.org/Apps/Gedit/ShippedPlugins</url>
  <url type="bugtracker">https://bugzilla.gnome.org/enter_bug.cgi?product=gedit&component=Plugins</url>
  <metadata_license>CC0-1.0</metadata_license>
  <project_license>GPL-2.0+</project_license>
  <updatecontact>i.gnatenko.brain@gmail.com</updatecontact>
</component>
```

執行

``` sh
$ file /usr/lib/x86_64-linux-gnu/gedit/plugins/libfindinfiles.so
```

顯示

```
/usr/lib/x86_64-linux-gnu/gedit/plugins/libfindinfiles.so: ELF 64-bit LSB shared object, x86-64, version 1 (SYSV), dynamically linked, BuildID[sha1]=e3fe6eba2c6da9d4f9cb897ae8f7670a844415b6, stripped
```

可以執行下面指令，觀看「/usr/lib/x86_64-linux-gnu/gedit/plugins」這個資料夾下有哪些檔案。

``` sh
$ ls /usr/lib/x86_64-linux-gnu/gedit/plugins
```

可以執行下面指令，觀看「/usr/share/metainfo」這個資料夾下有哪些檔案。

``` sh
$ ls /usr/share/metainfo
```

執行

``` sh
$ dpkg -S /usr/lib/x86_64-linux-gnu/gedit/plugins
```

顯示

```
gin-commander, gedit, gedit-plugin-word-completion, gedit-plugin-synctex, gedit-plugin-find-in-files, gedit-plugin-dashboard, gedit-plugin-color-schemer, gedit-plugin-color-picker, gedit-plugin-bracket-completion, gedit-plugin-bookmarks, gedit-plugins-common, gedit-plugin-code-comment, gedit-plugin-character-map, devhelp: /usr/lib/x86_64-linux-gnu/gedit/plugins
```

可以了解到有那些套件，安裝在「/usr/lib/x86_64-linux-gnu/gedit/plugins」這個資料夾。

以「devhelp」為例

``` sh
$ dpkg -L devhelp | grep '/usr/lib/x86_64-linux-gnu/gedit/plugins/'
```

顯示

```
/usr/lib/x86_64-linux-gnu/gedit/plugins/devhelp.plugin
/usr/lib/x86_64-linux-gnu/gedit/plugins/devhelp.py
```
