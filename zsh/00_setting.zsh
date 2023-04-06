# config nvim
export XDG_CONFIG_HOME=$HOME/.config

# javaのバージョン管理
export JAVA_HOME=`/usr/libexec/java_home -v 11`

# nodebrew
export PATH=$HOME/.nodebrew/current/bin:$PATH

#ruby version manage
export PATH="~/.rbenv/shims:/usr/local/bin:$PATH"
eval "$(rbenv init - zsh)"

# 開発用
export PATH="/usr/local/opt/mysql@5.6/bin:$PATH"
export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"
export PATH=~/.local/bin:$PATH
export USE_LOCAL_TRANSACTION=1

# history
HISTFILE=$HOME/.zsh-history # 履歴を保存するファイル
HISTSIZE=100000             # メモリ上に保存する履歴のサイズ
SAVEHIST=1000000            # 上述のファイルに保存する履歴のサイズ

# share .zshhistory
setopt inc_append_history   # 実行時に履歴をファイルにに追加していく
setopt share_history        # 履歴を他のシェルとリアルタイム共有する

# enable completion
autoload -Uz compinit && compinit

# 補完候補をそのまま探す -> 小文字を大文字に変えて探す -> 大文字を小文字に変えて探す
zstyle ':completion:*' matcher-list '' 'm:{[:lower:]}={[:upper:]}' '+m:{[:upper:]}={[:lower:]}'

### 補完方法毎にグループ化する。
zstyle ':completion:*' format '%B%F{blue}%d%f%b'
zstyle ':completion:*' group-name ''

### 補完侯補をメニューから選択する。
### select=2: 補完候補を一覧から選択する。補完候補が2つ以上なければすぐに補完する。
zstyle ':completion:*:default' menu select=2
#################################  OTHERS  #################################
# automatically change directory when dir name is typed
setopt auto_cd

# lsのカラーを変更
export LSCOLORS=cxfxcxdxbxegedabagacad

# ビープ音を消す
setopt no_beep

# m1用の設定
eval "$(/opt/homebrew/bin/brew shellenv)"

# mysql-client用の設定
export PATH="/opt/homebrew/opt/mysql-client/bin:$PATH"
