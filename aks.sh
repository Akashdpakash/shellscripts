#!/bin/bash

# Variables
RESOURCE_GROUP="myResourceGroup"
CLUSTER_NAME="myAKSCluster"
NODE_COUNT=4
NODE_SIZE="Standard_B2s"

# Create a resource group
az group create --name $RESOURCE_GROUP --location eastus

# Create an AKS cluster
az aks create \
    --resource-group $RESOURCE_GROUP \
    --name $CLUSTER_NAME \
    --node-count $NODE_COUNT \
    --node-vm-size $NODE_SIZE \
    --enable-addons http_application_routing \
    --generate-ssh-keys
