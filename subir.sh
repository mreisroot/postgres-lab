#!/bin/sh

# Criar o diretório queries, caso não exista
if [ ! -d ./queries ]; then
  mkdir queries
else
  printf "O diretório queries já existe.\n"
fi

# Subir o container do postgres via Docker Compose
docker compose up -d 
sleep 2
clear
