

## Example

* [start.js](start.js)
* [get_default.js](get_default.js)
* [plus_parent_get_default.js](plus_parent_get_default.js)
* [lookup.js](lookup.js)


## 如何產生「gschemas.compiled」

* Create schemas dir
* Create schema
* Compile schemas

### Create schemas dir

執行下面指令，產生「schemas」這個資料夾。

``` sh
$ mkdir schemas -p
```

### Create schema

執行下面指令，產生「schemas/org.test.demo.gschema.xml」這個檔案。

``` sh
cat > schemas/org.test.demo.gschema.xml <<EOF
<schemalist>
	<schema id="org.test.demo" path="/org/test/demo/">
		<key name="is-light-on" type="b">
			<default>false</default>
			<summary>Light switch</summary>
			<description>true: turn on the light; false: turn off the light; </description>
		</key>
		<key name="config-file-path" type="s">
			<default>'~/.config/org.test.demo/main.conf'</default>
			<summary>The configuration file</summary>
			<description>The location to find configuration file.</description>
		</key>
	</schema>
</schemalist>
EOF
```

上面兩個步驟，寫在「[create-schema.sh](create-schema.sh)」。


### Compile schemas

執行下面指令，產生「schemas/gschemas.compiled」這個檔案。

``` sh
$ glib-compile-schemas schemas
```

上面這個步驟，寫在「[compile-schemas.sh](compile-schemas.sh)」
