nop:
	@echo "Run make install, please."

TEXMF_PATH = $(shell kpsewhich -var-value=TEXMFLOCAL)/tex/latex/toolkittex
EXEC_PATH  = $(subst pdflatex,writex,$(shell which pdflatex))

install: core/urticle.cls core/iunits.sty core/inputx.sty core/writex.sh
	@sudo mkdir -pv $(TEXMF_PATH)
	@sudo cp -v core/*.sty core/*.cls $(TEXMF_PATH)
	@sudo cp -v core/writex.sh $(EXEC_PATH)
	@sudo chmod -v 755 $(EXEC_PATH)
	@sudo texhash

uninstall:
	@sudo rm -rfv $(TEXMF_PATH) $(EXEC_PATH)
	@sudo texhash
