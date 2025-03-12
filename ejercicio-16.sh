#!/bin/bash

# Verificar si se paso un argumento

if [ -z "$1" ]; then
    echo "Por favor, ingresa el nombre de un archivo."
    exit 1
fi

# Comprobar si el archivo existe
if [ -e "$1" ]; then
    echo "El archivo '$1' existe."
else
    echo "El archivo '$1' no existe."
fi
