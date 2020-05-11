# Update the apt package list.
sudo apt-get update -y

# Install Docker's package dependencies.
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common \
    python3 \
    python3-pip

# Download and add Docker's official public PGP key.
# Due to a WSL bug, you might not be able to add the docker repo to ubuntu apt repo due to this error:
#   gpg: can't connect to the agent: IPC connect call failed
# See "docker-WSL-setup.sh" for alternative setup
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Verify the fingerprint.
sudo apt-key fingerprint 0EBFCD88

# Add the `stable` channel's Docker upstream repository.
#
# If you want to live on the edge, you can change "stable" below to "test" or
# "nightly". I highly recommend sticking with stable!
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable"

# Update the apt package list (for the new apt repo).
sudo apt-get update -y

# Install the latest version of Docker CE.
sudo apt-get install -y docker-ce 

# Allow your user to access the Docker CLI without needing root access.
sudo usermod -aG docker $USER

# Install Docker Compose into your user's home directory.
pip3 install --user docker-compose