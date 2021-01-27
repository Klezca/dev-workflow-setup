#!/bin/bash

# Setup Script to be executed every time I work on a new machine
# Distribution: WSL Ubuntu 20.04

# Add python and ansible repo to system repo
sudo apt-add-repository --yes --update ppa:deadsnakes/ppa
# sudo apt-add-repository --yes --update ppa:ansible/ansible

# Add the Google Cloud SDK distribution URI as a package source: 
echo "deb [signed-by=/usr/share/keyrings/cloud.google.gpg] https://packages.cloud.google.com/apt cloud-sdk main" | sudo tee -a /etc/apt/sources.list.d/google-cloud-sdk.list

# Import the Google Cloud public key:  
curl https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo apt-key --keyring /usr/share/keyrings/cloud.google.gpg add -

# Add yarn package manager to system repo
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

# Update System
sudo apt-get -y update && sudo apt-get -y upgrade

# Install essential dependencies
sudo apt-get -y install \
    apt-transport-https\
    ca-certificates \
    curl \
    zip \
    unzip \
    software-properties-common \
    build-essential \
    git-flow \
    git \
    wget \
    gnupg \
    php \
    openjdk-14-jre-headless \
    google-cloud-sdk


# Update System
sudo apt-get -y update && sudo apt-get -y upgrade

# Install Node Version Manager (NVM)
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash

# Install python3.9 and pip3 and Python headers
sudo apt-get -y install \
    python3.9 \
    python3.9-venv \
    python3-pip \
    python3.9-dev

# Install common PHP 7.4 modules
sudo apt-get install php-pear \
    php-fpm \ 
    php-dev \
    php-zip \
    php-curl \
    php-xmlrpc \
    php-gd \
    php-mysql \
    php-mbstring \
    php-xml \
    libapache2-mod-php

# Install Composer Package Manager for PHP
wget -O composer-setup.php https://getcomposer.org/installer
sudo php composer-setup.php --install-dir=/usr/local/bin --filename=composer
rm -rf composer-setup.php

# Install aws cli v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip

# Install node, npm and yarn
sudo apt install yarn
nvm install v14.15.4 # Required Reboot

# Updates system (required reboot)
#   apt-get dist-upgrade