ACR="learnaz204"
CONTAINER="az-204-implement-containerized-solutions"
IMAGE="az-204-implement-containerized-solutions"
TAG="latest"
GROUP="learn-group"

az container create \
    --resource-group $GROUP \
    --name $CONTAINER \
    --image $ACR.azurecr.io/$IMAGE:$TAG \
    --cpu 1 \
    --memory 1 \
    --registry-login-server $ACR.azurecr.io \
    --registry-username $ACR_USERNAME \
    --registry-password $ACR_PASSWORD \
    --dns-name-label $CONTAINER \
    --ports 5000 \
