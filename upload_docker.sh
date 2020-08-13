#!/usr/bin/env bash
# This file tags and uploads an image to Docker Hub

# Assumes that an image is built via `run_docker.sh`

# Create dockerpath
dockerpath=segunfamisa/python-flask-ml

# Authenticate & tag
username=$(sed '1!d' docker-creds)
password=$(sed '2!d' docker-creds)
echo "Docker ID and Image: $dockerpath"

docker login --username $username --password $password
docker tag python-flask-ml $dockerpath

# Push image to a docker repository
docker push $dockerpath
