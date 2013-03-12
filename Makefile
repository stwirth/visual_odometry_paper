datafiles:=$(wildcard data/*.txt)
plotscripts:=$(wildcard plots/*.gp)

$(info Datafiles   : $(datafiles))
$(info Plotscripts : $(plotscripts))

datafiles_names:=$(notdir $(datafiles:.txt=))
plotscripts_names:=$(notdir $(plotscripts:.gp=))
$(info Datafiles names   : $(datafiles_names))
$(info Plotscripts names   : $(plotscripts_names))

generated_eps:=$(foreach d,$(datafiles_names),$(foreach p, $(plotscripts_names),aux/$d-$p.eps))
generated_pdfs:=$(generated_eps:.eps=.pdf)

# generated graphs from data and gnuplot files
define EPSGRAPH
$(1): $(2) $(3)
	OUTFILE=$(1) DATAFILE=$(2) gnuplot $(3)
endef
$(foreach d,$(datafiles),$(foreach p, $(plotscripts), $(eval $(call EPSGRAPH,aux/$(notdir $(d:.txt=))-$(notdir $(p:.gp=)).eps,$(d),$(p)))))

%.pdf: %.eps
	epstopdf $<

.PHONY: aux
aux:
	mkdir -p aux

.PHONY: all
.DEFAULT_GOAL:=all
all: aux $(generated_pdfs) paper.tex
	#rst2latex \
    #--exit-status=3 paper.txt paper.tex && \
    sed -i -e 's/begin{longtable/begin{tabular/g' paper.tex && \
    sed -i -e 's/end{longtable/end{tabular/g' paper.tex && \
    sed -i -e 's/textwidth/linewidth/g' paper.tex && \
	pdflatex paper && \
	bibtex paper && \
	pdflatex paper && \
	pdflatex paper 
	./texcount.pl -brief -incbib paper.tex 

.PHONY: clean
clean:
	rm -rf paper.tex-e paper.blg paper.bbl paper.aux paper.log paper.out paper.tex aux/

