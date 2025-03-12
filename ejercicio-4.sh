#!/bin/bash

# Leer la dirección IP ingresada
read -p "Ingresa una dirección IP: " ip

# Validar la dirección IP usando una expresión regular
if [[ "$ip" =~ ^([0-9]{1,3}\.){3}[0-9]{1,3}$ ]]; then
   # Validar que cada octeto está en el rango de 0 a 255
   valid=true
   for octeto in $(echo $ip | tr '.' ' '); do
       if [ "$octeto" -lt 0 ] || [ "$octeto" -gt 255 ]; then
           valid=false
           break
       fi
   done
   
   # Imprimir el resultado
   if $valid; then
       echo "La dirección IP $ip es válida."
   else
       echo "La dirección IP $ip es inválida (los octetos deben estar entre 0 y 255)."
   fi
else
   echo "La dirección IP $ip es inválida (formato incorrecto)."
fi