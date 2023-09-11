#!/bin/bash

if [ $# -ne 2 ]; then
    echo "El script necesita exactamente 2 parámetros."
    exit 1
fi

var1=$1
var2=$2

echo "La suma es $(expr $var1 + $var2)"
echo "La resta es $(expr $var1 - $var2)"
echo "La división es $(expr $var1 / $var2)"
echo "La multiplicación es $(expr $var1 \* $var2)"
if [ $var1 -gt $var2 ]; then
    echo "El primer número es el mayor."
else
    echo "El segundo número es el mayor."
fi
