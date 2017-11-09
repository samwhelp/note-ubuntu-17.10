
/*
//try load once
print('load util');
*/

function create_settings()
{
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

	return settings;
}

var settings = create_settings();
