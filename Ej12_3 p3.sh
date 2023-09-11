#!/bin/bash

if [ $# -ne 3 ]; then
    echo "El script necesita exactamente 2 parámetros."
    exit 1
fi

op=$1
var1=$2
var2=$3

if [ $op = "+" ]
then
	echo "La suma es $(expr $var1 + $var2)"
elif [ $op = "-" ]
then
	echo "La resta es $(expr $var1 - $var2)"
elif [ $op = "/" ]
then
	echo "La división es $(expr $var1 / $var2)"
elif [ $op = "*"	]
then
	echo "La multiplicación es $(expr $var1 \* $var2)"
else
	echo "NO es una opcion pa"
fi
