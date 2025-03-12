#!/bin/bash

# Directorios de logs y de respaldo
DIRECTORIO_LOGS="/var/log"
DIRECTORIO_BACKUP="/home/facundo/logs_backup"

# Nombre del archivo de log a rotar
ARCHIVO_LOG="syslog" # Puedes cambiar este nombre por el log que deseas rotar

# Número de días para comprimir los logs viejos
DÍAS_RETENCIÓN=7

# Crear el directorio de respaldo si no existe
mkdir -p "$DIRECTORIO_BACKUP"

# Fecha actual para agregar a los archivos comprimidos
FECHA=$(date +%Y-%m-%d_%H-%M-%S)

# Archivo de log actual
LOG_ACTUAL="$DIRECTORIO_LOGS/$ARCHIVO_LOG"

# Verificar si el archivo de log existe
if [ ! -f "$LOG_ACTUAL" ]; then
   echo "El archivo de log $ARCHIVO_LOG no existe en $DIRECTORIO_LOGS."
   exit 1
fi

# Mover y comprimir el archivo de log actual
mv "$LOG_ACTUAL" "$DIRECTORIO_BACKUP/${ARCHIVO_LOG}_$FECHA"

# Comprimir el archivo movido
gzip "$DIRECTORIO_BACKUP/${ARCHIVO_LOG}_$FECHA"

# Crear un archivo nuevo de log vacío
touch "$LOG_ACTUAL"

# Eliminar archivos de log comprimidos que tengan más de DÍAS_RETENCIÓN días
find "$DIRECTORIO_BACKUP" -type f -name "${ARCHIVO_LOG}_*.gz" -mtime +$DÍAS_RETENCIÓN -exec rm -f {} \;

echo "Rotación de logs completada. Los logs viejos han sido movidos y comprimidos."