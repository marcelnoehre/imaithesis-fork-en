#!/bin/bash
####################################################################
# This file can be freely copied, modified and distributed.

echo 'Converts user input to bibtex websource stdout.'

# read url
echo "Enter URL:"
read url

# read shortform
echo "Enter Shortform:"
read shortform

# read year
echo "Enter Year:"
read year

# get title from url
# see: http://unix.stackexchange.com/questions/103252/how-do-i-get-a-websites-title-using-command-line
title=`wget -qO- ${url} | perl -l -0777 -ne 'print $1 if /<title.*?>\s*(.*?)\s*<\/title/si'`

# get todays date
date=`date +%d.%m.%Y`

echo ''
echo '@Misc{web:'${shortform,,}','
echo 'key = {Weblink: '${shortform}'},'
echo 'title = {'${title}'},'
echo 'note = {{Stand: '${date}'}},'
echo 'url= {'${url}'},'
echo 'year = {'${year}'}'
echo '}'
echo ''
echo '\citeweb{web:'${shortform,,}'}'
echo ''

