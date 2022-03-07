PDFLATEX = texfot pdflatex

all:
	pdflatex samples.ins
	for texfile in *.tex; do \
		pdffile=$${texfile%.tex}.pdf; \
		${MAKE} $$pdffile; \
	done

sample-acmsmall-biblatex.pdf: sample-acmsmall-biblatex.tex
	$(PDFLATEX) $<
	biber sample-acmsmall-biblatex
	$(PDFLATEX) $<
	$(PDFLATEX) $<

sample-sigconf-biblatex.pdf: sample-sigconf-biblatex.tex
	$(PDFLATEX) $<
	biber sample-sigconf-biblatex
	$(PDFLATEX) $<
	$(PDFLATEX) $<

%.pdf: %.tex 
	$(PDFLATEX) $<
	bibtex $*
	$(PDFLATEX) $<
	$(PDFLATEX) $<

clean:
	echo "rm -f samples.log sample-*.{bbl,blg,aux,log,out,bcf,run.xml,pdf} comment.cut *~" | bash

distclean:
	echo "rm -f samples.log sample-*.{bbl,blg,aux,log,out,bcf,run.xml,pdf,tex} comment.cut *~" | bash
