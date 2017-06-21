#!/bin/bash

texhome=$(kpsewhich -var-value=TEXMFHOME)
mkdir -p $texhome/tex/latex/local/

if ! [ -r "$texhome/tex/latex/local/psboxit.sty" ]; then
	wget https://www.ctan.org/tex-archive/macros/latex209/contrib/misc/psboxit.sty -O $texhome/tex/latex/local/psboxit.sty
fi

if ! [ -r "$texhome/tex/latex/local/avm.sty" ]; then
	wget http://nlp.stanford.edu/manning/tex/avm.sty -O $texhome/tex/latex/local/avm.sty
fi

texhash
