#!/bin/bash

# Espera alguns segundos para o desktop carregar completamente
sleep 5

# Mata qualquer instância antiga para evitar duplicatas
killall conky 2>/dev/null

# Inicia os dois Conkys
conky -q -c ~/.config/conky/conky-left.conf & 
conky -q -c ~/.config/conky/conky-right.conf &

exit 0
