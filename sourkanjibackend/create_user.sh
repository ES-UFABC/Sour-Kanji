#!/bin/bash
USER_EMAIL=$1
USER_NAME=$2
USER_PASSWORD=$3

curl -X POST "http://localhost:8080/usuario/cadastrar" \
   -H 'Content-Type: application/json' \
   -d '{"nomeCompleto":"'$USER_NAME'","emailUsuario":"'$USER_EMAIL'","senhaUsuario":"'$USER_PASSWORD'"}'
