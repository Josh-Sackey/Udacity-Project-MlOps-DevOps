#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath="yoophie/udacitymicro:v1.0"

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacitymicro --image=yoophie/udacitymicro:v1.0 --port=80 --labels app=udacitymicro

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacitymicro 8000:80