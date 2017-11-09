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


let list = schema.list_keys()

for (let item of list) {
	print('key:', item);
	//print('item type:', Object.prototype.toString.call(item)); //[object String]
}

/*
key: config-file-path
key: is-light-on
*/



/*

## API

* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschemasource#method-lookup
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschema
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschema#method-list_keys

*/
