all: paper.rst
	rst2latex \
    --documentclass='IEEEtran' --exit-status=3 paper.rst paper.tex && \
    sed -i 's/begin{longtable/begin{tabular/g' paper.tex && \
    sed -i 's/end{longtable/end{tabular/g' paper.tex && \
    sed -i 's/textwidth/linewidth/g' paper.tex && \
	pdflatex paper && \
	bibtex paper && \
	pdflatex paper && \
	pdflatex paper 
	./texcount.pl -brief -incbib paper.tex 

clean:
	rm -f paper.blg paper.bbl paper.aux paper.log paper.out paper.tex
