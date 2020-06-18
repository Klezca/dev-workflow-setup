#!/bin/bash

cat << EOF > ~/.docker/config.json
{
    "credHelpers": {
      "$aws_account_id.dkr.ecr.$aws_ecr_region.amazonaws.com": "ecr-login"
    }
}
EOF
