#!/bin/bash
<<25
Realice un script que agregue en un arreglo todos los nombres de los usuarios del sistema
pertenecientes al grupo “users”. Adicionalmente el script puede recibir como parametro:
“-b n”: Retorna el elemento de la posición n del arreglo si el mismo existe. Caso
contrario, un mensaje de error.
“-l”: Devuelve la longitud del arreglo
“-i”: Imprime todos los elementos del arreglo en pantalla
25
if [ $# -gt 4 ]; then
    echo "Demasiados parametros"
    exit 1
fi

users=$(getent group users | awk -F ':' {'print $NF'})
case $1 in 
"-b")
    n=$2
    if [ $n -lt ${#users[*]} ]; then
        echo ${users[n]}
    else 
        echo "Numero mayor al numero de usuarios (inicia en 0)"
        exit 3
    fi
    ;;

"-l")
    echo ${#users[*]}
    ;;

"-i")
    for user in ${users[@]}; do
        echo $user
    done
    ;;
*)
    echo "Parametro ilegal"
    exit 2
    ;;
esac
