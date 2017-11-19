#!/usr/bin/env python2

### Reference ###
## * https://github.com/gnunn1/tilix/blob/master/data/nautilus/open-tilix.py
## * https://github.com/GNOME/nautilus-python/tree/master/examples
## * http://python-gtk-3-tutorial.readthedocs.io/en/latest/index.html
## * https://lazka.github.io/pgi-docs/#Nautilus-3.0
## * https://lazka.github.io/pgi-docs/#GLib-2.0
## * https://lazka.github.io/pgi-docs/#Gtk-3.0
## * https://wiki.gnome.org/Projects/NautilusPython
### Reference ###

#import sys
#print(sys.version)

import gi
gi.require_version('Gtk', '3.0')
gi.require_version('Nautilus', '3.0')
from gi.repository import GObject, Gio, Gtk, GLib, Nautilus


class Agent ():

	def __init__ (self):
		self.cmd = 'atom'
		self.files = []
		self.shortcut_rename_dialog = 'F8'
		self.shortcut_rename_quick_add = 'F4'
		self.shortcut_rename_quick_del = 'F3'


	def open_rename_dialog (self, window):
		if len(self.files) != 1:
			return

		## https://lazka.github.io/pgi-docs/#Nautilus-3.0/classes/FileInfo.html#Nautilus.FileInfo
		item = self.files[0]
		#print('item: ', item)
		#print('item.get_name: ', item.get_name())
		#print('item.get_location: ', item.get_location())

		dialog = RenameDialog(window)
		dialog.set_old_file_name(item.get_name())
		response = dialog.run()

		if response == Gtk.ResponseType.OK:
			##print('The OK button was clicked')
			node = item.get_location()
			new_name = dialog.get_new_file_name()
			self.rename_node(node, new_name, item.get_name())

		elif response == Gtk.ResponseType.CANCEL:
			##print('The Cancel button was clicked')
			pass

		dialog.destroy()

	def quick_rename_add (self):
		#print('quick_rename_add');

		if len(self.files) != 1:
			return

		item = self.files[0]
		node = item.get_location()

		new_name = self.fix_file_name_add(item.get_name())

		self.rename_node(node, new_name, item.get_name())

	def quick_rename_del (self):
		#print('quick_rename_del');

		if len(self.files) != 1:
			return

		item = self.files[0]
		node = item.get_location()

		new_name = self.fix_file_name_del(item.get_name())

		self.rename_node(node, new_name, item.get_name())

	def fix_file_name_add (self, file_name):
		if file_name[0] == '#':
			return file_name
		else:
			return '#' + file_name

	def fix_file_name_del (self, file_name):
		if file_name[0] == '#':
			return file_name[1:]
		else:
			return file_name

	def rename_node (self, node, new_name, old_name):
		if new_name == old_name:
			return

		try:
			## https://lazka.github.io/pgi-docs/#Gio-2.0/classes/File.html#Gio.File.do_set_display_name
			node.set_display_name(new_name)
		except GLib.Error:
			## TODO:
			print('rename_node error:')


agent = Agent()

### Gtk.Dialog ###
## * http://python-gtk-3-tutorial.readthedocs.io/en/latest/dialogs.html
## * https://lazka.github.io/pgi-docs/#Gtk-3.0/classes/Dialog.html
### Gtk.Dialog ###
class RenameDialog (Gtk.Dialog):

	def __init__ (self, parent):
		Gtk.Dialog.__init__(
			self,
			'Rename Dialog',
			parent,
			0,
			(
				Gtk.STOCK_CANCEL,
				Gtk.ResponseType.CANCEL,
				Gtk.STOCK_OK,
				Gtk.ResponseType.OK
			)
		)

		self.set_default_size(150, 100)
		box = self.get_content_area()

		## http://python-gtk-3-tutorial.readthedocs.io/en/latest/label.html
		## https://lazka.github.io/pgi-docs/#Gtk-3.0/classes/Label.html
		self.label = Gtk.Label()
		box.add(self.label)

		## http://python-gtk-3-tutorial.readthedocs.io/en/latest/entry.html
		## https://lazka.github.io/pgi-docs/#Gtk-3.0/classes/Entry.html
		self.entry = Gtk.Entry()
		box.add(self.entry)

		self.show_all()

	def set_old_file_name (self, file_name):
		self.label.set_text('Old: ' + file_name)
		self.entry.set_text(self.fix_file_name(file_name))

	def get_new_file_name (self):
		return self.entry.get_text()

	def fix_file_name (self, file_name):
		if file_name[0] == '#':
			return agent.fix_file_name_del(file_name)
		else:
			return agent.fix_file_name_add(file_name)

