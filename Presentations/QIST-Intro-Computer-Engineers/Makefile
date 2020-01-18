src_tex = $(wildcard *.tex)
doc_pdf = $(src_tex:.tex=.pdf)
units_tex = ../units-QIST/$(wildcard *.tex)

.PHONY: all
all: ${doc_pdf}
	cp *.pdf ../../docLibrary

${doc_pdf}: ${src_tex} ${units_tex}
	@echo "Creating print version of presentation ..."
	latexmk -pdflatex='pdflatex %O -interaction=nonstopmode -synctex=1 "\PassOptionsToClass{handout}{beamer}\input{%S}"' $(basename $@)
	@echo "Renaming print version to $(basename $@)_print.pdf"
	cp ${doc_pdf} $(basename $@)_print.pdf
	@echo "Creating electronic version of presentation ..."
	latexmk -g $(basename $@)


.PHONY: ${units_tex}
${units_tex}:

.PHONY: clean realclean
clean: ${src_tex}
	latexmk -c $(basename $^)

realclean: ${src_tex}
	latexmk -C $(basename $^)
	rm $(basename $^)_print.pdf

