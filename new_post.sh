#!/usr/local/bin/bash
# Need Bash 4.x (brew install bash)
# set -x
DATE=`date +"%Y-%m-%d"`
YEAR=`date +"%Y"`
declare -A hashmap
hashmap=(["d01"]="one" ["d02"]="two" ["d03"]="three" ["d04"]="four" ["d05"]="five" ["d06"]="six" ["d07"]="seven" ["d08"]="eight" ["d09"]="nine" ["d10"]="ten" ["d11"]="eleven" ["d12"]="twelve" ["d13"]="thirteen" ["d14"]="fourteen" ["d15"]="fifteen" ["d16"]="sixteen" ["d17"]="seventeen" ["d18"]="eighteen" ["d19"]="nineteen" ["d20"]="twenty" ["d21"]="twenty-one" ["d22"]="twenty-two" ["d23"]="twenty-three" ["d24"]="twenty-four" ["d25"]="twenty-five" ["d26"]="twenty-six" ["d27"]="twenty-seven" ["d28"]="twenty-eight" ["d29"]="twenty-nine" ["d30"]="thirty" ["d31"]="thirty-one")

NUMBER=`date +"%d"`
INDEX="d$NUMBER"
DAYNAME="${hashmap[$INDEX]}"
NAME="$DATE-day-$DAYNAME-title.md"
FILE="_posts/$NAME"
touch $FILE
cat > $FILE <<- EOM
---
layout: post
title:  "Day ${DAYNAME^} - <TITLE>"
date:   $DATE 11:00:00 +0100
categories: $YEAR
---
EOM
