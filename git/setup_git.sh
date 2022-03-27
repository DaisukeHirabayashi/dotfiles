read -p "Do you want to change your user information? [y,n]" ans
case "$ans" in
  [yY]*)  rm ${HOME}/.gitconfig.user
    read -p "Github User Name: " user_name
    read -p "Github Mail Address: " mail_address
    echo "[user]" >> ${HOME}/.gitconfig.user
    echo "  name = ${user_name}" >> ${HOME}/.gitconfig.user
    echo "  email = ${mail_address}" >> ${HOME}/.gitconfig.user
    echo "create the file ${HOME}/.gitconfig.user for user information" ;;
  *) ;;
esac

