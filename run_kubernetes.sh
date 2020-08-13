#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# This is your Docker ID/path
dockerpath=segunfamisa/python-flask-ml

# Run the Docker Hub container with kubernetes
kubectl run python-flask-ml \
    --image=$dockerpath \
    --port=80

# List kubernetes pods
kubectl get pods

# Forward the container port to a host
kubectl port-forward python-flask-ml 8000:80
