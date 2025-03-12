#!/bin/bash

# Nombre del servicio a verificar (puedes cambiarlo por otro servicio como apache2, mysql, etc.)
servicio="nginx"

# Verificar si el servicio está activo
if systemctl is-active --quiet "$servicio"; then
   echo "El servicio $servicio está activo."
else
   echo "El servicio $servicio no está activo. Reiniciando..."
   # Intentar reiniciar el servicio
   sudo systemctl restart "$servicio"
   
   # Verificar si el reinicio fue exitoso
   if systemctl is-active --quiet "$servicio"; then
       echo "El servicio $servicio ha sido reiniciado exitosamente."
   else
       echo "Hubo un error al intentar reiniciar el servicio $servicio."
   fi
fi