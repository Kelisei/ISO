#!/bin/bash
<<Ejercicio17
17. Escribir un script que al ejecutarse imprima en pantalla los nombre de los archivos que se
encuentran en el directorio actual, intercambiando minúsculas por mayúsculas, además de
eliminar la letra a (mayúscula o minúscula). Ejemplo, directorio actual:
IsO
pepE
Maria
Si ejecuto: ./ejercicio17
Obtendré como resultado:
iSo
PEPe
mRI
Ejercicio17

for file in $PWD/*; do 
    echo $(echo $file | awk -F '/' {'print $NF'} | tr 'A-Za-z' 'a-zA-Z' | tr -d 'aA') 
done
