#!/bin/bash

neato -Tpdf graphics/small-world.gv > graphics/small-world.pdf
latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" main.tex
