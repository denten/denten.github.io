MDSOURCES = 01-header.md  03-affiliation.md  05-publications.md  07-teaching.md  02-bio.md     04-projects.md     06-talks.md         08-service.md
TEMPLATEFILES = template.tex style.tex structure.tex


CV.md: ${MDSOURCES}
	cat [[:digit:]]*.md > CV.md

CV.tex: CV.md ${TEMPLATEFILES}
	pandoc -S -s -H style.tex --template=template.tex  CV.md -o CV.tex

pdf: CV.tex
	pdflatex CV.tex
	pdflatex CV.tex

html: CV.tex
	htlatex CV.tex

