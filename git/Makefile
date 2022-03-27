SHELL=/bin/zsh

.PHONY: init
init: 
	ln -svf ${PWD}/gitconfig ${HOME}/.gitconfig
	chmod 744 setup_git.sh
	${PWD}/setup_git.sh
	echo "create the file ${HOME}/.gitconfig.user for user information"
