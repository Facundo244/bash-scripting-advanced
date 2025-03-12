#!/bin/bash

# Verificar si se pasó un argumento
if [ -z "$1" ]; then
   echo "Uso: $0 <puerto>"
   exit 1
fi

# Asignar el puerto desde el argumento
PUERTO=$1

# Verificar si el puerto está en uso usando ss
if ss -tuln | grep ":$PUERTO " > /dev/null; then
   echo "El puerto $PUERTO está en uso."
else
   echo "El puerto $PUERTO no está en uso."
fi