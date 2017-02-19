#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ $# -eq 0 ] ; then
  echo "Usage: $0 [filename]"
  exit 0
fi

echo "\\documentclass{urticle}
\\inputpaths{}

\\begin{document}


\\end{document}" > "$1.tex"
mkdir -p img/
texmaker "$1.tex" &
