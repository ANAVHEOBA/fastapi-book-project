#!/bin/bash

# Stop and remove existing container
docker stop fastapi-app || true
docker rm fastapi-app || true

# Pull latest image
aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin $ECR_REGISTRY
docker pull $ECR_REGISTRY/fastapi-app:latest

# Run new container
docker run -d --name fastapi-app \
    -p 8000:8000 \
    $ECR_REGISTRY/fastapi-app:latest
