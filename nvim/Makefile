GENERAL := ${PWD}/general
PLUGINS := ${PWD}/plugins

ENABLED := ${HOME}/.config/nvim/enabled

VIM_PLUG_REPO  := ${HOME}/.local/share/nvim/site/autoload

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
	ln -sfv $(PLUGINS)/96_plug_config.vim $(ENABLED)
	mkdir -p $(VIM_PLUG_REPO)
	cd $(VIM_PLUG_REPO) && curl https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim -o plug.vim
