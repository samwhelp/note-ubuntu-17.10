#!/usr/bin/env gjs

const Lang = imports.lang;
const Gtk = imports.gi.Gtk;
const Gio = imports.gi.Gio;

const GSD_PLUGINS_COLOR_SCHEMA = 'org.gnome.settings-daemon.plugins.color';
const NIGHT_LIGHT_TEMPERATURE_KEY = 'night-light-temperature';

var Win = new Lang.Class({
	Name: 'Win',
	_init: function(args) {
		this.win = new Gtk.Window({
			title: 'Demo bind',
			//default_width: 100,
			//default_height: 60,
			type: Gtk.WindowType.TOPLEVEL
		});
		this.win.set_position(Gtk.WindowPosition.CENTER) //http://devdocs.baznga.org/gtk30~3.22.12/gtk.windowposition#default-center
		this.win.connect('delete-event', Gtk.main_quit);

		//http://devdocs.baznga.org/gtk30~3.22.12/gtk.spinbutton
		this.spin = Gtk.SpinButton.new_with_range(
			1000,
			7000,
			100
		);
		this.win.add(this.spin);

		this.settings = new Gio.Settings({schema_id: GSD_PLUGINS_COLOR_SCHEMA});
		//http://devdocs.baznga.org/gio20~2.50p/gio.settings#method-bind
		//bind(key, object, property, flags)
		this.settings.bind(
			NIGHT_LIGHT_TEMPERATURE_KEY,
			this.spin,
			'value',
			Gio.SettingsBindFlags.DEFAULT //http://devdocs.baznga.org/gio20~2.50p/gio.settingsbindflags
		);


	},

	run: function() {
		this.win.show_all();
	}
});

Gtk.init(null);
var win = new Win();
win.run();
Gtk.main();
