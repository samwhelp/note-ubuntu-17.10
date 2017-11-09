#!/usr/bin/env gjs

const Gio = imports.gi.Gio;
const GioSSS = Gio.SettingsSchemaSource;

let schema_dir_path = Gio.File.new_for_path('schemas');
let schema_source = GioSSS.new_from_directory(
	schema_dir_path.get_path(),
	null,
	false
);

let list = schema_source.list_schemas(true);

//print(list.length); // Result: 2
//print(list); // Result: org.test.demo,

for (let item of list) {
	print(item, "\n");
}

/*

## API

### Gio.SettingsSchemaSource

* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschemasource
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschemasource#constructor-new_from_directory
* http://devdocs.baznga.org/gio20~2.50p/gio.settingsschemasource#method-list_schemas

*/


/*
// list type
//https://developer.mozilla.org/zh-TW/docs/Web/JavaScript/Reference/Operators/typeof
//https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/typeof
print(typeof list);
print(Object.prototype.toString.call(list));
print(Array.isArray(list));

*/

/*
Result:
object
[object Array]
true
*/


/*

## Array comprehensions
* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Operators/Array_comprehensions
* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Indexed_collections
* https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Statements/for...of

*/
