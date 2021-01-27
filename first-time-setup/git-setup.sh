#!/bin/bash

# Setting up git on a new machine

git config --global user.name "$FIRST_NAME $LAST_NAME"
git config --global user.email $USER_EMAIL
git config --global core.editor "code --wait"

# Uncomment if you are also adding gpg key
# git config --global user.signingkey "$GPG_KEY"
# git config --global commit.gpgsign true

