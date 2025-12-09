#!/usr/bin/env bash
# Backup simples de uma pasta para um tar.gz com data e log.

set -euo pipefail

ORIGEM="${1:-$HOME/projetos}"
DESTINO="${2:-$HOME/backups}"
mkdir -p "${DESTINO}"

DATA="$(date +%Y-%m-%d_%H-%M-%S)"
ARQ_DEST="${DESTINO}/backup_${DATA}.tar.gz"
LOG="${DESTINO}/backup_${DATA}.log"

trap 'echo "Falha no backup. Verifique ${LOG}"' ERR

{
  echo "Iniciando backup: ${DATA}"
  echo "Origem: ${ORIGEM}"
  echo "Destino: ${ARQ_DEST}"
  tar -czf "${ARQ_DEST}" "${ORIGEM}"
  echo "Concluido com sucesso."
} | tee "${LOG}"


