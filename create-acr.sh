#!/bin/bash
GROUP="learn-group"
SKU="Basic"
ACR_NAME="learnaz204"
REGION="eastus"
PLAN="Basic"

az group create -n $GROUP -l $REGION
echo "Group created"
az acr create -n learnaz204 -g $GROUP --sku $PLAN
echo "ACR created"