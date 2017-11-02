#!/usr/bin/env bash

grep 'scheme' /usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml -A 4  | grep '<default>' | cut -d '>' -f 2 | cut -d '<' -f 1

grep 'scheme' /usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml -A 4  | grep '<default>' | awk -F '<default>' '{print $2}' | awk -F '</default>' '{print $1}'
