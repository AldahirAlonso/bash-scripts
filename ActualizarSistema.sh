#!/bin/bash

echo "========================================"
echo "Iniciando actualización del sistema..."
echo "========================================"

# Actualiza la lista de paquetes y aplica las actualizaciones
sudo apt update && sudo apt upgrade -y

# Elimina paquetes huérfanos que ya no son necesarios
sudo apt autoremove -y

# Limpia la caché local de paquetes descargados
sudo apt clean

echo "========================================"
echo "¡Sistema actualizado y limpio correctamente!"
echo "========================================"
