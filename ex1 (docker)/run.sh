#!/bin/bash

# Executa o Docker Compose
echo "Iniciando Docker Compose..."
docker-compose up -d

# Executa o Terraform
echo "Provisionando infraestrutura com Terraform..."
cd terraform
terraform init
terraform apply -auto-approve

