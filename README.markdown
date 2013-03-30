This is a custom fork of mwhite's [resume](http://github.com/mwhite/resume) repository.
It uses pandoc to generate the document based on customized templates.  


Dependencies
------------

* Pandoc >= 1.9 (you can adjust the Makefile to use an earlier version -- the
  arguments format changed)
* Python
* A Tex installation with pdflatex and the Tex Gyre Pagella font, and some
  packages needed by pandoc.  On Ubuntu you can get this by installing
  `texlive`, `texlive-latex-extra`, and `tex-gyre`.

Usage
-----

Simply run `make` to generate PDF and HTML versions of each .md file in the
directory.

In order to enable visually appealing display of contact information, the
Markdown is passed through a Python script that looks for contact details
beginning on the fourth line and moves them into a right-aligned, zero-height
box at the top of the document.  Lines with bullets (•) will be treated as
separate contact lines in the output.
