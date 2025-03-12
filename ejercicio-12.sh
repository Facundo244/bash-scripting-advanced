#!/bin/bash

# Verificar si el archivo de usuarios es proporcionado
if [ -z "$1" ]; then
    echo "Uso: $0 archivo_de_usuarios"
    exit 1
fi

# Leer el archivo de texto línea por línea
while IFS= read -r usuario; do
    # Eliminar espacios en blanco al inicio y final de la línea
    usuario=$(echo "$usuario" | xargs)
    
    # Comprobar si la línea está vacía
    if [ -z "$usuario" ]; then
        echo "Línea vacía ignorada, saltando..."
        continue
    fi
    
    # Comprobar si el usuario ya existe
    if id "$usuario" &>/dev/null; then
        echo "El usuario '$usuario' ya existe, saltando..."
    else
        # Crear el usuario
        useradd "$usuario" && echo "Usuario '$usuario' creado exitosamente."
        if [ $? -ne 0 ]; then
            echo "Hubo un problema al crear el usuario '$usuario'."
        fi
    fi
done < "$1"

echo "Proceso completado."