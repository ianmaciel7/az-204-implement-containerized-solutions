#!/bin/bash
IMAGE="az-204-implement-containerized-solutions"
TAG="latest"
GROUP="learn-group"
ACR="learnaz204"

az acr login --name $ACR
docker build -t $IMAGE:$TAG .
docker tag $IMAGE:$TAG $ACR.azurecr.io/$IMAGE:$TAG
docker push $ACR.azurecr.io/$IMAGE:$TAG
az acr repository list --name $ACR --output table

