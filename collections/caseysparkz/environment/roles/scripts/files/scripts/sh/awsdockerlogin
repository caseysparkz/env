#!/usr/bin/env sh
# Author:       Casey Sparks
# Date:         August 02, 2024
# Description:  Log into an AWS ECR registry with 'docker login'.

AWS_ACCOUNT_ID="$(aws sts get-caller-identity --query "Account" --output text)"
AWS_REGION="$(aws configure get region)"

export AWS_ACCOUNT_ID
export AWS_REGION

aws ecr get-login-password                                                  \
    --region "${AWS_REGION}"                                                \
| docker login                                                              \
    --username AWS                                                          \
    --password-stdin "${AWS_ACCOUNT_ID}.dkr.ecr.${AWS_REGION}.amazonaws.com"
