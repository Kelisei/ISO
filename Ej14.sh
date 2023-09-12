mv "$file" "$1/$3$(basename "$file")"#!/bin/bash

if [ $# -ne 3 ]
then
    echo "Faltaron argumentos pa"
    exit 1
fi

if [ -e "$1" ]
then
    if [ -d "$1" ]
    then
        for file in "$1"/*
        do
            if [ "$2" = "-a" ]
            then
                mv "$file" "$3 $(basename "$file")"
            elif [ "$2" = "-b" ]
            then
                mv "$file" "$(basename "$file") $3"
            else
                echo "No es una opcion"
            fi
        done
    else
        echo "No es un directorio"
    fi
else
    echo "No existe el directorio"
    echo "El argumento 1 deberia ser el directorio, el 2 after -a  before -b, y el 3 el agregado"
fi
