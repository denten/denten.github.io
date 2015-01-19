# The following 2 variables define the files on which the target (the CV) depends.
# If one of this files is changed make will execute the necesary commands.

# cat [[:digit:]]*.md > temp.md

MDSOURCES = *.md
# MDSOURCES = 01-header.md 03-affiliation.md 05-publications.md 07-teaching.md 04-projects.md 06-talks.md 08-service.md
TEMPLATEFILES = template.tex style.tex structure.tex

# Here we define the name of the output and the temporal directories
TEMPDIR = temp
OUTPUTDIR = imprints

# Final name of the pdf CV.
TARGET = denten-CV-`date +%Y-%m-%d)`

# This rules has all the needed command to create the CV.
build_pdf:
#       make the temporary dir and copy files ther
	mkdir -p ${TEMPDIR}
	cp ${MDSOURCES} ${TEMPLATEFILES} Makefile ${TEMPDIR}
#       Execute the rules in the temp directory ( -C option of make)
	make -C ${TEMPDIR} pdf
#       make the output directory and mv the CV there with the new name
	mkdir -p ${OUTPUTDIR}
	mv ${TEMPDIR}/CV.pdf ${OUTPUTDIR}/${TARGET}.pdf

# Rule the build the md file. It will be executed only if depending md files are modfied.
CV.md: ${MDSOURCES}
	cat [[:digit:]]*.md > CV.md

# Rule to create the latex files. It will be executed only if the global md file or the
# template files are modifyed
CV.tex: CV.md ${TEMPLATEFILES}
	pandoc -S -s -H style.tex --template=template.tex  CV.md -o CV.tex

# The rule to build the pdf using pdflatex.
# It is run twice to typeset correctly any label/reference (they are not use in
# the CV at the moment, but just in case)
pdf: CV.tex
	pdflatex CV.tex
	pdflatex CV.tex

clean:
	rm -rf ${TEMPDIR}

# build the html
html: CV.tex
	htlatex CV.tex

# This says that those rules are not files to be generated.
.PHONY: build_pdf clean pdf html
