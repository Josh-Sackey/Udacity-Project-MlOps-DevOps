#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Step 1:
dockerpath="yoophie/udacitymicro:v1.0"

# Step 2:  
# Authenticate & tag
docker login
docker tag udacitymicro $dockerpath
echo "Docker ID and Image: $dockerpath"

#docker login -u yoophie


# Step 3:
# Push image to a docker repository
docker push $dockerpath
