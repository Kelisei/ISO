echo "Introduzca un numero"
read var1
echo "Introduzca otro"
read var2

echo "la suma es $(expr $var1 + $var2)"
echo "la resta es $(expr $var1 - $var2)"
echo "la division es $(expr $var1 / $var2)"
echo "la multiplicacion es $(expr $var1 \* $var2)"
if [ $var1 -gt $var2 ]
then
	echo "el primer numero es el mayor"
else
	echo "el segundo numero es el mayor"
fi
