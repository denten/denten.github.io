# Deterministic CV build (Markdown -> Pandoc -> LaTeX -> PDF)

# Files to include (sorted for stable order)
MDSOURCES := $(sort $(wildcard [0-9][0-9]-*.md))
TEMPLATEFILES := template.tex style.tex structure.tex

# Output + temp dirs
TEMPDIR := temp
OUTPUTDIR := imprints
TARGET := denten-CV-$(shell date +%F)

.PHONY: clean build_pdf pdf html
.DELETE_ON_ERROR:

build_pdf: clean
	mkdir -p $(TEMPDIR)
	cp $(MDSOURCES) $(TEMPLATEFILES) Makefile $(TEMPDIR)/
	$(MAKE) -C $(TEMPDIR) pdf
	mkdir -p $(OUTPUTDIR)
	mv $(TEMPDIR)/CV.pdf $(OUTPUTDIR)/$(TARGET).pdf

CV.md: $(MDSOURCES)
	cat $(MDSOURCES) > $@

CV.tex: CV.md $(TEMPLATEFILES)
	pandoc -s -H style.tex --template=template.tex CV.md -o CV.tex

pdf: CV.tex
	pdflatex -halt-on-error -interaction=nonstopmode CV.tex
	pdflatex -halt-on-error -interaction=nonstopmode CV.tex

html: CV.tex
	htlatex CV.tex

clean:
	rm -rf $(TEMPDIR)
	rm -f CV.md CV.tex CV.aux CV.log CV.out CV.toc

