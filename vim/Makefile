GENERAL := ${PWD}/general

ENABLED := ${HOME}/.config/nvim/enabled

.PHONY: init
init:
	ln -svf ${PWD}/init.vim ${HOME}/.config/nvim/init.vim

.PHONY: minimal
minimal: init
	mkdir -p $(ENABLED) && \
	ln -sfv $(GENERAL)/00_setting.vim $(ENABLED)
