#!/usr/bin/env bash

sudo apt-get purge $(dpkg -l '*gedit-plugin*' | grep '^ii' | cut -d ' ' -f 3)

#sudo apt-get remove $(dpkg -l '*gedit-plugin*' | grep '^ii' | cut -d ' ' -f 3) --purge
