#!/bin/bash
<<Ej23
23. Implemente un script que recorra un arreglo compuesto por números e imprima en pantalla
sólo los números pares y que cuente sólo los números impares y los informe en pantalla al
finalizar el recorrido.
Ej23

test_array=(1 2 3 4 5 6 7 8 9 10 11 23 57 99 100)

counter=0
for i in ${test_array[@]}; do
    even=$(expr $i % 2) 
    if [ $even -eq 0 ]; then
        echo $i
    else 
        counter=$((counter + 1))
    fi
done;
echo "El numero de numeros impares es $counter"
