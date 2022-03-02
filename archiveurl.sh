#!/bin/bash

# A small script to automatically archive webpages liked to in webpages

files=$(ls -1 | grep .html)
url=""

for file in $files
do
	url=$url$(grep --only-matching "https://[a-zA-Z0-9.?=%:_-/]*" $file)
done

url=$(echo -e $url | tr " " '\n' | sort -u)

for u in $url
do
	echo Archiving "$u"
	curl -I "http://web.archive.org/save/"$u
	sleep 2
done 
