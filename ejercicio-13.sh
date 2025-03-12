#!/bin/bash

# Verifica si se ha pasado un archivo de log como argumento
if [ -z "$1" ]; then
   echo "Uso: $0 <archivo_de_log>"
   exit 1
fi

# Archivo de log Apache
log_file="$1"

# Verifica si el archivo existe
if [ ! -f "$log_file" ]; then
   echo "El archivo $log_file no existe."
   exit 1
fi

# Extrae las direcciones IP y cuenta cuántas veces aparece cada una
awk '{print $1}' "$log_file" | sort | uniq -c | sort -nr