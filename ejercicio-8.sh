#!/bin/bash

# Directorio de origen (puedes modificarlo según sea necesario)
directorio_origen="/home/facundo/BASH"

# Directorio de destino donde se creará el enlace simbólico
directorio_destino="./deploy"

# Crear el directorio "deploy" si no existe
if [ ! -d "$directorio_destino" ]; then
   echo "Creando directorio $directorio_destino"
   mkdir "$directorio_destino"
else
   echo "El directorio $directorio_destino ya existe."
fi

# Enlazar simbólicamente todos los archivos del directorio origen en el directorio deploy
for archivo in "$directorio_origen"/*; do
   if [ -f "$archivo" ]; then
       ln -s "$archivo" "$directorio_destino/"
       echo "Enlazado: $archivo"
   fi
done

echo "Proceso completado."