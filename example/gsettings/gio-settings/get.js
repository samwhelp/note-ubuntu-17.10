#!/usr/bin/env gjs

imports.searchPath.push('.');

let settings = imports.util.settings;

print('is-light-on:', settings.get_boolean('is-light-on'));
//is-light-on: false

print('config-file-path:', settings.get_string('config-file-path'));
//config-file-path: ~/.config/org.test.demo/main.conf
