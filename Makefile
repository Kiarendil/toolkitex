.DEFAULT_GOAL := nop
nop:
	@echo "Run make install, please."

install: core/urticle.cls core/iunits.sty core/inputx.sty core/writex.sh
	@sudo mkdir -p /usr/local/share/texmf/tex/latex/toolkittex -v
	@sudo cp core/*.sty core/*.cls /usr/local/share/texmf/tex/latex/toolkittex/ -v
	@sudo cp core/writex.sh /usr/local/bin/writex -v
	@sudo chmod 755 /usr/local/bin/writex -v
	@sudo texhash

uninstall:
	@sudo rm /usr/local/share/texmf/tex/latex/toolkittex -rfv
	@sudo rm /usr/local/bin/writex -v
	@sudo texhash
