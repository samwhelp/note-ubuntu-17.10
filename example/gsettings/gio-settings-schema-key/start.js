#!/usr/bin/env gjs

const Gio = imports.gi.Gio;
const GioSSS = Gio.SettingsSchemaSource;

let schema_dir_path = Gio.File.new_for_path('schemas');
let schema_source = GioSSS.new_from_directory(
	schema_dir_path.get_path(),
	null,
	false
);

let schema_id = 'org.test.demo';

let schema = schema_source.lookup(schema_id, true);

//print('schema:', schema);
//schema: [boxed instance proxy GIName:Gio.SettingsSchema jsobj@0x7fb828b9ec10 native@0x55fccc68e230]


let key_id = 'is-light-on';

if (schema.has_key(key_id)) {

	var key = schema.get_key('is-light-on');
	print('key:', key);
	//key: [boxed instance proxy GIName:Gio.SettingsSchemaKey jsobj@0x7f902029eca0 native@0x560a880bedc0]

	print('key.get_default_value():', key.get_default_value());

	print('key.get_description():', key.get_description());

	print('key.get_name():', key.get_name());

	print('key.get_range():', key.get_range());

	print('key.get_summary():', key.get_summary());

	print('key.get_value_type():', key.get_value_type());


}





/*

## API

* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschemasource#method-lookup
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschema
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschema#method-has_key
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschema#method-get_key
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschemakey

*/
