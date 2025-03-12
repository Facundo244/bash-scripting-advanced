#!/bin/bash

# Definir el directorio a procesar (Se puede modificar a otro directorio)
DIRECTORIO="./"

# Buscar todos los archivos en el directorio
find "$DIRECTORIO" -type f -exec sed -i 's/\berror\b/warning/g' {}  \;

echo "Reemplazo completado."