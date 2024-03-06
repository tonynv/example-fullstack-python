# Simple FullStack Example

## PreReqs
- Python3
- Docker
- AWS Account
- AWS CLI (Configure default profile)


## Setup 

### Add ENV VARS
AWS_ACCOUNT_ID=$(aws sts get-caller-identity | jq -r .Account)
docker build -t $AWS_ACCOUNT_ID.dkr.ecr.us-west-1.amazonaws.com/example-fullstack-python:latest .
