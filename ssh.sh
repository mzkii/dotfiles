# create ssh key
ssh-keygen -t rsa -N ""

pbcopy < ~/.ssh/id_rsa.pub
echo "Please access https://github.com/settings/keys and register ssh key (copied to clipboard)"