#	def fix_file_name(self, file_name):
#		if file_name[0] == '#':
#			return file_name
#		else:
#			return '#' + file_name


### Nautilus.LocationWidgetProvider ###
## * https://lazka.github.io/pgi-docs/#Nautilus-3.0/interfaces.html
## * https://lazka.github.io/pgi-docs/#Nautilus-3.0/classes/LocationWidgetProvider.html
## * https://projects-old.gnome.org/nautilus-python/documentation/html/index.html
## * https://projects-old.gnome.org/nautilus-python/documentation/html/class-nautilus-python-location-widget-provider.html
### Nautilus.LocationWidgetProvider ###
class OpenAgentShortcutProvider (GObject.GObject, Nautilus.LocationWidgetProvider):

	def __init__ (self):
		self._create_accel_group()
		self._window = None
		self._uri = None
		pass

	def _create_accel_group (self):

		## https://lazka.github.io/pgi-docs/#Gtk-3.0/classes/AccelGroup.html
		self._accel_group = Gtk.AccelGroup()

		## https://lazka.github.io/pgi-docs/#Gtk-3.0/functions.html#Gtk.accelerator_parse
		key, mod = Gtk.accelerator_parse(agent.shortcut_rename_dialog)
		self._accel_group.connect(key, mod, Gtk.AccelFlags.VISIBLE, self._run_rename_dialog)

		key, mod = Gtk.accelerator_parse(agent.shortcut_rename_quick_add)
		self._accel_group.connect(key, mod, Gtk.AccelFlags.VISIBLE, self._run_quick_rename_add)

		key, mod = Gtk.accelerator_parse(agent.shortcut_rename_quick_del)
		self._accel_group.connect(key, mod, Gtk.AccelFlags.VISIBLE, self._run_quick_rename_del)


	def _run_rename_dialog (self, *args):
		agent.open_rename_dialog(self._window)

	def _run_quick_rename_add (self, *args):
		agent.quick_rename_add()

	def _run_quick_rename_del (self, *args):
		agent.quick_rename_del()


	def get_widget (self, uri, window):
		self._uri = uri

		if self._window:
			## https://lazka.github.io/pgi-docs/#Gtk-3.0/classes/Window.html#Gtk.Window.remove_accel_group
			self._window.remove_accel_group(self._accel_group)

		self._window = window

		## https://lazka.github.io/pgi-docs/#Gtk-3.0/classes/Window.html#Gtk.Window.add_accel_group
		window.add_accel_group(self._accel_group)
		return None

### Nautilus.MenuProvider ###
## * https://lazka.github.io/pgi-docs/#Nautilus-3.0/interfaces.html
## * https://lazka.github.io/pgi-docs/#Nautilus-3.0/classes/MenuProvider.html
## * https://projects-old.gnome.org/nautilus-python/documentation/html/index.html
## * https://projects-old.gnome.org/nautilus-python/documentation/html/class-nautilus-python-menu-provider.html
### Nautilus.MenuProvider ###
class OpenAgentMenuProvider (GObject.GObject, Nautilus.MenuProvider):

	def __init__ (self):
		pass

	def get_file_items (self, window, files):
		#print(files)
		agent.files = files

	def get_background_items (self, window, file):
		pass


class Test ():
	def run_rename_node (self):
		## https://lazka.github.io/pgi-docs/#Gio-2.0/classes/File.html#Gio.File.new_for_path
		node = Gio.File.new_for_path('/tmp/test.txt')
		old_name = 'test.txt'
		## new_name = 'test.txt'
		new_name = 'demo.txt'
		agent.rename_node(node, new_name, old_name)

	def run_fix_file_name_add (self):
		print(agent.fix_file_name_add('abc.txt'))
		print(agent.fix_file_name_add('#abc.txt'))

	def run_fix_file_name_del (self):
		print(agent.fix_file_name_del('#abc.txt'))
		print(agent.fix_file_name_del('abc.txt'))


def main():
	test = Test()
	test.run_rename_node()
	test.run_fix_file_name_add()
	test.run_fix_file_name_del()

if __name__ == '__main__':
	main()
