# Scripts to ensure ssh agent is running
eval $(ssh-agent -s)

ssh-add ~/.ssh/id_rsa
