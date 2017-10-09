#!/bin/bash

neato -Tpdf graphics/small_world.gv > graphics/small_world.pdf
sfdp -Tpdf graphics/vingar_VERB_npmi_0.4_chineseWhispers.gv > graphics/vingar_VERB_npmi_0_4_chineseWhispers.pdf
latexmk -pdf -pdflatex="pdflatex -interaction=nonstopmode" main.tex
