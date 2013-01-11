all: paper.rst
	rst2latex \
    --documentclass='IEEEtran' --exit-status=3 paper.rst paper.tex && \
    sed -i 's/begin{longtable/begin{tabular/g' paper.tex && \
    sed -i 's/end{longtable/end{tabular/g' paper.tex && \
	pdflatex paper && \
	bibtex paper && \
	pdflatex paper
	wc -w paper.rst
