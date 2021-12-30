#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# config nvim
export XDG_CONFIG_HOME=$HOME/.config

# Customize to your needs...
alias vi='nvim'

export JAVA_HOME=`/usr/libexec/java_home -v 11` #java8が使いたいとき
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH=~/.local/bin:$PATH
export GOPATH=$HOME/go

export USE_LOCAL_TRANSACTION=1
alias attend='cd /Users/daisuk.a.hirabayashi/go/src/github.com/DaisukeHirabayashi/auto-attendance && go run main.go attend'
alias leave='cd /Users/daisuk.a.hirabayashi/go/src/github.com/DaisukeHirabayashi/auto-attendance && go run main.go leave'
alias deploy='bundle exec cap development deploy'
