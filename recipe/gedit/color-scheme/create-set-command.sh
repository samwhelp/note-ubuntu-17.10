#!/usr/bin/env bash

mkdir set-color-scheme -p
cd set-color-scheme

for SCHEME in $(ls /usr/share/gtksourceview-3.0/styles -1 | cut -d '.' -f 1) ; do
	#echo $SCHEME
	CMD_FILE="$SCHEME.sh"
	echo "gsettings set org.gnome.gedit.preferences.editor scheme '$SCHEME'" > $CMD_FILE
	chmod u+x $CMD_FILE
done
