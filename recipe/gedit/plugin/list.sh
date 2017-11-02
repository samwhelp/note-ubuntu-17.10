#!/usr/bin/env bash

apt-cache show gedit-plugins | grep '^Depends:' | awk -F ': ' '{print $2}' | sed 's/, /\n/g'
