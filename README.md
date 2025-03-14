# 🚀 **Lista de Ejercicios de Shell Scripting**

Este repositorio contiene una serie de **ejercicios prácticos en Bash** que cubren desde tareas básicas hasta avanzadas, diseñados para **automatizar tareas comunes en sistemas Linux**. Estos ejercicios están orientados a mejorar la eficiencia en la administración y el manejo de servidores mediante scripting, ayudando a automatizar tareas repetitivas y a optimizar procesos en entornos de producción.


---

## 🖥️ **Sistema Operativo Requerido**  
Los ejercicios están diseñados para ejecutarse en sistemas basados en **Linux**. Es posible que funcionen también en **macOS** y otros sistemas similares a Unix, pero no están garantizados en sistemas **Windows** sin el uso de un entorno de Linux como **WSL (Windows Subsystem for Linux)** o una **máquina virtual**.

---

## 📜 **Requisitos**

- **Sistema operativo:** Linux (Ubuntu, Debian, CentOS, etc.) o macOS.
- **Bash:** Versión 4.0 o superior.
- **Dependencias adicionales**:
  - **cron**: Para la programación de tareas automáticas (usado en varios ejercicios).
  - **mysql**: En caso de que se necesiten consultas o acciones con bases de datos (usado en algunos ejercicios, por ejemplo, si se tuviera que hacer algún backup de base de datos).
  - **sendmail** o **mail**: Para enviar correos electrónicos desde los scripts (usado para alertas).
  - **rsync**: Para realizar backups incrementales (usado en el ejercicio de backup).
  - **gzip** o **bzip2**: Para comprimir archivos (usado en los ejercicios de compresión de archivos).
  - **git**: Si se tiene que hacer un pull de repositorios (como en el ejercicio de automatizar el deploy de un repositorio Git).
  - **wget** o **curl**: Para hacer peticiones HTTP o descargar archivos (en algunos ejercicios de monitoreo o integración de servicios).
  - **net-tools** o **iproute2**: Para comprobar el estado de puertos y redes (usado en el ejercicio de verificación de puertos).
  - **apache2-utils**: Para procesar logs de Apache (si se requiere analizar logs de un servidor web Apache).

---


**✨ 1. Renombrar Archivos Masivamente** (ejercicio-01.sh)  
🔄 Cambia la extensión de todos los archivos `.txt` de un directorio a `.bak`. 📝

---

**⚡ 2. Crear un Script que Monitoree el Uso de CPU** (`ejercicio-02.sh`)  
💻 Supervisa el uso de CPU en intervalos de 5 segundos y envía una alerta por correo si se dispara más del 80%. 📲

---

**🔍 3. Buscar y Reemplazar Texto en Archivos** (`ejercicio-03.sh`)  
🛠️ Reemplaza todas las ocurrencias de "error" por "warning" en los archivos de un directorio. 🔄

---

**🌐 4. Validar una Dirección IP** (`ejercicio-04.sh`)  
🌍 Verifica si una cadena es una dirección IP válida. ✅

---

**💾 5. Copia de Seguridad Automática** (`ejercicio-05.sh`)  
📦 Realiza una copia de seguridad con la fecha actual en el nombre del archivo comprimido. 🗂️

---

**🗜️ 6. Comprimir Archivos Grandes** (`ejercicio-06.sh`)  
💥 Encuentra y comprime archivos de más de 100MB en /var/log. 📊

---

**⚙️ 7. Control de Servicio** (`ejercicio-07.sh`)  
🔧 Revisa si un servicio está activo y lo reinicia si no lo está. 🔄

---

**📂 8. Crear y Enlazar Directorios** (`ejercicio-08.sh`)  
🔗 Crea un directorio `deploy` y enlaza simbólicamente archivos de otro directorio. 📁

---

**💥 9. Analizar Uso de Disco** (`ejercicio-09.sh`)  
📊 Informa el uso de disco y recibe una alerta si alguna partición supera el 90% de uso. ⚠️

---

**🛠️ 10. Automatizar Deploy de un Repositorio Git** (`ejercicio-10.sh`)  
🚀 Realiza un git pull, construye el proyecto y despliega el código automáticamente. 💻

---

**⏰ 11. Automatización de Tareas Cron** (`ejercicio-11.sh`)  
🕔 Agrega una tarea a cron para copias de seguridad diarias a las 2 AM. 🗓️

---

**👥 12. Crear Usuarios en Masa** (`ejercicio-12.sh`)  
👨‍💻 Lee un archivo de texto con nombres y crea esos usuarios en el sistema. 📝

---

**📈 13. Procesamiento de Logs** (`ejercicio-13.sh`)  
🔍 Procesa los logs de Apache y cuenta cuántas veces cada IP ha accedido al servidor. 📜

---

**🔌 14. Verificar el Estado de los Puertos** (`ejercicio-14.sh`)  
🖧 Revisa si un puerto específico (ej. el 80) está en uso. 🚪

---

**🌍 15. Ping a Múltiples Hosts** (`ejercicio-15.sh`)  
🌐 Haz ping a varios hosts y guarda los resultados en un archivo de log. 📡

---

**💾 16. Procesar Argumentos en un Script** (`ejercicio-16.sh`)  
📂 Acepta un nombre de archivo como argumento y muestra si existe o no. ✅

---

**⚡ 17. Backup Incremental** (`ejercicio-17.sh`)  
🔄 Realiza un backup incremental con rsync desde una carpeta origen a una de destino. 💻

---

**🗑️ 18. Borrar Archivos Antiguos** (`ejercicio-18.sh`)  
🕒 Borra archivos de más de 30 días de antigüedad en un directorio específico. 📅

---

**🌀 19. Rotación de Logs** (`ejercicio-19.sh`)  
🔄 Rota los archivos de log, comprimiéndolos y moviéndolos a un directorio de respaldo. 📂

---

**📁 20. Comparar Dos Directorios** (`ejercicio-20.sh`)  
🔍 Compara dos directorios y muestra los archivos que están en uno pero no en el otro. 📊

---

## Instrucciones de Ejecución ⚙️

Para ejecutar los scripts de Bash, sigue estos pasos:

1. **Clona el repositorio**:  
   Si aún no lo has hecho, clona este repositorio en tu máquina local:

```bash
git clone https://github.com/Facundo244/bash-scripting-advanced.git
```
2. **Navega al directorio:**
   Ve al directorio donde se encuentran los scripts:
```bash
cd bash-scripting-advanced
```
3.  **Haz el script ejecutable:**
    Antes de ejecutar un script, asegúrate de que tiene permisos de ejecución.
    Por ejemplo, para hacer ejecutable el script ejercicio1.sh, usa el siguiente comando:

```bash
chmod +x ejercicio-1.sh
```
4. **Ejecuta el script:**
   Una vez que el script es ejecutable, puedes correrlo directamente desde la terminal. Por ejemplo:

  ```bash
  ./ejercicio-1.sh
  ```

Este comando ejecutará el script ejercicio1.sh, que imprime el nombre de usuario actual en tu terminal.

# 📚 Documentación
Aca adjunto la documentacion para que vean el paso a paso del script con todo lo necesario para su funcionamiento
[Documentacion de los scripts](https://docs.google.com/document/d/1Nrm7OUM1WHLFgo9OSy4LwWCnOLdHq7J4/edit?usp=sharing&ouid=102407650821676645603&rtpof=true&sd=true)


**Autor:** [Facundo Joel Morcillo](https://github.com/Facundo244)


