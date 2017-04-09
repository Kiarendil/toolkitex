#!/bin/bash


__help() {
	echo "Usage: $0 <project name> [-g|--git]"
	exit 1
}

__open() {
	if [ "$(uname)" == "Linux" ] ; then
		xdg-open "$PROJECT.tex"
	elif [ "$(uname)" == "Darwin" ] ; then
		open "$PROJECT.tex"
	else
		echo "Unsupported uname"
	fi
}


# Parse arguments #############################################################

if [[ $# -eq 0 ]] ; then
	__help
fi

while [[ $# -gt 0 ]] ; do
case "$1" in
	-h|--help) __help ;;
	-g|--git)  INIT_GIT=TRUE ;;
	*) 		   PROJECT="$1" ;;
esac; shift; done

if [[ ! -n $PROJECT ]] ; then
	__help
fi


# Already exists ##############################################################

if [ -d "$PROJECT" ] ; then
	echo "Project $PROJECT already exists."
	cd "$PROJECT"
	__open
	exit 1
else


# Create new project ##########################################################

mkdir "$PROJECT"
cd "$PROJECT"
mkdir img

cat > "$PROJECT.tex" <<__MAIN_TEX__
\\documentclass{urticle}
\\begin{document}

\\end{document}
__MAIN_TEX__


# Initialize git repository ###################################################

if [[ -n $INIT_GIT ]] ; then
	cat > .gitignore <<__GITIGNORE__
# Ignore everything
*
!*/

# But not these files...
!.gitignore
!*.tex
!*.eps
!*.png

# ...even if they are in subdirectories
!*/

# Though definitely these
.DS_Store
__GITIGNORE__
	git init
	git add -A
	git commit -m "Initial commit (toolkitex)"
fi


# Open the project anyway #####################################################
fi; __open
