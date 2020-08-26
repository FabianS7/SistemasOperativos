@echo off

if 2==3 (
	echo fabian 
) else (
	echo grover 
)
echo.
echo fabian sierra acarapi
echo.
for /l %%i in (1,2,50) do (
	echo %%i
)
echo listando archivos
echo.
for /D %%i in (*.*) do (
	echo %%i
)
pause>null