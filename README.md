# Ambiente containerizado do PostgreSQL para estudos

---

## Introdução

Neste projeto, um serviço é criado pelo Docker Compose para fornecer um ambiente local de aprendizado de banco de dados PostgreSQL.

---

## Pré-Requisitos

* [Tenha o Docker instalado em seu sistema](https://docs.docker.com/get-docker/)
* Acesso ao Bourne Shell (/bin/sh), Bash, ou a algum outro shell compatível com o Bourne Shell

---

## Compose file

No arquivo [compose.yml](./compose.yml), há a definição dos seguintes elementos:

* `services.db`: O serviço que contém a definição do container postgres-lab
* `volumes.db-data`: O volume que será utilizado pelo container postgres-lab para armazenar dados do banco de dados
* `networks.db-network`: A rede privada na qual o container está conectado

---

## Como usar este projeto

### Menu interativo

A forma mais fácil de utilizar o projeto é através do menu interativo implementado no script [lab.sh](./lab.sh), que utiliza as funções definidas no arquivo [funcoes.sh](,/funcoes.sh).

Para acessar o menu interativo, digite em um terminal UNIX/Linux:

`./lab.sh`

O menu apresentará quatro opções:

1. Subir o container postgres-lab
2. Acessar o container postgres-lab
3. Remover o container postgres-lab
4. Sair

### Scripts avulsos

Caso opte por uma maneira mais rápida de utilizar o projeto, considere a execução dos seguintes scripts:

Para subir o serviço, digite:

`./subir.sh`

Para acessar o container, digite:

`./acessar.sh`

Para remover o serviço, digite:

`./remover.sh`
