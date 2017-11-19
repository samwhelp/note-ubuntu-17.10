
# nautilus-python / demo-rename-shortcut


## 緣起

這個範例，是為了回覆「[按F3捷徑鍵改為所要的檔案名稱](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356290#forumpost356290)」這篇所寫的。


## 功能

* 選擇某一個檔案，按下「F4」鍵，會在檔名前面附加「#」，若是檔名第一個字元是「#」則不附加。例如「abc.txt」會改成「#abc.txt」。
* 選擇某一個檔案，按下「F3」鍵，若是檔名第一個字元是「#」會移除檔名的第一個「#」。例如「#abc.txt」會改成「abc.txt」。
* 選擇某一個檔案，按下「F8」鍵，會跳出「更改檔名對話框」。
  舉例，若是檔名是「#abc.txt」，則對話框的輸入文字框，初始值是「abc.txt」。
  舉例，若是檔名是「abc.txt」，則對話框的輸入文字框，初始值是「#abc.txt」。


## 開發測試環境

* [Ubuntu 17.10](https://wiki.ubuntu.com/ArtfulAardvark/ReleaseNotes)
* GNOME [nautilus](https://packages.ubuntu.com/artful/nautilus) 3.26.0
* [python-nautilus](https://packages.ubuntu.com/artful/python-nautilus) 1.1-4ubuntu1

## 前置作業

``` sh
$ sudo apt-get install python-nautilus
```


## 可安裝路徑

* 系統全域: /usr/share/nautilus-python/extensions/
* 個人區域: ~/.local/share/nautilus-python/extensions/

註: 擇一即可。可以參考「[/usr/share/doc/python-nautilus/examples/README](https://github.com/GNOME/nautilus-python/tree/master/examples)」的說明


## 如何安裝


### 下載

執行

``` sh
$ wget -c https://raw.githubusercontent.com/samwhelp/note-ubuntu-17.10/gh-pages/example/nautilus/nautilus-python/demo-rename-shortcut/rename.py
```

會下載一個檔案「[rename.py](https://github.com/samwhelp/note-ubuntu-17.10/blob/gh-pages/example/nautilus/nautilus-python/demo-rename-shortcut/rename.py)」。

以下擇一即可。


### 安裝到「個人區域」

執行下面指令，確保「~/.local/share/nautilus-python/extensions/」這個資料夾存在。

``` sh
$ mkdir -p ~/.local/share/nautilus-python/extensions/
```

執行下面指令，將「rename.py」複製到「~/.local/share/nautilus-python/extensions/rename.py」這個路徑

``` sh
$ cp rename.py ~/.local/share/nautilus-python/extensions/
```

執行下面指令，確認「~/.local/share/nautilus-python/extensions/rename.py」這個檔案是否存在。

``` sh
$ ls ~/.local/share/nautilus-python/extensions/rename.py
```

若是要移除，執行下面指令，移除「~/.local/share/nautilus-python/extensions/rename.py」這個檔案。

``` sh
$ rm ~/.local/share/nautilus-python/extensions/rename.py
```

### 安裝到「系統全域」

執行下面指令，確保「~/.local/share/nautilus-python/extensions/」這個資料夾存在。

``` sh
$ sudo mkdir -p /usr/share/nautilus-python/extensions/
```

執行下面指令，將「rename.py」複製到「/usr/share/nautilus-python/extensions/rename.py」這個路徑

``` sh
$ sudo cp rename.py /usr/share/nautilus-python/extensions/
```

執行下面指令，確認「/usr/share/nautilus-python/extensions/rename.py」這個檔案是否存在。

``` sh
$ ls /usr/share/nautilus-python/extensions/rename.py
```

若是要移除，執行下面指令，移除「/usr/share/nautilus-python/extensions/rename.py」這個檔案。

``` sh
$ sudo rm /usr/share/nautilus-python/extensions/rename.py
```

## 測試

可以直接執行「nautilus」，若已經有執行了，請重啟「nautilus」。

就可以按照上面提到的功能去測試。

若是開發測試，則是可以在「Terminal」執行下面指令

``` sh
$ nautilus --no-desktop
```

上面這個指令是參考「[/usr/share/doc/python-nautilus/examples/README](https://github.com/GNOME/nautilus-python/tree/master/examples)」的說明。

另外我有寫了一些非相依「nautilus」的簡單測試，則是可以執行「`python2 rename.py`」。


## 相關連結

* https://github.com/gnunn1/tilix/blob/master/data/nautilus/open-tilix.py
* https://github.com/GNOME/nautilus-python/tree/master/examples
* http://python-gtk-3-tutorial.readthedocs.io/en/latest/index.html
* https://wiki.gnome.org/Projects/NautilusPython


## API

* https://lazka.github.io/pgi-docs/#Nautilus-3.0
* https://lazka.github.io/pgi-docs/#GLib-2.0
* https://lazka.github.io/pgi-docs/#Gtk-3.0
* https://lazka.github.io/pgi-docs/#Gio-2.0
* https://lazka.github.io/pgi-docs/#GObject-2.0
