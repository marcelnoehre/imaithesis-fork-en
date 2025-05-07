#!/bin/bash
####################################################################
# This file can be freely copied, modified and distributed.

echo 'Converts user input to acronym stdout.'

# read short form
echo "Enter short form:"
read shortform

# read long form
echo "Enter long form:"
read longform

echo '\newacronym{'${shortform,,}'}  {'${shortform}'}  {'${longform}'}'
