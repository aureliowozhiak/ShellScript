#!/usr/bin/env bash
# Funcoes com escopo local e codigos de retorno.

set -euo pipefail

saudacao() {
  local nome="${1:-Visitante}"
  echo "Bem-vindo, ${nome}!"
}

somar() {
  local a="${1:-0}"
  local b="${2:-0}"
  echo "$((a + b))"
}

saudacao "$@"
echo "Soma de 2 + 3 = $(somar 2 3)"


