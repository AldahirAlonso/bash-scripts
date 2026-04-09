#!/bin/bash

# Muestra un saludo personalizado y datos rápidos del sistema
echo "------------------------------------------"
echo "¡Hola, $USER!"
echo "Hoy es: $(date +'%A, %d de %B de %Y')"
echo "Tu equipo lleva encendido: $(uptime -p)"
echo "Tu IP privada es: $(hostname -I | awk '{print $1}')"
echo "------------------------------------------"
