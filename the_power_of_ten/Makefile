include ../common.mk

VPATH := src

all: the_powers_of_ten

clean:
	$(LATEXMK) -c -bibtex the_powers_of_ten.pdf
	$(RM) *.run.xml

.PHONY: all clean
