#!/usr/bin/env bash

# Build image and add a descriptive tag
docker image build --tag=python-flask-ml .

# List docker images
docker image ls

# Run flask app
docker run -p 8000:80 python-flask-ml
