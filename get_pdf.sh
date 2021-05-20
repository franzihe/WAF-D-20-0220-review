#!/usr/bin/env bash
latexdiff --append-context2cmd="abstract" revision_V1.tex revision_V2.tex --graphics-markup=1 > diff.tex

pdflatex diff_V1.tex diff_V1.pdf
bibtex diff
pdflatex diff.tex diff.pdf

