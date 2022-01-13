SCRIPT_DIR=$HOME/.config

for file in $SCRIPT_DIR/zsh/enabled/*.zsh; do
  source "$file"
done
