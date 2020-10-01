#!/bin/bash

#variables en bash

var1="fabian"
let var2=5
let var3=4
let var_r=$var2+$var3


if [[ $var2 -lt $var3 ]]; then
	echo $var2" es menor "$var3
elif [[ $var2 -eq $var3 ]]; then
	echo $var2" igual "$var3
else
	echo $var2" mayor a "$var3
fi

echo
echo

#	OPERADORES PARA	CADENAS
#	=	igual
#	!=	diferente
#	>	mayor
#	<	menor que
#	-n	la cadena no esta vacia
#	-z	la cadena esta vacia

cad1="bolivia"
cad2="peru"

if [[ $cad1 > $cad2 ]]; then
	echo "son iguales"
else
	echo "no son iguales"
if
