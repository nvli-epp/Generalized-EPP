#!/bin/bash

SAVEIFS=$IFS
IFS=$(echo -en "\n\b")
for f in $(find ./ -type f)
do
    basename=$(basename $f)
    extension=${basename##*.}
    filename=${basename%.*}
    rootdir=$(dirname $f)

    echo $rootdir,$basename,$extension
done
IFS=$SAVEIFS
