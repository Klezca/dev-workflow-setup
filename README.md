# A collection of installation scripts for me to reference when I need to reinstall something

## Setup

1. Execute the following on a new debian-based Linux OS

```bash
./first-time-setup/newMachine-setup.sh
```

2. Then, execute the following to generate an ssh key

```bash
./first-time-setup/ssh-setup.sh

# Display public key in console, so you can copy and paste this to github
cat /home/$USER/.ssh/id_rsa.pub

# Adding an ssh key to github: https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account
```

3. Then,execute the following to generate a gpg key

```bash
gpg2 --full-generate-key

# Full gpg setup guide avalaible: https://help.github.com/en/github/authenticating-to-github/generating-a-new-gpg-key
# Adding gpg key to github: https://help.github.com/en/github/authenticating-to-github/adding-a-new-gpg-key-to-your-github-account
```

4. Once, you are done, set your env config, then run

```bash
# Create a new copy of the env file
cp .env.example .env

# Export env variables from env file
export $(xargs < .env)
```

5. execute the following to setup your git configuration

```bash
./first-time-setup/git-setup.sh

# Test script by running
git config --global --list
```

6. If you are using WSL and you want to use docker in your workflow, then execute

```bash
# Install docker community edition in ubuntu
./docker-setup/docker-setup.sh

# Copy and paste the contents from docker-setup/wsl.conf
sudo vi /etc/wsl.conf

# Append the contents from docker-setup/.profile
cat docker-setup/.profile >> ~/.profile

# Follow the rest of the guide to setup docker in WSL
# <https://medium.com/faun/docker-running-seamlessly-in-windows-subsystem-linux-6ef8412377aa

# Continue starting from "Starting Docker’s Service with Windows 🚀"
```
