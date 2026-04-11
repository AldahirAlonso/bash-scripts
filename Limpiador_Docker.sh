#!/bin/bash

echo "--- Iniciando limpieza profunda de Docker ---"

# 1. Detener todos los contenedores que estén corriendo (opcional, comentar si no se desea)
# echo "Deteniendo contenedores activos..."
# docker stop $(docker ps -q) 2>/dev/null

# 2. Eliminar contenedores que no se están usando
echo "Eliminando contenedores antiguos..."
docker container prune -f

# 3. Eliminar imágenes que no tienen nombre (dangling images)
echo "Eliminando imágenes sin etiqueta..."
docker image prune -f

# 4. Eliminar redes que no se usan
echo "Limpiando redes de Docker..."
docker network prune -f

# 5. EL PASO DE ORO: Limpiar volúmenes no utilizados
# ¡Cuidado! Esto borra datos de bases de datos si no están vinculados a un contenedor activo.
echo "Eliminando volúmenes huérfanos..."
docker volume prune -f

echo "------------------------------------------------"
echo "Espacio recuperado. Estado actual de Docker:"
docker system df
