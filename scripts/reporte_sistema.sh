#!/bin/bash
# Script de monitoreo del sistema - Proyecto Final ISL135

echo "=============================================="
echo "Fecha y hora:        $(date '+%Y-%m-%d %H:%M:%S')"
echo "Host:                $(hostname)"
echo "Usuarios conectados: $(who | wc -l)"
echo "Espacio libre (/):   $(df -h / | awk 'NR==2 {print $4}')"
echo "RAM disponible:      $(free -h | awk '/^Mem:/ {print $7}')"
if command -v docker >/dev/null 2>&1; then
    echo "Contenedores activos: $(docker ps -q | wc -l)"
else
    echo "Contenedores activos: Docker no instalado"
fi
echo "=============================================="
