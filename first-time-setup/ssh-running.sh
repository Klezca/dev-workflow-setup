# Scripts to ensure ssh agent is running
eval $(ssh-agent -s)

# Add ssh key to ssh agent
ssh-add ~/.ssh/id_rsa
