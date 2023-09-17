#!/bin/bash
# Comentarios acerca de lo que hace el script
# Siempre comento mis scripts, si no hoy lo hago
# y mañana ya no me acuerdo de lo que quise hacer

echo "1. Mostrar su directorio personal:"
echo "Su directorio personal es: $HOME"

echo "2. Mostrar el contenido de un directorio:"
echo "Introduzca la ruta del directorio a listar:"
read directorio
echo "Contenido del directorio $directorio:"
ls "$directorio"

echo "3. Mostrar el espacio libre en disco:"
df -h
