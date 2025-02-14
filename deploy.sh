#!/bin/bash
set -e

echo "Starting deployment..."

# Stop and remove existing container
echo "Cleaning up existing container..."
docker stop fastapi-app || true
docker rm fastapi-app || true

# Login to ECR
echo "Logging into ECR..."
aws ecr get-login-password --region eu-north-1 | docker login --username AWS --password-stdin $ECR_REGISTRY

# Pull latest image
echo "Pulling latest image..."
docker pull $ECR_REGISTRY/fastapi-app:latest

# Run new container
echo "Starting new container..."
docker run -d --name fastapi-app \
    -p 8000:8000 \
    $ECR_REGISTRY/fastapi-app:latest

echo "Deployment completed successfully!"
