#!/bin/bash
<<27
27. Realice un script que implemente a través de la utilización de funciones las operaciones
básicas sobre arreglos:
inicializar: Crea un arreglo llamado array vacío
agregar_elem <parametro1>: Agrega al final del arreglo el parámetro recibido
eliminar_elem <parametro1>: Elimina del arreglo el elemento que se encuentra en la
posición recibida como parámetro. Debe validar que se reciba una posición válida
longitud: Imprime la longitud del arreglo en pantalla
imprimir: Imprime todos los elementos del arreglo en pantalla
inicializar_Con_Valores <parametro1><parametro2>: Crea un arreglo con longitud
<parametro1>y en todas las posiciones asigna el valor <parametro2>
27

incializar(){
    array=()
}
agregar_elem(){
    array[${#array[*]}]=$1
}
eliminar_elem(){
    if [ $1 -le ${#array[*]} ]; then
        unset 'array[$1]'
    fi
}
longitud(){
    echo ${#array[*]}
}
imprimir(){
    for elem in ${array[*]}; do
        echo $elem
    done
}

inicializar
agregar_elem 50
agregar_elem goku
agregar_elem zapallo
agregar_elem 69
agregar_elem 420
imprimir
eliminar_elem 0
imprimir
longitud