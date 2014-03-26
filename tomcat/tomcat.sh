#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
GDFONTPATH=/Library/Fonts/Microsoft

for i in $@
do
    echo "graphing $i"
    gnuplot -e "filename='$i';output='$i.png'" $DIR/tomcat.plg
done
