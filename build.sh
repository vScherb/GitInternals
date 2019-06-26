#/bin/bash

rm -rf ./bin && \
mkdir ./bin

mkdir ./bin/169 && \
    pdflatex -output-directory="./bin/169" --jobname="GitInternals" slides169.tex && \
    pdflatex --output-directory="./bin/169" --jobname="GitInternals" slides169.tex

if [ -n "$1" -a "$1" -eq "43" ]; then
    mkdir ./bin/43 && \
        pdflatex -output-directory="./bin/43/" -jobname="GitInternals" slides43.tex && \
        pdflatex -output-directory="./bin/43/" -jobname="GitInternals" slides43.tex
fi

