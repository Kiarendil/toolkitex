.DEFAULT_GOAL := nop
nop:
	@echo "Run make install, please."

install: urticle.cls iunits.sty inputx.sty writex.sh
	@sudo mkdir -p /usr/local/share/texmf/tex/latex/toolkittex -v
	@sudo cp *.sty *.cls /usr/local/share/texmf/tex/latex/toolkittex/ -v
	@sudo cp writex.sh /usr/local/bin/writex -v
	@sudo chmod 755 /usr/local/bin/writex -v
	@sudo texhash

uninstall:
	@sudo rm /usr/local/share/texmf/tex/latex/toolkittex -rfv
	@sudo rm /usr/local/bin/writex -v
	@sudo texhash
