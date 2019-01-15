#!/bin/bash

PS3='Please enter your choice: '
options=("ls" "pwd" "ls -l" "ps -fe")
select opt in "${options[@]}"
do
    case $opt in
        "ls")
            echo "you chose choice $REPLY wich is $opt"
	    ls
            ;;
        "pwd")
            echo "you chose choice $REPLY which is $opt"
	    pwd
            ;;
        "ls -l")
            echo "you chose choice $REPLY which is $opt"
	    ls -l
            ;;
        "ps -fe")
            echo "you chose choice $REPLY which is $opt"
	    ps -fe
            ;;
        *) echo "invalid option $REPLY";;
    esac
done

