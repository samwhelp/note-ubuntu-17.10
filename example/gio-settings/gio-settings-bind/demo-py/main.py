#!/usr/bin/env python3

import gi
gi.require_version('Gtk', '3.0')

from gi.repository import Gtk
from gi.repository import Gio

def main():

	win = Gtk.Window()
	win.set_title('Demo bind')
	win.set_position(Gtk.WindowPosition.CENTER)
	win.connect('delete-event', Gtk.main_quit)

	spin = Gtk.SpinButton.new_with_range(
		1000,
		7000,
		100
	)
	win.add(spin)


	settings = Gio.Settings('org.gnome.settings-daemon.plugins.color')
	settings.bind(
		'night-light-temperature',
		spin,
		'value',
		Gio.SettingsBindFlags.DEFAULT
	)


	win.show_all()
	Gtk.main()


if __name__ == '__main__':
	main()
