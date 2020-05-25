# Setting up git on a new machine

#Scripts Parameters
USER_NAME=$1
USER_EMAIL=$2
GPG_KEY=$3

git config --global user.name "$USER_NAME"
git config --global user.email $USER_EMAIL
git config --global core.editor "code --wait"
git config --global user.signingkey "$GPG_KEY"
git config --global commit.gpgsign true

