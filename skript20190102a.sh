#!/bin/bash

if ! [ -d /home/gustav/bash-script/$1 ]
	then mkdir /home/gustav/bash-script/$1
fi

touch $2.txt
mv $2.txt /home/gustav/bash-script/$1


