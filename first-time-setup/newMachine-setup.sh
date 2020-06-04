# Setup Script to be executed every time I work on a new machine
# Distribution: WSL Ubuntu 18.04

# Add python and ansible repo to system repo
sudo apt-add-repository --yes --update ppa:deadsnakes/ppa
sudo apt-add-repository --yes --update ppa:ansible/ansible

# Add node repo to system repo
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

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
    gnupg2 \
    ansible

# Install node and npm
sudo apt-get install -y nodejs
sudo apt install node

# Install python3.8 and pip3 and Python headers
sudo apt-get -y install \
    python3.8 \
    python3.8-venv \
    python3-pip \
    python3.8-dev

# # Install aws cli v2
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
sudo unzip awscliv2.zip
sudo ./aws/install
rm -rf aws awscliv2.zip
