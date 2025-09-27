.PHONY: all clean

all: lana_gasparyan.pdf

lana_gasparyan.pdf: resume.tex
	latexmk -pdf -jobname=lana_gasparyan resume.tex

clean:
	latexmk -C -jobname=lana_gasparyan
	rm -f *.pdf
	rm -f *.aux *.log *.out *.fls *.fdb_latexmk *.synctex.gz 