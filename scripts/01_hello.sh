#!/usr/bin/env bash
# Imprime uma mensagem simples e data/hora.

set -euo pipefail

echo "Ola, Shell!"
printf "Agora: %s\n" "$(date)"


