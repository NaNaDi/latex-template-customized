MAIN = $(file)
CC=latex
CCFAST=pdflatex
LD=dvipdf
DVIPS=dvips
PSPDF=ps2pdf
BIB=bibtex

all: main-build clean

build:
	$(CCFAST) $(MAIN).tex && $(CCFAST) $(MAIN).tex && $(DVIPS) $(MAIN).dvi && $(PSPDF) $(MAIN).ps

fast: fast-build clean
fast-build:
	$(CCFAST) $(MAIN).tex && $(DVIPS) $(MAIN).dvi && $(PSPDF) $(MAIN).ps

main-build:
	$(CCFAST) $(MAIN).tex && $(BIB) $(MAIN) && $(CCFAST) $(MAIN).tex

clean:
	rm -f *.log *.toc *.aux *.nav *.out *.blg *.snm *.vrb *.fdb_latexmk *.synctex.gz *.dvi *.ps
