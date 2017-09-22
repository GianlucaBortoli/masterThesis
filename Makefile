PROJECT=thesis
TEX=pdflatex
BIBTEX=bibtex
BUILDTEX=$(TEX) $(PROJECT).tex

all:
	$(BUILDTEX)
	$(BIBTEX) $(PROJECT)
	$(BUILDTEX)
	$(BUILDTEX)

clean:
	rm -f *.swp *.aux *.bbl *.blg *.log *.out *.toc *.pdf *~
