#!/bin/bash

# Azure resource group
read -p "Enter the resource group name: " resourceGroup

# Virtual machine name
read -p "Enter the virtual machine name: " vmName


# Location (Azure region)
read -p "Enter the location (e.g., eastus): " location

# Admin username for the VM
read -p "Enter the admin username: " adminUser

# Admin password for the VM
echo "Enter the admin password for the VM:"
read -s adminPassword

# Create a resource group
az group create --name $resourceGroup --location $location

# Create a virtual machine
az vm create \
    --resource-group $resourceGroup \
    --name $vmName \
    --image Ubuntu2204 \
    --admin-username $adminUser \
    --admin-password $adminPassword \
    --public-ip-sku Standard \
    --location $location \
    --size Standard_DS1_v2 \
    --generate-ssh-keys