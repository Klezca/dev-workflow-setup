# Distribution: WSL Ubuntu 20.04 

# Due to a bug in WSL Ubuntu 20.04:
#    https://github.com/MicrosoftDocs/WSL/issues/662
# Installation will done manually
# Install docker engine binaries
wget https://download.docker.com/linux/static/stable/x86_64/docker-19.03.8.tgz 
tar xzvf docker-19.03.8.tgz

# Move the binaries to a directory on your executable path
sudo cp docker/* /usr/bin/

# Remove docker binaries
rm -rf docker

# Follow the rest of the guide to setup docker in WSL
# https://medium.com/faun/docker-running-seamlessly-in-windows-subsystem-linux-6ef8412377aa
# Continue from "Starting Docker’s Service with Windows 🚀"