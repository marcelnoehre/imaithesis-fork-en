#!/bin/bash
####################################################################
# This file can be freely copied, modified and distributed.

echo 'Makes pdf from thesis files.'

pdflatex thesis.tex
pdflatex thesis.tex

# from: multibib.sh
for file in *.aux ; do
	  bibtex `basename $file .aux`
done

makeglossaries thesis

pdflatex thesis.tex
pdflatex thesis.tex
