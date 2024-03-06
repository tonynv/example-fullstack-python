# Simple FullStack Example

## PreReqs
- Python3
- Docker
- AWS Account
- AWS CLI (Configure default profile)


## Setup 

### Add ENV VARS
AWS_ACCOUNT_ID=$(aws sts get-caller-identity | jq -r .Account)
### Create Docker Image
docker build -t $AWS_ACCOUNT_ID.dkr.ecr.us-west-1.amazonaws.com/example-fullstack-python:latest .

### Loging to AWS ECR 
aws ecr get-login-password --region us-west-1 | docker login --username AWS --password-stdin $AWS_ACCOUNT_ID.dkr.ecr.us-west-1.amazonaws.com

### Push Image to AWS ECR
docker push $AWS_ACCOUNT_ID.dkr.ecr.us-west-1.amazonaws.com/django-app:latest
