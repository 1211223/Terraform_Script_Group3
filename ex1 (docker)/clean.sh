#!/bin/bash

# Parar e remover todos os contêineres Docker
docker stop $(docker ps -aq)
docker rm $(docker ps -aq)

# Remover todas as imagens Docker
docker rmi $(docker images -q)

# Remover volumes Docker não utilizados
docker volume prune -f

# Remover a pasta .terraform para limpar os recursos criados pelo Terraform
rm -rf .terraform

echo "Limpeza concluída!"

