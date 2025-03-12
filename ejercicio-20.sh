#!/bin/bash

# Verificar si se pasaron dos directorios como argumentos
if [ "$#" -ne 2 ]; then
   echo "Uso: $0 <directorio1> <directorio2>"
   exit 1
fi

# Asignar las rutas de los directorios
DIR1="$1"
DIR2="$2"

# Verificar si los directorios existen
if [ ! -d "$DIR1" ]; then
   echo "El directorio $DIR1 no existe."
   exit 1
fi

if [ ! -d "$DIR2" ]; then
   echo "El directorio $DIR2 no existe."
   exit 1
fi

# Listar los archivos en cada directorio y guardarlos en archivos temporales
ls "$DIR1" | sort > /tmp/dir1_files.txt
ls "$DIR2" | sort > /tmp/dir2_files.txt

# Comparar los dos directorios y mostrar las diferencias
echo "Archivos en $DIR1 pero no en $DIR2:"
comm -23 /tmp/dir1_files.txt /tmp/dir2_files.txt

echo "Archivos en $DIR2 pero no en $DIR1:"
comm -13 /tmp/dir1_files.txt /tmp/dir2_files.txt

# Eliminar los archivos temporales
rm /tmp/dir1_files.txt /tmp/dir2_files.txt