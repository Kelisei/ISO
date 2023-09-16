#!/bin/bash
<<Ej20
20. Realice un script que simule el comportamiento de una estructura de PILA e implemente
las siguientes funciones aplicables sobre una estructura global definida en el script:
push: Recibe un parámetro y lo agrega en la pila 
pop: Saca un elemento de la pila
length: Devuelve la longitud de la pila 
print: Imprime todos elementos de la pila
Ej20

length=0
queue=()
pop() {
    if [ $length -gt 0 ]; then
        length=$((length - 1))
        local ret_value=${queue[length]}
        unset 'queue[length]'
        queue=("${queue[@]}")
        echo $ret_value
        return 0
    else
        echo "La cola está vacía"
        return 1
    fi
}
push(){
    new_element=$1
    queue[length]=$new_element
    length=$((length + 1))
    return 0
}
print(){
    for elem in ${queue[@]}; do
        echo $elem
    done
    return 0
}
length(){
    echo $length
}

push hola
push como
push cuando
push donde
push porque
push goku
push 32
push 23
push 420
push 69
pop 
pop
pop
length
print