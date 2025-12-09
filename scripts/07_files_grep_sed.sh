#!/usr/bin/env bash
# Combina find, grep, cut e sed para processar textos.

set -euo pipefail

DIR="${1:-.}"
PADRAO="${2:-TODO}"

echo "Buscando por \"${PADRAO}\" em ${DIR}"
find "${DIR}" -type f -maxdepth 2 -print0 |
  while IFS= read -r -d '' file; do
    if grep -q "${PADRAO}" "${file}"; then
      linha="$(grep -n "${PADRAO}" "${file}" | head -n1)"
      echo "Encontrado em ${file}: ${linha}"
    fi
  done

echo ""
echo "Exemplo de substituicao com sed:"
echo "texto exemplo" | sed "s/exemplo/amostra/"


