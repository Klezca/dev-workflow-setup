#!/bin/bash

# Setup Script to be executed every time I work on a new machine
# Distribution: WSL Ubuntu 20.04

# Add python and ansible repo to system repo
sudo apt-add-repository --yes --update ppa:deadsnakes/ppa
sudo apt-add-repository --yes --update ppa:ansible/ansible

# Add node repo to system repo
curl -sL https://deb.nodesource.com/setup_15.x | sudo -E bash -

# Add yarn package manager to system repo
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -

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
    gnupg2 \
    ansible \
    php

# Update System
sudo apt-get -y update && sudo apt-get -y upgrade

# Install node, npm and yarn
sudo apt-get install -y nodejs
sudo apt install node
sudo apt install yarn

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

# Install aws cli v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip

