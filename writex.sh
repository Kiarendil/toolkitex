#!/bin/bash

if [ "$1" == "-h" ] || [ "$1" == "--help" ] || [ $# -eq 0 ] ; then
  echo "Usage: $0 [filename]"
  exit 0
fi

mkdir -p "$1" && cd "$1"
mkdir -p "img/"

echo "\\documentclass{urticle}
\\inputpaths{}

\\begin{document}


\\end{document}" \
  > "$1.tex"
texmaker "$1.tex" &

echo "# Ignore everything
*
!*/

# But not these files...
!.gitignore
!*.tex
!*.png
!*.eps

# ...even if they are in subdirectories
!*/" \
  > .gitignore
git init
git add -A
git commit -m "Initial commit (toolkitex)"
