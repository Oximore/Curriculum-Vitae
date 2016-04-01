TEX2PDF		=pdflatex
TEX2PDF_OPTS	=-halt-on-error
TEX		=latex
DVI2PS		=dvips

###

BASENAME        =cv 
#Curriculum-Vitae-Benjamin-Lux 
PDF             :=$(BASENAME).pdf 

###

.PHONY: FORCE 
all : cv.pdf

cv.pdf : FORCE
cv.dvi : FORCE
cv.ps  : FORCE

###
# %.dvi : %.tex is already defined by GNU/Make
#
%.pdf : %.tex
	$(TEX2PDF) $(TEX2PDF_OPTS) $< && $(TEX2PDF) $<


%.ps : %.dvi
	$(DVI2PS) $<


clean:
	$(RM) *~ *.pdf *.dvi *.ps *.aux *.nav *.toc *.log *.snm *.out *.vrb


