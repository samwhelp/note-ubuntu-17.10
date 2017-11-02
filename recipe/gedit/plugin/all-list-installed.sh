#!/usr/bin/env bash

## dpkg -l '*gedit-plugin*' | grep '^ii' | cut -d ' ' -f 3
## dpkg --get-selections | grep 'gedit-plugin' | grep install | awk -F "\t" '{print $1}'


dpkg -l '*gedit-plugin-*' | grep '^ii' | cut -d ' ' -f 3
## dpkg --get-selections | grep 'gedit-plugin-' | grep install | awk -F "\t" '{print $1}'


## dpkg -l '*gedit*' | grep '^ii' | cut -d ' ' -f 3
## dpkg --get-selections | grep gedit | grep install | awk -F "\t" '{print $1}'
