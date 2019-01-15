#!/bin/bash

for file in *.txt
do
  mv "$file" "${file/.txt/.txt.old}"
done

