# change the below to fit your own files:
BUILDDIR=build
FILENAME=example
BIBLIOGRAPHY=bibliography.bib
BIBSTYLE=examplebibstyle.csl    # see and download at https://www.zotero.org/styles

# Latex has the --biblatex option to properly convert references. You can also use --natbib, check pandoc for explenation 
latex:
	mkdir $(BUILDDIR) -p  # Creates the BUILDDIR if it doesn't already exist.
	pandoc $(FILENAME).md \
	--filter pandoc-crossref \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=$(BIBSTYLE) \
	--biblatex \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME).tex
latexfull:
	mkdir $(BUILDDIR) -p  # Creates the BUILDDIR if it doesn't already exist.
	pandoc $(FILENAME).md \
	--filter pandoc-crossref \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=$(BIBSTYLE) \
	--biblatex \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME)_so.tex \
	--standalone
pdf:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--filter pandoc-crossref \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars+raw_tex \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=$(BIBSTYLE) \
	--to=latex \
	--output=$(BUILDDIR)/$(FILENAME).pdf
odt:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--filter pandoc-crossref \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=$(BIBSTYLE) \
	--to=odt \
	--output=$(BUILDDIR)/$(FILENAME).odt
docx:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--filter pandoc-crossref \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=$(BIBSTYLE) \
	--to=docx \
	--output=$(BUILDDIR)/$(FILENAME).docx
html:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--filter pandoc-crossref \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=$(BIBSTYLE) \
	--to=html5 \
	--output=$(BUILDDIR)/$(FILENAME).html \
	--mathjax \
	--standalone
epub:
	mkdir $(BUILDDIR) -p
	pandoc $(FILENAME).md \
	--filter pandoc-crossref \
	--citeproc \
	--from=markdown+tex_math_single_backslash+tex_math_dollars \
	--bibliography=$(BIBLIOGRAPHY) \
	--csl=$(BIBSTYLE) \
	--to=epub \
	--mathjax \
	--output=$(BUILDDIR)/$(FILENAME).epub \
	# --epub-cover-image=<cover-image> \
	#--toc