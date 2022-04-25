TEX = pdflatex -shell-escape -interaction=nonstopmode -file-line-error
DOT = dot -Tpng
SRC = altermann

.PHONY: all view

all : clean $(SRC).pdf

view :
	xdg-open $(SRC).pdf

clean :
	rm -f $(SRC).aux $(SRC).fdb_latexmk $(SRC).fls $(SRC).lof  $(SRC).log  $(SRC).lol  $(SRC).out  $(SRC).pdf  $(SRC).png $(SRC).pyg $(SRC).synctex.gz

altermann.png : $(SRC).dot
	$(DOT) $(SRC).dot > $(SRC).png

altermann.pdf : $(SRC).tex $(SRC).png coverart.jpg
	$(TEX) $(SRC).tex ; $(TEX) $(SRC).tex

