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


print('id:', schema.get_id());
//id: org.test.demo


print('path:', schema.get_path());
//path: /org/test/demo/


/*

## API

* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschemasource#method-lookup
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschema
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschema#method-get_id
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschema#method-get_path

*/
