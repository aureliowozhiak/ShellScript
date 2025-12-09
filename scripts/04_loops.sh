#!/usr/bin/env bash
# Exemplos de loops for e while.

set -euo pipefail

echo "Loop for em uma lista:"
for item in amarelo azul verde; do
  echo "- cor: ${item}"
done

echo ""
echo "Loop while lendo arquivo linha a linha:"
ARQ="${1:-/etc/hosts}"
if [[ -f "${ARQ}" ]]; then
  while IFS= read -r linha; do
    [[ -z "${linha}" ]] && continue
    echo "linha: ${linha}"
  done < "${ARQ}"
else
  echo "Arquivo nao encontrado: ${ARQ}"
fi


