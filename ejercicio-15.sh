#!/bin/bash

# Lista de páginas web populares para hacer ping
hosts=("google.com" "yahoo.com" "bing.com" "facebook.com" "twitter.com")

# Archivo de log donde se guardarán los resultados
logfile="ping_results.log"

# Agregar fecha y hora al inicio del log
#
echo "Resultados de ping - $(date)" >> "$logfile"

# Hacer ping a cada host en la lista
for host in "${hosts[@]}"; do
   echo "Haciendo ping a $host..." >> "$logfile"
   
   # Ejecutar el comando ping (4 intentos) y guardar el resultado en el archivo de log
   ping -c 4 "$host" >> "$logfile" 2>&1
   
   # Agregar una línea en blanco entre los resultados para mejorar la legibilidad
   echo -e "\n" >> "$logfile"
done

# Confirmación final de que los resultados han sido guardados
echo "Resultados guardados en $logfile"