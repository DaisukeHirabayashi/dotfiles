ENABLED := ${HOME}/.config/zsh/enabled

.PHONY: init
init:
	ln -svf ${PWD}/.zshrc ${HOME}/.zshrc

.PHONY: minimal
minimal: init
	mkdir -p ${ENABLED} && \
	ln -svf ${PWD}/00_setting.zsh ${ENABLED} && \
	ln -svf ${PWD}/01_alias.zsh ${ENABLED} && \
	ln -svf ${PWD}/20_fzf_basic.zsh ${ENABLED}
