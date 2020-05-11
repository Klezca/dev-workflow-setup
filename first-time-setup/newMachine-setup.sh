# Setup Script to be executed every time I work on a new machine

# Update System
sudo apt-get -y update && sudo apt-get -y upgrade

sudo apt-get -y install \
    apt-transport-https\
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common \
    build-essential \
    git 

# Generate new SSH Key
ssh-keygen -t rsa -N "" -f ~/.ssh/id_rsa