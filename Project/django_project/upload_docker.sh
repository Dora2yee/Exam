# USING BASH SCRIPT TO TAG AND UPLOAD AN IMAGE TO DOCKER HUB

#!/usr/bin/env bash

# Assumes that an image is built via `run_docker-compose.sh`

# Step 1:
# Create dockerpath
dockerpath=django_project-app

# Step 2:  
# Authenticate & tag
echo "Docker ID and Image: $dockerpath"
docker login -u Dora2yee

#Step 3:
# Tag the images with your Docker ID
docker tag $dockerpath:latest Dora2yee/$dockerpath

# Step 4:
# Push image to a docker repository
docker push Dora2yee/$dockerpath
