#!/bin/bash

# Directorio de origen y destino
origen="/home/facundo/BASH/origen"
destino="/home/facundo/BASH/destino"

# Obtener la fecha actual en formato YYYY-MM-DD
fecha=$(date +%F)

# Crear el nombre del archivo de copia de seguridad
nombre_backup="backup_$fecha.tar.gz"

# Realizar la copia de seguridad
tar -czf "$destino/$nombre_backup" -C "$origen" .

# Verificar si la copia de seguridad fue exitosa
if [ $? -eq 0 ]; then
   echo "Copia de seguridad realizada con éxito: $destino/$nombre_backup"
else
   echo "Error al realizar la copia de seguridad."
fi