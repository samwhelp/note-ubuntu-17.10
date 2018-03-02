---
layout: page
title: 關於「gedit」
date: 2017-11-01 17:15:12 +0800
description: >
  關於「gedit」。
parent:
  title: 主題
  url: '/read/subject'
source_url: '/read/subject/gedit/index.md'
---


## 議題

* [如何查詢「gedit」的快速鍵](shortcut.html)
* [如何透過安裝套件的方式，安裝額外的「gedit-plugin」](plugin.html)
* [如何設定讓「gedit」，可以辨識「big5編碼的檔案」](candidate-encodings.html)
* [關於「gedit」的「color scheme」](color-scheme.html)


## Recipe

* [gedit](https://github.com/samwhelp/note-ubuntu-17.10/tree/gh-pages/recipe/gedit)


## 測試環境

執行

``` sh
$ gedit --version
```

顯示

```
gedit - Version 3.22.1
```

執行

``` sh
$ dpkg -l gedit
```

顯示

```
Desired=Unknown/Install/Remove/Purge/Hold
| Status=Not/Inst/Conf-files/Unpacked/halF-conf/Half-inst/trig-aWait/Trig-pend
|/ Err?=(none)/Reinst-required (Status,Err: uppercase=bad)
||/ Name                               Version                Architecture           Description
+++-==================================-======================-======================-=========================================================================
ii  gedit                              3.22.1-1ubuntu1        amd64                  official text editor of the GNOME desktop environment
```
