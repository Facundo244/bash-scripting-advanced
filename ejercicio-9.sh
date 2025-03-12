# Definir el umbral de uso en porcentaje
umbral=90

# Correo electrónico de destino (a donde se enviará la alerta)
correo_destino="facundomorcillo822@gmail.com"

# Obtener el uso de disco de todas las particiones
df -h | grep -vE "^Filesystem|tmpfs|cdrom" | while read linea; do
   # Extraer el uso de la partición y el nombre
   uso=$(echo $linea | awk '{print $5}' | sed 's/%//')
   particion=$(echo $linea | awk '{print $1}')
   
   # Comparar si el uso supera el umbral
   if [ $uso -ge $umbral ]; then
       # Mensaje de alerta que se enviará por correo
       mensaje="ALERTA: La partición $particion tiene un uso de $uso%. Este uso ha superado el umbral del $umbral%."
       
       # Enviar correo de alerta con el asunto y el mensaje
       echo "$mensaje" | mail -s "ALERTA: Uso de disco en $particion" "$correo_destino"
       
       # También podemos imprimir el mensaje de alerta en la consola
       echo "$mensaje"
   fi
done