#!/bin/bash

cd usr/share/

find -type f -size +1M | wc -l

if [ wc >= 10-99 ] echo "Warning, more then 10 files"
if [ wc >= 100-999 ] echo "Warning, more then 100 files"
if [ wc >= 1000-9999 ] echo "Warning, more then 1000 files"
if [ wc >= 10000 ] echo "Warning, more then 10000 files"

PS3="Do you want to compress the files? "
select option in yes no
do
    case $option in
        yes)
	    tar -cvf arkiv.tar.gz /home/arkiv/
            echo "The files will be compressed";;
        no)
            break;;
     esac
done

if [ -d /home/arkiv ]; then
	echo "The directory already exists"
fi

