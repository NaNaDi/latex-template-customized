MAIN = $(file)
CC=latex
CCFAST=pdflatex
LD=dvipdf
DVIPS=dvips
PSPDF=ps2pdf

all: build clean

build:
	$(CC) $(MAIN).tex && $(CC) $(MAIN).tex && $(DVIPS) $(MAIN).dvi && $(PSPDF) $(MAIN).ps

fast: fast-build clean
fast-build:
	$(CC) $(MAIN).tex && $(DVIPS) $(MAIN).dvi && $(PSPDF) $(MAIN).ps

clean:
	rm -f *.log *.toc *.aux *.nav *.out *.blg *.snm *.vrb *.fdb_latexmk *.synctex.gz *.dvi *.ps