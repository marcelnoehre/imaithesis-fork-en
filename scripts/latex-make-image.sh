#!/bin/bash
####################################################################
# This file can be freely copied, modified and distributed.

echo 'Converts user input to image stdout.'

# read filename
echo "Enter filename figures/... :"
read filename

# read caption
echo "Enter caption:"
read caption

echo ''
echo '\begin{figure}[htb]'
echo '\begin{center}'
echo '\includegraphics[width=0.6\textwidth]{figures/'${filename}'}'
echo '\end{center}'
echo '\caption{'${caption}'}'
echo '\label{fig:'${filename}'}'
echo '\end{figure}'
echo ''

