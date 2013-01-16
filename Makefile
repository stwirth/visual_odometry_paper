datafiles:=$(wildcard data/*.txt)
plotscripts:=$(wildcard plots/*.gp)
eps:=$(wildcard data/*.eps)

all: ploteps paper.txt
	rst2latex \
    --documentclass='IEEEtran' --exit-status=3 paper.txt paper.tex && \
    sed -i -e 's/begin{longtable/begin{tabular/g' paper.tex && \
    sed -i -e 's/end{longtable/end{tabular/g' paper.tex && \
    sed -i -e 's/textwidth/linewidth/g' paper.tex && \
	pdflatex paper && \
	bibtex paper && \
	pdflatex paper && \
	pdflatex paper 
	./texcount.pl -brief -incbib paper.tex 

ploteps: $(datafiles) $(plotscripts)
	for d in $(datafiles) ; do \
	  for p in $(plotscripts) ; do \
	    FILE=$$d gnuplot $$p ; \
	  done ; \
	done
	for f in $(shell ls data/*.eps) ; do \
	  epstopdf $$f ; \
	done

.PHONY: clean
clean:
	rm -f paper.blg paper.bbl paper.aux paper.log paper.out paper.tex data/*.eps data/*.pdf
