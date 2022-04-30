read -p "Do you want to change your user information? [y,n]" ans
case "$ans" in
  [yY]*)  echo "[user]" >> ${HOME}/.gitconfig.user_tmp
    echo "  name = `git config user.name`" >> ${HOME}/.gitconfig.user_tmp
    echo "  email = `git config user.email`" >> ${HOME}/.gitconfig.user_tmp
    rm ${HOME}/.gitconfig.user
    mv ${HOME}/.gitconfig.user_tmp ${HOME}/.gitconfig.user
    echo "create the file ${HOME}/.gitconfig.user for user information" ;;
  *) ;;
esac

