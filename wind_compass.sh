#!/bin/bash
# =============================================
# Wind Compass - Rosa dos Ventos com Unicode
# =============================================

DIRECAO=$(~/.config/conky/weather/get_value.sh dir)

# Remove espaços e converte para maiúsculo
DIR=$(echo "$DIRECAO" | tr -d '[:space:]' | tr '[:lower:]' '[:upper:]')

case "$DIR" in
    N|NORTE)          echo "↑ N" ;;
    NNE)              echo "↗ NNE" ;;
    NE)               echo "↗ NE" ;;
    ENE)              echo "↗ ENE" ;;
    E|LESTE)          echo "→ E" ;;
    ESE)              echo "↘ ESE" ;;
    SE)               echo "↘ SE" ;;
    SSE)              echo "↘ SSE" ;;
    S|SUL)            echo "↓ S" ;;
    SSW)              echo "↙ SSW" ;;
    SW)               echo "↙ SW" ;;
    WSW)              echo "↙ WSW" ;;
    W|OESTE)          echo "← W" ;;
    WNW)              echo "↖ WNW" ;;
    NW)               echo "↖ NW" ;;
    NNW)              echo "↖ NNW" ;;
    *)                echo "→ ${DIR:---}" ;;   # fallback
esac
