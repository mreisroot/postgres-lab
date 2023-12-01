#!/bin/sh

# Função para criar a pasta de queries e subir o serviço do container postgres-lab
subir() {
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
}

# Função para efetuar o acesso ao container postgres-lab
acessar() {
  # Obter os primeiros três dígitos da id do container postgres-lab
  container_id=$(docker container ls | grep postgres-lab | awk '{print $1}' | cut -b 1-3)
  
  # Executar o bash para acessar a linha de comando do container
  docker container exec -it "${container_id}" bash
}

# Função para remover o serviço do container postgres-lab
remover() {
  printf "Removendo o serviço db...\n"
  docker compose down -v;
  sleep 2
  clear
}
