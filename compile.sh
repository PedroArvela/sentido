#!/bin/bash

neato -Tpdf graphics/small_world.gv > graphics/small_world.pdf
latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" main.tex
