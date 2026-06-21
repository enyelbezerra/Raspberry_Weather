#!/bin/bash
# =============================================
# get_value.sh - Versão com Debug
# =============================================

KEY=$1
FILE="$HOME/.config/conky/weather/current.txt"

if [ ! -f "$FILE" ]; then
    echo "N/D (arquivo não encontrado)"
    echo "Procurado: $FILE" >&2
    exit 1
fi

if [ ! -s "$FILE" ]; then
    echo "N/D (arquivo vazio)"
    exit 1
fi

RESULT=$(grep -i "^${KEY}:" "$FILE" | cut -d':' -f2- | sed 's/^[[:space:]]*//')

if [ -z "$RESULT" ]; then
    echo "N/D (chave '${KEY}' não encontrada)"
else
    echo "$RESULT"
fi
