using Gtk;

int main (string[] args) {

	Gtk.init (ref args);


	var win = new Window ();
	win.title = "Demo bind";
	win.border_width = 10;
	win.window_position = WindowPosition.CENTER;
	//win.set_default_size (100, 60);
	win.destroy.connect (Gtk.main_quit);


	var spin = new SpinButton.with_range(
		1000,
		7000,
		100
	);
	win.add (spin);


	var settings = new GLib.Settings("org.gnome.settings-daemon.plugins.color");
	settings.bind(
		"night-light-temperature",
		spin,
		"value",
		GLib.SettingsBindFlags.DEFAULT
	);


	win.show_all();

	Gtk.main();

	return 0;
}
