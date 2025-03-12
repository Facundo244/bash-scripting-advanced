#!/bin/bash

# Configuración
REPO_DIR="/home/facundo/BASH/deploy/nodejs/app-nodejs"  # Directorio donde está el repositorio local
BRANCH="main"                                           # Rama de Git que deseas actualizar
REMOTE="origin"                                         # Remoto desde el que hacer pull

# Paso 1: Navegar al directorio del repositorio
echo "Navegando al directorio del repositorio..."
cd "$REPO_DIR" || { echo "No se pudo acceder al repositorio"; exit 1; }

# Paso 2: Hacer pull para obtener los últimos cambios del repositorio
echo "Haciendo pull del repositorio..."
git fetch "$REMOTE"
git checkout "$BRANCH"
git pull "$REMOTE" "$BRANCH" || { echo "Error al hacer pull del repositorio"; exit 1; }

# Paso 3: Instalar dependencias de Node.js
echo "Instalando dependencias de Node.js..."
npm install || { echo "Error al instalar dependencias"; exit 1; }

# Paso 4: Iniciar la aplicación
npm run start

# Paso 5: Confirmar el despliegue
echo "Despliegue completado con éxito."

exit 0