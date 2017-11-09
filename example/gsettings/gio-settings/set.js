#!/usr/bin/env gjs

imports.searchPath.push('.');

/*
//try load once
imports.util.settings;
imports.util.settings;
*/

let settings = imports.util.settings;


print('old is-light-on:', settings.get_boolean('is-light-on'));
//old is-light-on: false


print('set ok?:', settings.set_boolean('is-light-on', true));


print('new is-light-on:', settings.get_boolean('is-light-on'));
//new is-light-on: true


print('');

print('old config-file-path:', settings.get_string('config-file-path'));
//old config-file-path: ~/.config/org.test.demo/main.conf


print('set ok?:', settings.set_string('config-file-path', '~/.my.conf'));


print('new config-file-path:', settings.get_string('config-file-path'));
//new config-file-path: ~/.my.conf
