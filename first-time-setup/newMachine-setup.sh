# Setup Script to be executed every time I work on a new machine
# Distribution: WSL Ubuntu 18.04

# Add python repo to system repo
yes " " | sudo add-apt-repository ppa:deadsnakes/ppa 

# Add node repo to system repo
curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -

# Update System
sudo apt-get -y update && sudo apt-get -y upgrade

# Install essential dependencies
sudo apt-get -y install \
    apt-transport-https\
    ca-certificates \
    curl \
    software-properties-common \
    build-essential \
    git \
    git-flow \
    gnupg2

# Install node and npm
sudo apt-get install -y nodejs
sudo apt install node

# Install python3.8 and pip3
sudo apt-get -y install \
    python3.8 \
    python3.8-venv \
    python3-pip
