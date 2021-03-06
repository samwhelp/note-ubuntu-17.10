#!/usr/bin/env bash


mkdir schemas -p


cat > schemas/org.test.demo.gschema.xml <<EOF
<schemalist>
	<schema id="org.test.demo" path="/org/test/demo/">
		<key name="is-light-on" type="b">
			<default>false</default>
			<summary>Light switch</summary>
			<description>true: the light is on; false: the light is off; </description>
		</key>
		<key name="config-file-path" type="s">
			<default>'~/.config/org.test.demo/main.conf'</default>
			<summary>The configuration file</summary>
			<description>The location to find configuration file.</description>
		</key>
	</schema>
</schemalist>
EOF
