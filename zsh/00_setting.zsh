# config nvim
export XDG_CONFIG_HOME=$HOME/.config

# go
export GOPATH=$HOME/go

# javaのバージョン管理
export JAVA_HOME=`/usr/libexec/java_home -v 11

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

#ruby version manage
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init -)"

# 開発用
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH=~/.local/bin:$PATH
export USE_LOCAL_TRANSACTION=1
