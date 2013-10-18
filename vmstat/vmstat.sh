#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for i in $@
do
    echo "graphing $i"
    gnuplot -e "filename='$i';output='$i.pdf'" $DIR/vmstat.plg
done
