#!/bin/bash

# Umbral de uso de CPU (en porcentaje)
THRESHOLD=80

# Dirección de correo electrónico para enviar la alerta
EMAIL="facundomorcillo822@gmail.com"

# Bucle infinito para monitorear el uso de la CPU cada 5 segundos
while true; do
    # Obtener el uso de la CPU (excluyendo el tiempo de inactividad)
    CPU_USAGE=$(top -bn1 | grep "Cpu(s)" | sed "s/.*, *\([0-9.]*\)%* id.*/\1/" | awk '{print 100 - $1}')
    
    # Comparar el uso de CPU con el umbral
    if (( $(echo "$CPU_USAGE > $THRESHOLD" | bc -l) )); then
        # Enviar una alerta por correo si se supera el umbral
        echo "Alerta: El uso de CPU ha superado el $THRESHOLD%. El valor actual es: $CPU_USAGE%" | mail -s "Alerta de alto uso de CPU" $EMAIL
    fi
    
    # Esperar 5 segundos antes de volver a comprobar
    sleep 5
done
