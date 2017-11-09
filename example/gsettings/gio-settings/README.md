

## Example

* [start.js](start.js)
* [test_util.js](test_util.js)
* [get.js](get.js)
* [set.js](set.js)
* [reset.js](reset.js)


## 前置作業


### Create schema

執行下面指令，產生「schemas/org.test.demo.gschema.xml」。

``` sh
$ ./create-schema.sh
```

詳細指令，請參考「[create-schema.sh](create-schema.sh)」。


### Compile schemas

執行下面指令，產生「schemas/gschemas.compiled」。

``` sh
$ ./compile-schemas.sh
```

詳細指令，請參考「[compile-schemas.sh](compile-schemas.sh)」。


## 測試步驟


### get

執行

``` sh
$ ./get.js
```

顯示

```
is-light-on: false
config-file-path: ~/.config/org.test.demo/main.conf
```

### set

執行

``` sh
$ ./set.js
```

顯示

```
old config-file-path: ~/.config/org.test.demo/main.conf
set ok?: true
new config-file-path: ~/.my.conf
```

執行

``` sh
$ dconf dump /org/test/demo/
```

顯示

```
[/]
config-file-path='~/.my.conf'
is-light-on=true
```

執行

``` sh
$ dconf read /org/test/demo/is-light-on
```

顯示

```
true
```

執行

``` sh
$ dconf read /org/test/demo/config-file-path
```

顯示

```
'~/.my.conf'
```

### reset

執行

``` sh
$ ./reset.js
```

顯示

```
old is-light-on: true
reset is-light-on:
default is-light-on: false

old config-file-path: ~/.my.conf
reset config-file-path:
default config-file-path: ~/.config/org.test.demo/main.conf
```

執行

``` sh
$ dconf dump /org/test/demo/
```

沒有顯示任何結果，直接出現下一個提示字元。

執行

``` sh
$ dconf read /org/test/demo/is-light-on
```

沒有顯示任何結果，直接出現下一個提示字元。

執行

``` sh
$ dconf read /org/test/demo/config-file-path
```

沒有顯示任何結果，直接出現下一個提示字元。
