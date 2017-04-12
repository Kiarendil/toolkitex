.DEFAULT_GOAL = sandwich
sandwich:
	@echo "Run make install, please."

__check_integrity: core/iunits.sty core/inputx.sty core/urticle.cls core/writex.sh
	@echo "Integrity check passed."

TEXMF_PATH := $(shell kpsewhich -var-value=TEXMFLOCAL)/tex/latex/toolkitex
WRITEX_LOC := $(subst pdflatex,writex,$(shell which pdflatex))
__set_vars:
ifeq ($(TEXMF_PATH),)
	$(error TEXMF_PATH is not set)
endif
ifeq ($(WRITEX_LOC),)
	$(error WRITEX_FILE is not set)
endif

__enter_sudo:
	@sudo echo _ > /dev/null

install: __check_integrity __set_vars __enter_sudo
	@echo "Installing..."
	@sudo mkdir -pv $(TEXMF_PATH)
	@sudo cp -v core/*.sty core/*.cls $(TEXMF_PATH)
	@sudo cp -v core/writex.sh $(WRITEX_LOC)
	@sudo chmod -v +x $(WRITEX_LOC)
	@sudo texhash
	@echo "Done."

uninstall: __set_vars __enter_sudo
	@echo "Uninstalling..."
	@sudo rm -rf -v $(TEXMF_PATH) $(WRITEX_LOC)
	@sudo texhash
	@echo "Done."

reinstall:
	@$(MAKE) uninstall
	@$(MAKE) install
