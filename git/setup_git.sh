read -p "Github User Name: " user_name
read -p "Github Mail Address: " mail_address
echo "[user]" >> ${HOME}/.gitconfig.user
echo "  name = ${user_name}" >> ${HOME}/.gitconfig.user
echo "  email = ${mail_address}" >> ${HOME}/.gitconfig.user

