#!/bin/bash

if ! [ -f /home/gustav/bash-script/master.zip ]

	then wget -O master.zip https://github.com/gustavlowenhoff/bash-script/archive/master.zip
fi

mkdir /usr/src/$2
unzip master.zip /usr/src/$2

