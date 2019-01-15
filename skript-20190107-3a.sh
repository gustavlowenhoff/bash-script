#!/bin/bash

x=red

echo “enter your favorite color : ”

read y

z=`expr $y = $x`

if test $z -eq 1
then
	echo “your favorite color is : $x”
else
while test $z -eq 0
do
	echo “ your answer is wrong”
sleep 3
clear

echo “enter your favorite color :”

read a

z=`expr $y = $x`

done

echo “your favorite color is : $x”

fi
