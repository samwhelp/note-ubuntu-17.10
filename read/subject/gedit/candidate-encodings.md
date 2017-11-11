---
layout: page
title: 如何設定讓「gedit」，可以辨識「big5編碼的檔案」
description: >
  如何設定讓「gedit」，可以辨識「big5編碼的檔案」。
parent:
  title: 關於「gedit」
  url: '/read/subject/gedit'
source_url: '/read/subject/gedit/candidate-encodings.md'
---


## 原始討論

* [#37 回覆: Ubuntu 17.10 推出](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=358844#forumpost358844)


## 相關討論

* [#2 回覆: gedit 亂碼問題](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=318884#forumpost318884)
* [#3 回覆: GEDIT復製WIN7的TXT檔案打開後變亂碼](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=354332#forumpost354332) (16.04)


## 相關索引

* [[索引] 文件編碼](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333558#forumpost333558)


## Recipe

* [gedit/candidate-encodings](https://github.com/samwhelp/note-ubuntu-17.10/tree/gh-pages/recipe/gedit/candidate-encodings)


## 測試環境

* gedit: 3.22.1
* gsettings: 2.54.1


## 探索開始

執行

``` sh
$ gsettings list-recursively | grep gedit | grep encodings
```

顯示

```
org.gnome.gedit.preferences.encodings candidate-encodings ['']
org.gnome.gedit.preferences.encodings candidate-encodings ['']
org.gnome.gedit.preferences.encodings candidate-encodings ['']
```


## get

執行下面指令，觀看「candidate-encodings」目前的設定值

``` sh
$ gsettings get org.gnome.gedit.preferences.encodings candidate-encodings
```

顯示

```
['']
```


## set

執行下面指令，設定「candidate-encodings」的值

``` sh
$ gsettings set org.gnome.gedit.preferences.encodings candidate-encodings "['UTF-8', 'BIG5', 'BIG5-HKSCS', 'EUC-TW', 'GB18030', 'GB2312', 'GBK', 'CURRENT', 'ISO-8859-15', 'UTF-16']"
```

執行下面指令，觀看「candidate-encodings」目前的設定值

``` sh
$ gsettings get org.gnome.gedit.preferences.encodings candidate-encodings
```

顯示

```
['UTF-8', 'BIG5', 'BIG5-HKSCS', 'EUC-TW', 'GB18030', 'GB2312', 'GBK', 'CURRENT', 'ISO-8859-15', 'UTF-16']
```


## reset

執行下面指令，恢復「candidate-encodings」的預設值

``` sh
$ gsettings reset org.gnome.gedit.preferences.encodings candidate-encodings
```

執行下面指令，觀看「candidate-encodings」目前的設定值

``` sh
$ gsettings get org.gnome.gedit.preferences.encodings candidate-encodings
```

顯示

```
['']
```

## schema

關於「candidate-encodings」的預設值，可以在「/usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml」這個檔案找到。

執行

``` sh
$ grep 'candidate-encodings' /usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml -B 1 -A 7
```

顯示

```
<pre><code>
  <schema gettext-domain="gedit" id="org.gnome.gedit.preferences.encodings" path="/org/gnome/gedit/preferences/encodings/">
    <key name="candidate-encodings" type="as">
      <default>['']</default>
      <summary>Candidate Encodings</summary>
      <description>List of candidate encodings shown in the Character Encoding menu in the open/save file chooser.
      "CURRENT" represents the current locale encoding. Only recognized encodings are used.
      The default value is the empty list, in which case gedit will choose good defaults depending on the country and language.</description>
    </key>
  </schema>
</code></pre>
```

若要得到「default value」，除了上面可以「reset」再「get」。

也可以執行下面指令，直接從「/usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml」撈取出來。

``` sh
$ grep 'candidate-encodings' /usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml -B 1 -A 7 | grep '<default>' | cut -d '>' -f 2 | cut -d '<' -f 1
```

顯示

```
['']
```

或是執行下面指令，直接從「/usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml」撈取出來。

``` sh
$ grep 'candidate-encodings' /usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml -B 1 -A 7 | grep '<default>' | awk -F '<default>' '{print $2}' | awk -F '</default>' '{print $1}'
```

顯示

```
['']
```


## dconf-editor

上面是透過下指令的方式，來設定「gsettings」。

也可以透過圖形工具來操作，可以透過「[dconf-editor](http://manpages.ubuntu.com/manpages/artful/en/man1/dconf-editor.1.html)」來設定
而「[dconf-editor](http://manpages.ubuntu.com/manpages/artful/en/man1/dconf-editor.1.html)」是屬於「[dconf-editor](https://packages.ubuntu.com/artful/dconf-editor)」這個套件。

執行

``` sh
$ sudo apt-get install dconf-tools
```

或是執行

``` sh
$ sudo apt-get install dconf-editor
```

然後執行「[dconf-editor](http://manpages.ubuntu.com/manpages/artful/en/man1/dconf-editor.1.html)」，使用「candidate-encodings」當關鍵字查詢，就可以找到該筆資料，來維護。

## gedit / 「Open Or SaveAs」/ Character Encoding

另外在「gedit」那也可以設定，

在「gedit」的主視窗，右上方，有一個「三條橫槓」圖示的「按鈕」，
按下後，就會出現一個下拉選單，可以看到其中有一個選項「Save As...」，
點選「Save As...」這個選項，就會跳出一個對話框。

在對話框左下方有一個選項，「Character Encoding:」，
請先下拉選單，
然後捲動到最下方，會有一個選項「Add or Remove...」，
點選它，就會出現另一個標題為「Character Encoding」的對話框，
在這個對話框，就可以維護(新增，刪除，排序）。


在「gedit」的主視窗，左上方有一個按鈕「Open」，按下後，會出現一個下拉選單，
在下拉選單下方，有一個按鈕「Other Documents...」，按下後，會出現一個標題為「Open」的對話框，
或是也可以直接使用快速鍵「<Ctrl>+o」，一樣會出現標題為「Open」的對話框，
再來的操作步驟，就如同剛剛上面介紹的。


## 測試步驟

執行下面指令，先產生一個檔案「utf-8.txt」。

``` sh
cat > utf-8.txt <<EOF
測試
中文檔案內容

EOF
```

執行下面指令，觀看「utf-8.txt」的檔案內容

``` sh
$ cat utf-8.txt
```

顯示

```
測試
中文檔案內容
```

執行

``` sh
$ file utf-8.txt
```

顯示

```
utf-8.txt: UTF-8 Unicode text
```

執行下面指令，將「utf-8.txt」的檔案內容，轉成「big5」編碼，並且輸出到「big5.txt」

``` sh
$ iconv -f utf-8 -t big5 -o big5.txt utf-8.txt
```

執行下面指令，觀看「big5.txt」的檔案內容

``` sh
$ cat big5.txt
```

顯示(亂碼)

```
����
�����ɮפ��e
```

執行

``` sh
$ file big5.txt
```

顯示

```
big5.txt: ISO-8859 text
```

執行

``` sh
$ sudo apt-get install uchardet python3-chardet
```

執行

``` sh
$ uchardet big5.txt
```

顯示

```
BIG5
```

執行

``` sh
$ chardet3 big5.txt
```

顯示

```
big5.txt: Big5 with confidence 0.99
```

這些工具有紀錄在「[[索引] 文件編碼](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=333558#forumpost333558)」。

回到正題，

直接點選「big5.txt」用「gedit」打開，可以看到正常顯示，不會出現亂碼。

或是也可以直接執行「`$ gedit big5.txt`」，一樣會用「gedit」開啟「big5.txt」。
