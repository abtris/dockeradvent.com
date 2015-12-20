#!/usr/local/bin/bash
# set -x
YEAR=`date +"%Y"`
POSTS=($(grep title: _posts/$YEAR* | cut -d "/" -f 2 | cut -d "." -f 1))
IFS=$'\n';
TITLES=($(grep title: _posts/$YEAR* | cut -d "/" -f 2 | cut -d "." -f 2 | cut -d "\"" -f2| grep Day))

for t in $(seq ${#POSTS[*]}); do
echo "- [${TITLES[$t-1]}](http://www.dockeradvent.com/${POSTS[$t-1]})"
done
