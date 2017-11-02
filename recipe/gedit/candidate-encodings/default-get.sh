#!/usr/bin/env bash

grep 'candidate-encodings' /usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml -B 1 -A 7 | grep '<default>' | cut -d '>' -f 2 | cut -d '<' -f 1

#grep 'candidate-encodings' /usr/share/glib-2.0/schemas/org.gnome.gedit.gschema.xml -B 1 -A 7 | grep '<default>' | awk -F '<default>' '{print $2}' | awk -F '</default>' '{print $1}'
