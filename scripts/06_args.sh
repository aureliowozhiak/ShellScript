#!/usr/bin/env bash
# Trata argumentos simples e flags com getopts.

set -euo pipefail

USO="Uso: $0 [-n nome] arquivo1 [arquivo2 ...]"
NOME="Visitante"

while getopts ":n:h" opt; do
  case "${opt}" in
    n) NOME="${OPTARG}" ;;
    h) echo "${USO}"; exit 0 ;;
    \?) echo "Flag invalida: -${OPTARG}"; echo "${USO}"; exit 1 ;;
    :) echo "Flag -${OPTARG} requer valor"; exit 1 ;;
  esac
done
shift $((OPTIND - 1))

if [[ "$#" -lt 1 ]]; then
  echo "${USO}"
  exit 1
fi

echo "Ola, ${NOME}! Vou listar os arquivos passados:"
for arq in "$@"; do
  if [[ -e "${arq}" ]]; then
    echo "- ${arq} existe"
  else
    echo "- ${arq} NAO existe"
  fi
done


