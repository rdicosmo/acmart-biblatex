TEXS = $(wildcard main-acm*.tex)
PDFS = $(patsubst %.tex,%.pdf,$(TEXS))

all: $(PDFS) main-bibtex.pdf

main-bibtex.pdf: main-bibtex.tex
	pdflatex $<
	bibtex main-bibtex
	pdflatex $<
	pdflatex $<

%.pdf: %.tex
	pdflatex $<
	biber $*
	pdflatex $<
	pdflatex $<

clean:
	echo "rm -f main{-acm*,-bibtex}.{bbl,blg,aux,log,out,bcf,run.xml} comment.cut *~" | bash
