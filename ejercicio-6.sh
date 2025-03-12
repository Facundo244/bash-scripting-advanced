#!/bin/bash

# Directorio donde se buscarán los archivos grandes
directorio="/var/log"

# Tamaño mínimo del archivo en bytes (100MB)
tamano_minimo=$(( 100 * 1024 * 1024 ))

# Buscar archivos de más de 100MB y comprimirlos
find "$directorio" -type f -size +100M -exec gzip {} \;

# Verificar si el comando fue exitoso
if [ $? -eq 0 ]; then
   echo "Archivos grandes comprimidos con éxito."
else
   echo "Hubo un error al comprimir los archivos."
fi