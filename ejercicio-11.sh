#!/bin/bash

# Directorio de origen de los archivos que quieres respaldar
SOURCE_DIR="/home/facundo/BASH/deploy"

# Directorio de destino donde se almacenará la copia de seguridad
BACKUP_DIR="/home/facundo/BASH/deploy/respaldo_copia"

# Nombre del archivo de respaldo con la fecha actual
BACKUP_FILE="backup_$(date +\%F).tar.gz"

# Crear el archivo tar.gz con el respaldo
tar -czf "$BACKUP_DIR/$BACKUP_FILE" -C "$SOURCE_DIR" .

# Opción adicional: puedes agregar un log
echo "$(date): Backup completado" >> /var/log/backup.log