src_tex = $(wildcard *.tex)
doc_pdf = $(src_tex:.tex=.pdf)

.PHONY: all
all: ${doc_pdf}

${doc_pdf}: ${src_tex}
	latexmk $(basename $@)

#.PHONY: clean realclean
#clean: ${src_tex}
#	latexmk -c $(basename $^)
#
#realclean: ${src_tex}
#	latexmk -C $(basename $^)
