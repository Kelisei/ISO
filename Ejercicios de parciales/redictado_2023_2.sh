#!/bin/bash

if [ $# -ne 1 ]; then
    echo "Se necesitan 1 solo parametro" >&2
    exit 1
fi

usuarios=($(cat /etc/passwd | cut -d":" -f1 | grep $1 ))

function menu {
    local options=(listar eliminar contar)
    function listar {
        for elem in ${usuarios[*]}; do
            echo $elem
        done
    }
    function eliminar {
        for ((i=0; i< ${#usuarios[*]}; i++)); do
            echo "$i , ${usuarios[$i]}"
        done
        read -p "Indique la position" pos
        if [ $pos -lt ${#usuarios[*]} ]; then
            unset usuarios[$pos]
            usuarios=(${usuarios[*]})
        fi
    }
    function contar {
        echo "Cantidad de elementos: ${#usuarios[*]}"
    }
    select option in ${options[*]}; do
        case $option in 
            "listar") listar ;;
            "eliminar") eliminar ;;
            "contar") contar ;;
        esac
    done
}
menu