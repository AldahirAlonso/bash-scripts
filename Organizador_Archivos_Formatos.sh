#!/bin/bash

# Creamos las carpetas si no existen
mkdir -p Imagenes Documentos Videos Musica Comprimidos Programas

echo "--- Clasificando archivos... ---"

# Mover Imágenes
mv -v *.{jpg,jpeg,png,gif,svg,webp} Imagenes/ 2>/dev/null

# Mover Documentos
mv -v *.{pdf,doc,docx,txt,xlsx,pptx,csv} Documentos/ 2>/dev/null

# Mover Videos
mv -v *.{mp4,mkv,avi,mov,flv} Videos/ 2>/dev/null

# Mover Música
mv -v *.{mp3,wav,flac,ogg} Musica/ 2>/dev/null

# Mover Archivos Comprimidos
mv -v *.{zip,tar,gz,rar,7z} Comprimidos/ 2>/dev/null

# Mover Ejecutables/Instaladores
mv -v *.{deb,rpm,sh,bin} Programas/ 2>/dev/null

echo "--- ¡Limpieza terminada! Tu carpeta ahora es un lugar decente. ---"
