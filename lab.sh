#!/bin/sh

# Importar funções definidas no arquivo funcoes.sh
. "./funcoes.sh"

# Executar o código indefinidamente até que a variável opção seja igual a 4
while :;
do
  # Limpar a tela
  clear

  # Menu de opções
  printf "LABORATÓRIO POSTGRESQL\n\n"
  for i in $(seq 1 4);
  do
    case "${i}" in
      1) echo "[ ${i} ] - Subir o container postgres-lab";;
      2) echo "[ ${i} ] - Acessar o container postgres-lab";;
      3) echo "[ ${i} ] - Remover o container postgres-lab";;
      4) echo "[ ${i} ] - Sair";;
    esac
  done

  printf "\nO que deseja fazer? " >&2
  read -r escolha

  case "${escolha}" in
    1) subir;;
    2) acessar;;
    3) remover;;
    4) break;;
  esac
done
