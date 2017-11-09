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

let settings = new Gio.Settings({settings_schema: schema});

print('is-light-on:', settings.get_boolean('is-light-on'));
//is-light-on: false

print('config-file-path:', settings.get_string('config-file-path'));
//config-file-path: ~/.config/org.test.demo/main.conf


//print(settings.set_boolean('is-light-on', true));
//print(settings.set_string('config-file-path', '~/.my.conf'));


/*
print('schema_source:', schema_source);
// schema_source: [boxed instance proxy GIName:Gio.SettingsSchemaSource jsobj@0x7fadf359eb80 native@0x7fadd8010690]

print('schema:', schema);
//schema: [boxed instance proxy GIName:Gio.SettingsSchema jsobj@0x7fadf359ec10 native@0x561454376630]

print('settings:', settings);
//settings: [object instance proxy GIName:Gio.Settings jsobj@0x7fadf35852c0 native@0x5614543ed5c0]
*/


/*

## API

* http://devdocs.baznga.org/gio20~2.50p/gio.settings
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschemasource
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschema


*/
