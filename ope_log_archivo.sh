#!/bin/bash

#	OPERADORES LOGICOS
#	comprobacion de atributos de fichero
#	Operador	devuelve verdadero si:
#	-d			fichero existe y es un directorio
#	-e			fichero existe
#	-f			fichero existe y no es un directorio
#	-r			tienes permisos de escritura en el fichero
#	-s			fichero existe y no esta vacio
#	-w			tienes permisos de escritura en el fichero
#	-x			tienes permisos de ejecucion en el fichero(o busqueda si es un directorio)
#	-o			eres el dueño del fichero
#	-g			el grupo del fichero es igual al tuyo
#	-nt			mas reciente que 
#	-ot			mas antiguo que


directorio="/home/fabians7/Documentos/CLASES_SH"


if [[ -d $directorio ]]; then
	echo "es un directorio"
	
else 
	echo "no es un directorio"
fi

#para saber si es un archivo
fichero="/home/fabians7/Documentos/CLASES_SH/datos.txt"
if [[ -f $fichero ]]; then
	echo "es un archivo"
	
else 
	echo "no es un archivo"
fi

#para si el archivo existe
fichero="/home/fabians7/Documentos/CLASES_SH/datoss.txt"
if [[ -e $fichero ]]; then
	echo "el archivo existe"
	
else
	echo "el archivo no existe"
fi

#para saber el archivo existe y tiene permisos de ejecucion
fichero="/home/fabians7/Documentos/CLASES_SH/datoss.txt"
if [[ -e $fichero && -x $fichero ]]; then
	echo "El fichero existe y tiene permisos de ejecucion"
else
	echo "El fichero no existe o no tiene permisos de ejecucion"

fi
#para saber si mi archivo 1 es mas nuevo que mi archivo 2
archivo1="/home/fabians7/Documentos/CLASES_SH/variables.sh"
archivo2="/home/fabians7/Documentos/CLASES_SH/datos.txt"

if [[ $archivo1 -nt $archivo2 ]]; then
	echo "el archivo 1 es mas nuevo que el archivo 2"
else
	echo "el archivo 2 es mas nuevo que el archivo 1"
fi

#para saber si mi archivo 1 es mas antiguo que mi archivo 2
archivo1="/home/fabians7/Documentos/CLASES_SH/variables.sh"
archivo2="/home/fabians7/Documentos/CLASES_SH/datos.txt"

if [[ $archivo1 -ot $archivo2 ]]; then
	echo "el archivo 1 es mas antiguo que el archivo 2"
else
	echo "el archivo 2 es mas antiguo que el archivo 1"
fi
#tema de los bucles

#sentecia de for
echo "for en bash"
for((i=1;i<=10;i++));
do
	echo "se imprime el $i"
done

lista="12 23 30 fabian"

for i in $lista;
do
	echo "se imprime el $i"
done

for i in $(ls);
do
	echo "se imprime $i"
done

cont=0
#mientra se cumple meyor que 10
while [ $cont -lt 10 ];
do
	echo "contador $cont"
	let cont=cont+1
done


cont=0
#mayor que 10
until [ $cont -gt 10 ];
do
	echo "no se cumple $cont"
	let cont=cont+1
done




#ejercicio para saber si es un archivo o directorio

for fichero in $(ls);
do
	if [[ -d $fichero ]]; then
		echo "$fichero es un directorio"
	elif [[ -f $fichero ]]; then
		echo "$fichero es un archivo"
	fi
done


echo "funciones en bash"
#respetando separacion de linea
function saludar {
	echo "hola mundo"
}
saludar

function suma {
	let r=$1+$2
	echo $r 
}
suma 1 3

#creacion de menus


echo "cual es tu nombre y apellido"
read nombre apellido

echo "Hola $nombre con apellido $apellido"

echo "menus en bash"


opciones="saludar listar funcion salir";
echo "Selecciona una opcion "

select opcion in $opciones;
do
	if [ $opcion = "saludar" ]; then
		echo "Hola desde bash!"
	elif [ $opcion = "listar" ]; then
		ls
	elif [ $opcion = "funcion" ]; then
		suma 3 4
	elif [ $opcion = "salir" ]; then
		echo "chau"
		exit
	else
		echo "opcion no permitida"
	fi
done
















