#!/bin/bash
FILES=$(ls $1)
echo $FILES $1
for f in $FILES; do
    echo "Processing $f file..."
    bytes=$(wc -c $f | awk '{print $1}' | awk '{gsub("\"", "", $1); print}')
    #echo $bytes
    if [ $bytes -eq 1000 ]
    then
        wc -m $f
    elif [ $bytes -gt 1000 ]
    then
        echo "Skipping ${f}."
    fi
done
