#!/bin/bash

function check()

{

expr $1 + 0

if [ $? -eq 0 ]
then
	echo “its a integer”
else
	echo “its not a integer”
fi

}

check

