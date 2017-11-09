#!/usr/bin/env gjs

const Gio = imports.gi.Gio;
const GioSSS = Gio.SettingsSchemaSource;

let schema_dir_path = Gio.File.new_for_path('schemas');
let schema_source = GioSSS.new_from_directory(
	schema_dir_path.get_path(),
	GioSSS.get_default(),
	false
);

let list = schema_source.list_schemas(true);

//print(list.length); // Result: 2
//print(list);

for (let item of list) {
	print(item, "\n");
}
