all: paper.rst
	rst2latex \
    --documentoptions='10pt,paper=letter,DIV=20,headinclude=false,footinclude=false,twoside=false,twocolumn=true' \
    --literal-block-env=lstlisting paper.rst paper.tex 
	pdflatex paper.tex
