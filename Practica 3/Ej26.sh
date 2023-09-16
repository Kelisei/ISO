#!/bin/bash
<<26
26. Escriba un script que reciba una cantidad desconocida de parámetros al momento de su invo-
cación (debe validar que al menos se reciba uno). Cada parámetro representa la ruta absoluta
de un archivo o directorio en el sistema. El script deberá iterar por todos los parámetros reci-
bidos, y solo para aquellos parámetros que se encuentren en posiciones impares (el primero, el tercero, el quinto, etc.),
verificar si el archivo o directorio existen en el sistema, imprimiendo en pantalla que tipo
de objeto es (archivo o directorio). Además, deberá informar la cantidad de archivos o
directorios inexistentes en el sistema.
26

files=("$@")

cant_noexistent=0
for ((i = 0; i < $#; i++)); do
    if [ $((i % 2)) -ne 0 ]; then
        if [ -e "${files[i]}" ]; then
            if [ -d "${files[i]}" ]; then
                echo "La ruta ${files[i]} existe y es un directorio"
            else
                echo "El ruta ${files[i]} existe y es un archivo"
            fi
        else
            cant_noexistent=$((cant_noexistent + 1))
        fi
    fi
done
echo "Cantidad de archivos no existentes $cant_noexistent"
