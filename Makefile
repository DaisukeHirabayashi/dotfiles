.PHONY: init
init:
	cd zsh && make init
	cd nvim && make init
	cd tmux && make init
	cd hammerspoon && make init
