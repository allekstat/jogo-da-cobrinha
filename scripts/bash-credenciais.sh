read -p "NOME " nome
read -p "EMAIL " email
read -p "TOKEN " token
url=$(git config get --local remote.origin.url)
git config set --local user.name $nome
git config set --local user.email $email
git config set --local remote.origin.url https://$token:$token@${url#https://}