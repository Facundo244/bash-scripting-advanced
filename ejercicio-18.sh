#!/bin/bash

# Directorio donde se van a buscar los archivos antiguos
DIRECTORIO="/home/facundo/"

# Verificar si el directorio existe
if [ ! -d "$DIRECTORIO" ]; then
   echo "El directorio $DIRECTORIO no existe."
   exit 1
fi

# Borrar archivos que tienen más de 30 días
find "$DIRECTORIO" -type f -mtime +30 -exec rm -f {} \;

echo "Archivos de más de 30 días han sido borrados de $DIRECTORIO."