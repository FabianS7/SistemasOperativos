@echo off
:: aplicando if batch windows

set /p nu="cuanto es 3 + 2 "
::du
if %nu% == 5 ( goto ver ) else ( goto inc ) 

if %nu% == 5 (
	echo verdadero
	echo asdf
) else (
	echo falso

)


:ver

echo "correcto"
goto salir

:inc

echo "incorrecto"
goto salir

:salir
pause
