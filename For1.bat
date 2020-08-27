@echo off

:: aprendiendo for en batch

for %%i in (1,2,3,4,5,6,7,8,9,10,11,12,13,14) do (
	echo %%i
)

for %%i in (e*.bat,*.txt) do (
	echo %%i

)
cls

::
echo ***************************

set /A cont=0
for /L %%i in (0, 10, 100) do (
	echo %%i
	set /a cont+=1

)
echo estaba en ciclo %cont% veces
cls

echo ***************************
for %%i in (*) do (

	echo %%i

)
cls
echo ***************************

for /r f:\scripts %%i in (goto2.bat, goto.bat) do (
	echo %%i
)

cls 

echo ***************************

for /R /D %%i in (*) do (

	echo %%i
)


cls 

echo ************+++++++++++++************

if exist guardado.txt del guardado.txt
if not exist type nul>guardado.txt


for /F "tokens=*" %%t in (ejecucion.txt) do (
	
	echo %%t>>guardado.txt
)

type guardado.txt | msg *
