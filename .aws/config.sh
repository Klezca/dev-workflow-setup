#!/bin/bash

cat << EOF > ~/.aws/config
[default]
region = $DEFAULT_AWS_REGION
output = $DEFAULT_AWS_CLI_OUTPUT_FORMAT

[$PROFILE1_AWS_NAME]
region = $PROFILE1_AWS_REGION
output = $PROFILE1_AWS_CLI_OUTPUT_FORMAT
EOF
