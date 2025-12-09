#!/usr/bin/env bash
# Exemplos de condicionais e testes de arquivos.

set -euo pipefail

ARQ="${1:-/etc/hosts}"

if [[ -f "${ARQ}" ]]; then
  echo "Arquivo existe: ${ARQ}"
else
  echo "Arquivo nao encontrado: ${ARQ}"
fi

read -r -p "Digite um numero: " NUM

if [[ "${NUM}" -gt 10 ]]; then
  echo "Maior que 10"
elif [[ "${NUM}" -eq 10 ]]; then
  echo "Igual a 10"
else
  echo "Menor que 10"
fi


