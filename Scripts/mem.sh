#!/bin/bash

#free -m | awk '/^Mem/ { print $3/$2*100 }' | cut -c 1-2
free -m | awk '/^Mem/ { print $3/$2*100 }' | sed -e 's/^\(.\{1,3\}\)\..*$/\1%/' 
