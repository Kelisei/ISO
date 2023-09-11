if [ $# -ne 1 ] 
then
	echo "Error, no hay parametros"
	exit 1
fi

if [ -e "$1" ]
then
	if [ -d "$1" ]
	then
		echo "$1 es un directorio"
	elif [ -f "$1" ]
	then	
	echo "Es un archivo"
	fi
else
	mkdir "$1"
	echo "Se creo el directorio con ese nombre"
fi

