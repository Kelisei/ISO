#!/bin/bash
<<Ej22
22. Dada la siguiente declaración al comienzo de un script: num=(10 3 5 7 9 3 5 4) (la cantidad
de elementos del arreglo puede variar). Implemente la función productoria dentro de este
script, cuya tarea sea multiplicar todos los números del arreglo
Ej22

num=(10 3 5 7 9 3 5 4)

productoria(){
    local total=1
    for elem in $@; do
        echo $elem
        total=$((elem * $total))
    done
    echo $total
}

productoria ${num[@]}