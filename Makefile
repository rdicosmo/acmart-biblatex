TEXS = $(wildcard main-acm*.tex)
PDFS = $(patsubst %.tex,%.pdf,$(TEXS))
PDFLATEX = texfot pdflatex

all: $(PDFS) main-bibtex.pdf

main-bibtex.pdf: main-bibtex.tex
	$(PDFLATEX) $<
	bibtex main-bibtex
	$(PDFLATEX) $<
	$(PDFLATEX) $<

%.pdf: %.tex
	$(PDFLATEX) $<
	biber $*
	$(PDFLATEX) $<
	$(PDFLATEX) $<

clean:
	echo "rm -f main{-acm*,-bibtex}.{bbl,blg,aux,log,out,bcf,run.xml,pdf} comment.cut *~" | bash
