#!/bin/bash

# Declare input argument as a variable
INPUTFILE=resume.md
OUTPUTNAME=$INPUTFILE

# Convert markdown to HTML
pandoc resume.md -o resume.html
echo "Converted MD to HTML"
# Convert markdown to DOCX
pandoc resume.md -o resume.docx
echo "Converted MD to DOCX"
# Convert markdown to ODT
pandoc resume.md -o resume.odt
echo "Converted MD to ODT"
# Convert markdown to PDF
pandoc resume.md -o resume.pdf --latex-engine=xelatex --template=my.latex 
echo "Converted MD to PDF"
# Convert markdown to RTF
pandoc resume.md -o resume.rtf
echo "Converted MD to RTF"
# Make the command line read "Converted INPUT-FILENAME to HTML, DOCX, ODT, PDF
echo "Converted MD to HTML, DOCX, ODT, PDF, RTF"