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
	exit 0
}


# Parse arguments #############################################################

if [[ $# -eq 0 ]] ; then
	__help
fi

while [[ $# -gt 0 ]] ; do
case "$1" in
	-h|--help) __help ;;
	-g|--git)  INIT_GIT=TRUE ;;
	*)
		if [[ ! -n $PROJECT ]] ; then
			PROJECT="$1"
		else
			__help
		fi ;;
esac; shift; done


# Enter project dir ###########################################################

if [[ -n $PROJECT ]] ; then
	mkdir -p "$PROJECT"
	cd "$PROJECT"
else
	__help
fi


# Already exists ##############################################################

if [ -f "$PROJECT.tex" ] ; then
	echo "Project $PROJECT already exists."
else


# Create new project ##########################################################

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

# Though definitely these:
.DS_Store
__GITIGNORE__
	git init
	git add -A
	git commit -m "Initial commit [toolkitex]"
fi


# Open the project anyway #####################################################
fi; __open
