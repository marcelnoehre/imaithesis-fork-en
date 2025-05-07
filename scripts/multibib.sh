#!/bin/bash
####################################################################
# This file can be freely copied, modified and distributed.

for file in *.aux ; do
  bibtex `basename $file .aux`
done
