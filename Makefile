TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
DOT = dot -Tpng

.PHONY: all view

all : altermann.png altermann.pdf

view :
	xdg-open altermann.pdf

clean :
	rm -f altermann.aux altermann.fdb_latexmk altermann.fls altermann.lof  altermann.log  altermann.lol  altermann.out  altermann.pdf  altermann.png altermann.pyg altermann.synctex.gz

altermann.png : altermann.dot
	$(DOT) altermann.dot > altermann.png

altermann.pdf : altermann.tex
	$(TEX) altermann.tex ; $(TEX) altermann.tex

