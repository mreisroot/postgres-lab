#!/bin/sh

# Obter os primeiros três dígitos da id do container postgres-lab
container_id=$(docker container ls | grep postgres-lab | awk '{print $1}' | cut -b 1-3)

# Executar o bash para acessar a linha de comando do container
docker container exec -it "${container_id}" bash
