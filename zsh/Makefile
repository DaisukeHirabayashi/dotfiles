ENABLED := ${HOME}/.config/zsh/enabled

.PHONY: init
init:
	ln -svf ${PWD}/.zshrc ${HOME}/.zshrc

.PHONY: minimal
minimal: init
	mkdir -p ${ENABLED} && \
	ln -svf ${PWD}/00_setting.zsh ${ENABLED} && \
	ln -svf ${PWD}/01_alias.zsh ${ENABLED} && \
	ln -svf ${PWD}/02_plugin.zsh ${ENABLED} && \
	ln -svf ${PWD}/05_starship.toml ${HOME}/.config/starship.toml && \
	ln -svf ${PWD}/20_fzf_basic.zsh ${ENABLED}

.PHONY: go
go: 
	ln -svf ${PWD}/03_go_setting.zsh ${ENABLED}

