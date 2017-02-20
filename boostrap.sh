#!/bin/bash

texhome=$(kpsewhich -var-value=TEXMFHOME)
mkdir -p $texhome/tex/latex/local/

if ! [ -r "$texhome/tex/latex/local/psboxit.sty" ]; then
	wget https://www.ctan.org/tex-archive/macros/latex209/contrib/misc/psboxit.sty -O $texhome/tex/latex/local/psboxit.sty
fi

if ! [ -r "$texhome/tex/latex/local/avm.sty" ]; then
	wget http://nlp.stanford.edu/manning/tex/avm.sty -O $texhome/tex/latex/local/avm.sty
fi

if ! [ -r "$texhome/tex/latex/local/noweb.sty" ]; then
	wget http://mirrors.ctan.org/obsolete/web/noweb/src/tex/noweb.sty -O $texhome/tex/latex/local/noweb.sty
fi

if ! [ -r "$texhome/tex/latex/local/doublespace.sty" ]; then
	wget https://ctan.org/tex-archive/obsolete/macros/latex209/contrib/misc/doublespace.sty -O $texhome/tex/latex/local/doublespace.sty
fi

texhash
