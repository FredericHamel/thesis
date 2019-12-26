
all: pdf

pdf: thesis.tex $(wildcard src/%.tex)
	TEXINPUTS='src:' latexmk -pdf -output-directory=doc -halt-on-error thesis.tex

part: part.tex
	TEXINPUTS='src:' latexmk -pdf -output-directory=doc -halt-on-error part.tex

clean:
	TEXINPUTS='src:' latexmk -c -output-directory=doc
