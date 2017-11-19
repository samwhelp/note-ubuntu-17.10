
# nautilus-python / demo-rename


## 緣起

這個範例，是為了回覆「[按F3捷徑鍵改為所要的檔案名稱](https://www.ubuntu-tw.org/modules/newbb/viewtopic.php?post_id=356290#forumpost356290)」這篇所寫的。


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


## 功能

* 選擇某一個檔案，按下「F4」鍵，會在檔名前面附加「#」，若是檔名第一個字元是「#」則不附加。例如「abc.txt」會改成「#abc.txt」。
* 選擇某一個檔案，按下「F3」鍵，若是檔名第一個字元是「#」會移除檔名的第一個「#」。例如「#abc.txt」會改成「abc.txt」。
* 選擇某一個檔案，按下「F8」鍵，會跳出「更改檔名對話框」。
  舉例，若是檔名是「#abc.txt」，則對話框的輸入文字框，初始值是「abc.txt」。
  舉例，若是檔名是「abc.txt」，則對話框的輸入文字框，初始值是「#abc.txt」。
