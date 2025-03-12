#!/bin/bash

# Directorios de origen y destino
ORIGEN="/home/facundo/BASH/origen"
DESTINO="/home/facundo/BASH/destino"
FECHA=$(date +%Y-%m-%d_%H-%M-%S)
BACKUP_DIR="$DESTINO/backup_incremental_$FECHA"

# Crear un directorio de destino para el backup incremental
mkdir -p "$BACKUP_DIR"

# Realizar el backup incremental con rsync
rsync -av --link-dest="$DESTINO/last_backup" "$ORIGEN/" "$BACKUP_DIR/"

# Actualizar el enlace simbólico "last_backup" para apuntar al nuevo backup
rm -f "$DESTINO/last_backup"
ln -s "$BACKUP_DIR" "$DESTINO/last_backup"

echo "Backup incremental completado: $BACKUP_DIR"