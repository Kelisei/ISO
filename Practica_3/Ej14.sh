#!/bin/bash
if [ $# -ne 3 ]; then
    echo "Faltaron argumentos pa" >&2
    exit 1
fi

if [ -e $1 ]; then
    if [ -d $1 ]; then
        if [ $2 = "-a" ]; then
            for file in $(ls $1); do
                mv $1$file  $1$file$3
            done
        elif [ $2 = "-b" ]; then
            for file in $(ls $1); do
                mv $1$file $1$3$file        
            done     
        else
           echo "No es una opcion"
        fi
    else
        echo "No es un directorio"
    fi
else
    echo "No existe el directorio"
    echo "El argumento 1 deberia ser el directorio, el 2 after -a before -b, y el 3 el agregado"
fi
