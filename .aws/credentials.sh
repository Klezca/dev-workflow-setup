#!/bin/bash

cat << EOF > ~/.aws/credentials
[default]
aws_access_key_id = $DEFAULT_AWS_ACCESS_KEY_ID
aws_secret_access_key = $DEFAULT_AWS_SECRET_ACCESS_KEY

[$PROFILE1_AWS_NAME]
aws_access_key_id = $PROFILE1_AWS_ACCESS_KEY_ID
aws_secret_access_key = $PROFILE1_AWS_SECRET_ACCESS_KEY
EOF
