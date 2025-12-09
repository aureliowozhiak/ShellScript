#!/usr/bin/env bash
# Demonstra variaveis, expansao e leitura do usuario.

set -euo pipefail

NOME="${NOME:-Visitante}"
echo "Oi, ${NOME}! Vamos coletar algumas infos."

read -r -p "Qual sua linguagem preferida? " LING
read -r -p "Qual cidade voce esta? " CIDADE

HOJE="$(date +%F)"

echo "Resumo:"
echo "- Linguagem: ${LING}"
echo "- Cidade: ${CIDADE}"
echo "- Data: ${HOJE}"


