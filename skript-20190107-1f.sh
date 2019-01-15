#!/bin/bash

COUNT=$1
while [ $COUNT -gt 0 ]; do
        echo $COUNT
        let COUNT=COUNT-1
done
echo "Elvis has left the building"

