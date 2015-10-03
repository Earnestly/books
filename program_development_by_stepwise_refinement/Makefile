PDFLATEX := xelatex
PDFLATEX_FLAGS := -interaction nonstopmode -file-line-error 

LATEXMK := latexmk
LATEXMK_FLAGS := -pdflatex="$(PDFLATEX) $(PDFLATEX_FLAGS)" -pdf -dvi- -ps-

COMPILE.tex := $(LATEXMK) $(LATEXMK_FLAGS)

%: %.tex
	$(COMPILE.tex) $<

VPATH := src

all: program_development_by_stepwise_refinement

clean:
	$(RM) *.pdf *.aux *.bcf *.log *.blg *.fls *.out *.toc *.fdb_latexmk *.bbl *.xml
