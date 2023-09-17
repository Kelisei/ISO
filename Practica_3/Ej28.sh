#!/bin/bash
<<28
28. Realice un script que reciba como parámetro el nombre de un directorio. Deberá validar que
el mismo exista y de no existir causar la terminación del script con código de error 4. Si el
directorio existe deberá contar por separado la cantidad de archivos que en él se encuentran
para los cuales el usuario que ejecuta el script tiene permiso de lectura y escritura, e informar
dichos valores en pantalla. En caso de encontrar subdirectorios, no deberán procesarse, y
tampoco deberán ser tenidos en cuenta para la suma a informar.
28

if [ $# -ne 1 ]; then
    exit 1
fi

if ! [ -e $1 -a -d $1 ]; then
    echo "ERROR 4"
    exit 4
else
    counter=0
    for file in $(ls -l $1); do
        if [ -f $1/$file ]; then
            if [ -w $1/$file -a -r $1/$file ]; then
                counter=$((counter + 1))
            fi
        fi
    done
    echo "La cantidad de archivos con permiso de lectura y escritura $counter"
fi
exit 0
