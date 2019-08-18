MAKEFLAGS = -r

# This common makefile is (usually) included via a proper Makefile in a
# sub-directory.  We determine the directory needed to find our scripts
# relatively from this file.

# For example: "include ../../common.mk" will assign "../../" to MKPATH.
MKPATH := $(dir $(lastword $(MAKEFILE_LIST)))

PDFLATEX := xelatex
PDFLATEX_FLAGS += -interaction nonstopmode -file-line-error

LATEXMK := latexmk
LATEXMK_FLAGS += -pdflatex="$(PDFLATEX) $(PDFLATEX_FLAGS)" -pdf -dvi- -ps-

COMPILE.tex := $(LATEXMK) $(LATEXMK_FLAGS)

%: %.tex
	$(COMPILE.tex) $<
