@ECHO OFF
REM BFCPEOPTIONSTART
REM Advanced BAT to EXE Converter www.BatToExeConverter.com
REM BFCPEEXE=C:\Users\skq09\Desktop\Administración de equipos avanzado.exe
REM BFCPEICON=C:\Users\skq09\Pictures\uac1_MMl_icon.ico
REM BFCPEICONINDEX=-1
REM BFCPEEMBEDDISPLAY=0
REM BFCPEEMBEDDELETE=1
REM BFCPEADMINEXE=1
REM BFCPEINVISEXE=0
REM BFCPEVERINCLUDE=1
REM BFCPEVERVERSION=1.0.0.0
REM BFCPEVERPRODUCT=Administración de equipos avanzado
REM BFCPEVERDESC=Acceso a permisos avanzados
REM BFCPEVERCOMPANY=DCTech97
REM BFCPEVERCOPYRIGHT=Copyright DCTech97 2019
REM BFCPEOPTIONEND
@ECHO ON
@ECHO OFF

TITLE Administración de equipos avanzado © DCTech97 2019

COLOR 4F

::Menu principal
:Principal

ECHO Introduzca un comando
ECHO.

SET/p Comando= 

::Si son estos comandos ir a...
IF %Comando% == Activar GOTO Activar
IF %Comando% == activar GOTO Activar
IF %Comando% == Desactivar GOTO Desactivar
IF %Comando% == desactivar GOTO Desactivar
IF %Comando% == Version GOTO Version
IF %Comando% == version GOTO Version
IF %Comando% == Clave GOTO ClaveDeProducto
IF %Comando% == clave GOTO ClaveDeProducto
IF %Comando% == Info GOTO InformacionCompleta
IF %Comando% == info GOTO InformacionCompleta
IF %Comando% == Ayuda GOTO Ayuda
IF %Comando% == ayuda GOTO Ayuda
IF %Comando% == Oscuro GOTO DarkMode
IF %Comando% == oscuro GOTO DarkMode
IF %Comando% == Claro GOTO LightMode
IF %Comando% == claro GOTO LightMode
IF %Comando% == Exit GOTO Salir
IF %Comando% == exit GOTO Salir

::Si no son estos comandos ir a Error
IF NOT %Comando% == Activar GOTO Error
IF NOT %Comando% == activar GOTO Error
IF NOT %Comando% == Desactivar GOTO Error
IF NOT %Comando% == desactivar GOTO Error
IF NOT %Comando% == Version GOTO Error
IF NOT %Comando% == version GOTO Error
IF NOT %Comando% == Clave GOTO Error
IF NOT %Comando% == clave GOTO Error
IF NOT %Comando% == Info GOTO Error
IF NOT %Comando% == info GOTO Error
IF NOT %Comando% == Ayuda GOTO Error
IF NOT %Comando% == ayuda GOTO Error
IF NOT %Comando% == Oscuro GOTO Error
IF NOT %Comando% == oscuro GOTO Error
IF NOT %Comando% == Claro GOTO Error
IF NOT %Comando% == claro GOTO Error
IF NOT %Comando% == Exit GOTO Error
IF NOT %Comando% == exit GOTO Error


::Activar la cuenta de Administrador
:Activar
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO Activando cuenta de Administrador:
ECHO.
net user administrator /active:yes
IF errorlevel 1 GOTO Sin_Permisos
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO Estableciendo contraseña de Administrador:
ECHO.
net user administrator "Adm1n1str@d0r"
IF errorlevel 1 GOTO Sin_Permisos
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Principal


::Desactivar la cuenta de Administrador
:Desactivar
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO Desactivando cuenta de Administrador:
ECHO.
net user administrator /active:no
IF errorlevel 1 GOTO Sin_Permisos
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO Desestableciendo contraseña de Administrador:
ECHO.
net user administrator ""
IF errorlevel 1 GOTO Sin_Permisos
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Principal


::Mostrar la version de Windows con el filtro "Sistema Operativo"
:Version
ECHO ________________________________________________________________________________________________________________________
ECHO.
systeminfo | findstr /C:"sistema operativo"
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Principal


::Mostrar la clave de producto
:ClaveDeProducto
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO ID del producto
wmic os get "SerialNumber" | find /v "SerialNumber"
wmic path softwarelicensingservice get OA3xOriginalProductKey
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Principal


:InformacionCompleta
ECHO ________________________________________________________________________________________________________________________
ECHO.
systeminfo
ECHO.
ECHO ------------------------------------------------------------------------------------------------------------------------
ipconfig
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Principal


::Mostrar todos los comandos que se pueden utilizar
:Ayuda
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO Activar		Activar cuenta de administrador
ECHO Desactivar	Desactivar cuenta de administrador
ECHO Version		Muestra la version de Windows
ECHO Clave		Muesta la clave de producto 
ECHO Info		Informacion completa del equipo
ECHO Oscuro		Establecer la consola en el modo oscuro
ECHO Claro		Establecer la consola en el modo claro
ECHO Ayuda		Muestra los comandos
ECHO Exit		Salir de la consola
ECHO.
ECHO					           © DCTech97 2019 v1.0.0
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Principal


::Establece la consola en los colores siguientes (Fondo oscuro, Texto blanco)
:DarkMode
COLOR 0F
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Principal


::Establece la consola en los colores siguientes (Fondo blanco, Texto oscuro)
:LightMode
COLOR F0
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Principal


::Si el comando introducido no coinceide con ninguno, mustra este mensaje
:Error
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO "%Comando%" en un comando desconocido.
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Principal


::Si el ussuario ha abierto este documento sin permisos administrativos muestra este mensaje
:Sin_Permisos
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO No tienes privilegios suficientes para Activar o Desactivar una cuanta Administrativa.
ECHO.
TIMEOUT 20
EXIT


::Salir de la consola
:Salir
TIMEOUT 5
EXIT