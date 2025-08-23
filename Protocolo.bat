echo off
title Protocolo by JuanUke
for /f "tokens=2 delims=:." %%a in ('"prompt $H & for %%b in (1) do rem"') do set "BS=%%a"

set "c1=[97m"
set "c2=[38;2;255;200;200m"
set "c3=[38;2;255;170;200m"
set "c4=[38;2;255;150;200m"
set "c5=[38;2;255;130;200m"

:MENU
cls
echo %c1%/$$$$$$$                       /$$                                   /$$
echo %c2%! $$__  $$                     ! $$                                  ! $$
echo %c2%! $$  \ $$ /$$$$$$   /$$$$$$  /$$$$$$    /$$$$$$   /$$$$$$$  /$$$$$$ ! $$  /$$$$$$
echo %c3%! $$$$$$$//$$__  $$ /$$__  $$!_  $$_/   /$$__  $$ /$$_____/ /$$__  $$! $$ /$$__  $$
echo %c3%! $$____/! $$  \__/! $$  \ $$  ! $$    ! $$  \ $$! $$      ! $$  \ $$! $$! $$  \ $$
echo %c4%! $$     ! $$      ! $$  ! $$  ! $$ /$$! $$  ! $$! $$      ! $$  ! $$! $$! $$  ! $$
echo %c5%! $$     ! $$      !  $$$$$$/  !  $$$$/!  $$$$$$/!  $$$$$$$!  $$$$$$/! $$!  $$$$$$/
echo %c5%!__/     !__/       \______/    \___/   \______/  \_______/ \______/ !__/ \______/   Dev by JuanUke xddd
echo [0m
echo ========================================================================
echo  Elimina archivos de temporales de manera facil y rapida con Protocolo:
echo  Escribe el numero de la opcion que quieres realizar
echo ========================================================================
echo.
echo  [1] Limpiar carpeta Temp (C:\Windows\Temp)
echo  [2] Limpiar carpeta %%temp%%
echo  [3] Limpiar carpeta Prefetch
echo  [4] Limpiar todas
echo  [5] Salir
echo.
set /p opcion=Elige una opcion: 

if "%opcion%"=="1" goto LIMPIAR_TEMP
if "%opcion%"=="2" goto LIMPIAR_USERTEMP
if "%opcion%"=="3" goto LIMPIAR_PREFETCH
if "%opcion%"=="4" goto LIMPIAR_TODO
if "%opcion%"=="5" goto SALIR
goto MENU

:LIMPIAR_TEMP
echo Limpiando C:\Windows\Temp...
del /f /s /q "C:\Windows\Temp\*.*" >nul 2>&1
echo Carpeta Temp limpiada.
pause
goto MENU

:LIMPIAR_USERTEMP
echo Limpiando %%temp%%...
del /f /s /q "%temp%\*.*" >nul 2>&1
echo Carpeta %%temp%% limpiada.
pause
goto MENU

:LIMPIAR_PREFETCH
echo Limpiando C:\Windows\Prefetch...
del /f /s /q "C:\Windows\Prefetch\*.*" >nul 2>&1
echo Carpeta Prefetch limpiada.
pause
goto MENU

:LIMPIAR_TODO
echo Limpiando todo...
del /f /s /q "C:\Windows\Temp\*.*" >nul 2>&1
del /f /s /q "%temp%\*.*" >nul 2>&1
del /f /s /q "C:\Windows\Prefetch\*.*" >nul 2>&1
echo Todas las carpetas fueron limpiadas.
pause
goto MENU

:SALIR
exit