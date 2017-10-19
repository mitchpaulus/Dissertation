#!/bin/bash

echo "chapter number=$1"
echo "file to run on=$2"

# get lines corresponding to the beginning of a figure or insertion of a
# figure from another file
output=$(grep -P '\\begin{figure}|includegraphics' $2)

i=0
echo "$output" | while read -r line; do

# increment the counter if the line is a figure
    if [[ "$line" =~ fig ]]; then
        i=$((i+1))
    else
        filename=$(echo "$line" | grep -o -P '\{\K.*(?=\})')
        echo "Figure $1.$i=$(dirname $filename)"
    fi

    #echo "$line"
        #if [["$line" =~ figure]]; then
            #i=$((i+1))
            #echo "$i"
        #else
            #echo "not a figure"
        #fi
done 



#echo "$output"
