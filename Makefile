SRC = $(wildcard *.md)

PDFS=$(SRC:.md=.pdf)
HTML=$(SRC:.md=.html)

#PYDOC_OPTIONS=
PYDOC_OPTIONS=--section-divs
all:    clean $(PDFS) $(HTML)

pdf:   clean $(PDFS)
html:  clean $(HTML)

%.html: %.md
	python resume.py html < $< | pandoc -t html -c resume.css -o $@ $(PYDOC_OPTIONS)

%.pdf:  %.md
	python resume.py tex < $< | pandoc --template=custom.latex -H header.tex -o $@ $(PYDOC_OPTIONS)

clean:
	rm -f *.html *.pdf

