GENERAL := ${PWD}/general
PLUGINS := ${PWD}/plugins


ENABLED := ${HOME}/.config/nvim/enabled

.PHONY: init
init:
	ln -svf ${PWD}/init.vim ${HOME}/.config/nvim/init.vim

.PHONY: minimal
minimal: init
	mkdir -p $(ENABLED) && \
	ln -sfv $(GENERAL)/00_setting.vim $(ENABLED)

.PHONY: full
full: minimal
	ln -sfv $(PLUGINS)/90_install.vim $(ENABLED)
	ln -sfv $(PLUGINS)/91_plug_config.vim $(ENABLED)
