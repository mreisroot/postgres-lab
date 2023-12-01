#!/bin/sh

printf "Removendo o serviço db...\n"
docker compose down -v
sleep 2
clear
