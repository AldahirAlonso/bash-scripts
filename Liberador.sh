#!/bin/bash

# Guarda el puerto que le pases como argumento
PUERTO=$1

if [ -z "$PUERTO" ]; then
    echo "Uso: ./liberar.sh [número del puerto]"
else
    echo "Buscando proceso en el puerto $PUERTO..."
    # Busca el proceso en ese puerto y lo detiene (kill)
    fuser -k "$PUERTO"/tcp && echo "Puerto $PUERTO liberado." || echo "No hay nada corriendo en ese puerto."
fi

