#!/usr/bin/env bash

mkdir install-plugin -p
cd install-plugin

for PACKAGE in $(apt-cache show gedit-plugins | grep '^Depends:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g') ; do
	#echo $PACKAGE
	CMD_FILE="$PACKAGE.sh"
	echo "sudo apt-get install $PACKAGE" > $CMD_FILE
	chmod u+x $CMD_FILE
done
