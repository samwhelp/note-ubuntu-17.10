#!/usr/bin/env gjs

const Gio = imports.gi.Gio;
const GioSSS = Gio.SettingsSchemaSource;


//print(GioSSS.get_default());
// [boxed instance proxy GIName:Gio.SettingsSchemaSource jsobj@0x7f3d9c19eac0 native@0x7f3d74010890]

let schema_default = GioSSS.get_default();

//print(schema_default);
// [boxed instance proxy GIName:Gio.SettingsSchemaSource jsobj@0x7f3d9c19eac0 native@0x7f3d74010890]

//print(schema_default.list_schemas(true))
//print(schema_default.list_schemas(false))

let list = schema_default.list_schemas(true);

print(list.length);

for (let item of list) {
	print(item, "\n");
}
