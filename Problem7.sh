#!/bin/bash
if [ -z "$1" ]; then
    echo "Usage: $0 url."
    exit 1
fi
url=$1
wget -O download.html $url 
while read -n 1 c
do
   echo "$c"
done < "download.html" | grep '[[:alpha:]]' | sort | uniq -c | sort -nr
