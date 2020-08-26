@echo off
:: aplicando goto batch windows

:menu
echo ............................
echo 1.- limpiar la pantalla
echo 2.- listar los archivos y direcctorios
echo 3.- salir
echo ...............................
set /p des="Ingrese una opcion: "

if %des% == 1 goto limpiar
if %des% == 2 goto listar
if %des% == 3 goto salir


:limpiar
cls
goto menu

:listar
dir
goto menu

:salir
exit