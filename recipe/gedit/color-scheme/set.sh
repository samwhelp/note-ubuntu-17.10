#!/usr/bin/env bash

if [ $# -lt 1 ]; then
	echo 'Usage:'
	echo '$ ./set <scheme>'
	echo
	echo 'Ex:'
	echo '$ ./set oblivion'
	exit 1
fi


## SCHEME="'classic'"
SCHEME="'$1'"

gsettings set org.gnome.gedit.preferences.editor scheme "$SCHEME"

#echo "Current: $SCHEME"
