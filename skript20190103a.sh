#!/bin/bash

find /etc -mtime -2 -type f | xargs tar cpvf modified-only.tar$date+"%m-%d-%Y"


