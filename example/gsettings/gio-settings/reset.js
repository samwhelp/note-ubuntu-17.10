#!/usr/bin/env gjs

imports.searchPath.push('.');

/*
//try load once
imports.util.settings;
imports.util.settings;
*/

let settings = imports.util.settings;


print('old is-light-on:', settings.get_boolean('is-light-on'));
//old config-file-path: true


print('reset is-light-on:');
settings.reset('is-light-on');


print('default is-light-on:', settings.get_boolean('is-light-on'));
//default is-light-on: false


print('')


print('old config-file-path:', settings.get_string('config-file-path'));
//old config-file-path: ~/.my.conf


print('reset config-file-path:');
settings.reset('config-file-path');


print('default config-file-path:', settings.get_string('config-file-path'));
//default config-file-path: ~/.config/org.test.demo/main.conf
