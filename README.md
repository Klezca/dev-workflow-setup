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
# Create a new copy of the env file, and update the variables
cp .env.example .env

# Export env variables from env file
export $(xargs < .env)

# If you are also configuring AWS CLI,
# create a copy of .env.aws.example, delete all the comments
# and update the variables
cp .env.aws.example .env.aws

# Remove all comments and update env
export $(xargs < .env.aws)

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

7. Setting up AWS CLI

```bash
# Run the following scripts
./.aws/credentials.sh
./.aws/config.sh
```

8. Pushing a docker image to AWS ECR? Set up the authetication first.

```bash
# Download docker ecr credential helper binary
wget https://amazon-ecr-credential-helper-releases.s3.us-east-2.amazonaws.com/0.4.0/linux-amd64/docker-credential-ecr-login

# Move binary to /usr/bin
sudo mv docker-credential-ecr-login  /usr/bin/

# Verify installation
docker-credential-ecr-login version

# Run this script to setup credential helper
./docker-setup/ecr-setup.sh

# Usage
docker pull <aws_account_id>.dkr.ecr.<aws_ecr_region>.amazonaws.com/ecr-repository-name:my-tag

docker push <aws_account_id>.dkr.ecr.<aws_ecr_region>.amazonaws.com/ecr-repository-name:my-tag
```
