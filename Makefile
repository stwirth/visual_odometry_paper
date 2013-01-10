all: paper.rst
	rst2latex \
    --documentoptions='twocolumn=true' --exit-status=3 paper.rst paper.tex && \
	pdflatex paper && \
	bibtex paper && \
	pdflatex paper
