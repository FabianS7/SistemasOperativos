#!/bin/bash

var1="grover"
var2="malania"
var3="melania"
if [ "$var1" = "$var2" ]; then
	echo "son iguales 1 2"
elif [ "$var2" = "$var3" ]; then
	echo "son iguales 2 3"
else
	echo "no son iguales"
fi
