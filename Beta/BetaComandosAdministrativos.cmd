@ECHO OFF

setlocal enabledelayedexpansion

TITLE Administracion de equipos avanzado - Beta

IF errorlevel 1 GOTO Error_Inesperado

COLOR 4E

:SalidaCMD
IF errorlevel 1 GOTO Error_Inesperado

ECHO BETA - Comandos Administrativos [Version 3.0.0] && ECHO.(c) 2019 DCTech97. Todos los derechos reservados. & ECHO.

::Menu principal
:Principal
IF errorlevel 1 ECHO. && GOTO Error_Inesperado

SET/p Comando= ^Introduzca ^un ^comando^>

set var=%Comando%

IF errorlevel 1 ECHO. && GOTO Error_Inesperado

::Si son estos comandos ir a...
IF "!var!"=="" GOTO Principal
IF %Comando% == Activar ECHO. && GOTO Verificacion
IF %Comando% == activar ECHO. && GOTO Verificacion
IF %Comando% == Desactivar ECHO. && GOTO Verificacion
IF %Comando% == desactivar ECHO. && GOTO Verificacion
IF %Comando% == Version GOTO Versioncomandos
IF %Comando% == version GOTO Version
IF %Comando% == Clave ECHO. && GOTO ClaveDeProducto
IF %Comando% == clave ECHO. && GOTO ClaveDeProducto
IF %Comando% == Info GOTO InformacionCompleta
IF %Comando% == info GOTO InformacionCompleta
IF %Comando% == Exportar ECHO. && GOTO Exportar
IF %Comando% == exportar ECHO. && GOTO Exportar
IF %Comando% == Ayuda ECHO. && GOTO Ayuda
IF %Comando% == ayuda ECHO. && GOTO Ayuda
IF %Comando% == Oscuro GOTO DarkMode
IF %Comando% == oscuro GOTO DarkMode
IF %Comando% == Claro GOTO LightMode
IF %Comando% == claro GOTO LightMode
IF %Comando% == CMD GOTO CMD
IF %Comando% == cmd GOTO CMD
IF %Comando% == "ECHO ON" GOTO Echo-On
IF %Comando% == "Echo On" GOTO Echo-On
IF %Comando% == "echo on" GOTO Echo-On
IF %Comando% == "ECHO OFF" GOTO Echo-Off
IF %Comando% == "Echo Off" GOTO Echo-Off
IF %Comando% == "echo off" GOTO Echo-Off
IF %Comando% == Reiniciar GOTO Reiniciar
IF %Comando% == reiniciar GOTO Reiniciar
IF %Comando% == Salir GOTO Salir
IF %Comando% == salir GOTO Salir
IF %Comando% == Debug GOTO Debug
IF %Comando% == debug GOTO Debug
IF %Comando%==[] GOTO Principal
::-------------------Debug---------------------------------------------------------
IF %Comando% == Ejecutar GOTO Ejecutar
IF %Comando% == ejecutar GOTO Ejecutar
IF %Comando% == Shutdown GOTO Shutdown

::Si no son estos comandos ir a Error
IF NOT %Comando% == Activar ECHO. && GOTO Error
IF NOT %Comando% == activar ECHO. && GOTO Error
IF NOT %Comando% == Desactivar ECHO. && GOTO Error
IF NOT %Comando% == desactivar ECHO. && GOTO Error
IF NOT %Comando% == Version ECHO. && GOTO Error
IF NOT %Comando% == version ECHO. && GOTO Error
IF NOT %Comando% == Clave ECHO. && GOTO Error
IF NOT %Comando% == clave ECHO. && GOTO Error
IF NOT %Comando% == Info ECHO. && GOTO Error
IF NOT %Comando% == info ECHO. && GOTO Error
IF NOT %Comando% == Exportar ECHO. && ECHO. && GOTO Error
IF NOT %Comando% == exportar ECHO. && GOTO Error
IF NOT %Comando% == Ayuda ECHO. && GOTO Error
IF NOT %Comando% == ayuda ECHO. && GOTO Error
IF NOT %Comando% == Oscuro ECHO. && GOTO Error
IF NOT %Comando% == oscuro ECHO. && GOTO Error
IF NOT %Comando% == Claro ECHO. && GOTO Error
IF NOT %Comando% == claro ECHO. && GOTO Error
IF NOT %Comando% == CMD ECHO. && GOTO Error
IF NOT %Comando% == cmd ECHO. && GOTO Error
IF NOT %Comando% == "ECHO ON" ECHO. && GOTO Error
IF NOT %Comando% == "Echo On" ECHO. && GOTO Error
IF NOT %Comando% == "echo on" ECHO. && GOTO Error
IF NOT %Comando% == "ECHO OFF" ECHO. && GOTO Error
IF NOT %Comando% == "Echo Off" ECHO. && GOTO Error
IF NOT %Comando% == "echo off" ECHO. && GOTO Error
IF NOT %Comando% == Reiniciar ECHO. && GOTO Reiniciar
IF NOT %Comando% == reiniciar ECHO. && GOTO Reiniciar
IF NOT %Comando% == Salir ECHO. && GOTO Error
IF NOT %Comando% == salir ECHO. && GOTO Error
IF NOT %Comando% == Debug ECHO. && GOTO Error
IF NOT %Comando% == debug ECHO. && GOTO Error
::-------------------Debug---------------------------------------------------------
IF NOT %Comando% == Ejecutar GOTO Start
IF NOT %Comando% == ejecutar GOTO Start
IF NOT %Comando% == Shutdown GOTO Error


::Verificacion de Ussuario si esta seguro si quiere activar o desactivar la cuenta
:Verificacion
set /p Verificacion=Estas Seguro/a? [S/N]^>

SET var=%Verificacion%

IF "!var!"=="" GOTO Verificacion
IF %Comando% == Activar ( IF %Verificacion% == S ECHO. && GOTO Activar)
IF %Comando% == Activar ( IF %Verificacion% == s ECHO. && GOTO Activar)
IF %Comando% == activar ( IF %Verificacion% == S ECHO. && GOTO Activar)
IF %Comando% == activar ( IF %Verificacion% == s ECHO. && GOTO Activar)
IF %Comando% == Activar ( IF %Verificacion% == N GOTO PrePrincipal)
IF %Comando% == Activar ( IF %Verificacion% == n GOTO PrePrincipal)
IF %Comando% == activar ( IF %Verificacion% == N GOTO PrePrincipal)
IF %Comando% == activar ( IF %Verificacion% == n GOTO PrePrincipal)
IF %Comando% == Desactivar ( IF %Verificacion% == S ECHO. && GOTO Desactivar)
IF %Comando% == Desactivar ( IF %Verificacion% == s ECHO. && GOTO Desactivar)
IF %Comando% == desactivar ( IF %Verificacion% == S ECHO. && GOTO Desactivar)
IF %Comando% == desactivar ( IF %Verificacion% == s ECHO. && GOTO Desactivar)
IF %Comando% == Desactivar ( IF %Verificacion% == N GOTO PrePrincipal)
IF %Comando% == Desactivar ( IF %Verificacion% == n GOTO PrePrincipal)
IF %Comando% == desactivar ( IF %Verificacion% == N GOTO PrePrincipal)
IF %Comando% == desactivar ( IF %Verificacion% == n GOTO PrePrincipal)

IF %Comando% == Activar ( IF NOT %Verificacion% == S ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Activar ( IF NOT %Verificacion% == s ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == S ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == s ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Activar ( IF NOT %Verificacion% == N ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Activar ( IF NOT %Verificacion% == n ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == N ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == n ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == S ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == s ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == S ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == s ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == N ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == n ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == N ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == n ECHO. && GOTO ErrorVerificacion)


::Antes de ir a la pantalla principal imprime esto
:PrePrincipal
ECHO ________________________________________________________________________________________________________________________
ECHO.
SET Comando=%
SET Verificacion=%
SET Exportar=%
SET var=%
GOTO Principal


::Activar la cuenta de Administrador
:Activar
ECHO Activando cuenta de Administrador:
ECHO.
net user administrator /active:yes
IF errorlevel 1 GOTO Sin_Permisos
ECHO ------------------------------------------------------------------------------------------------------------------------
ECHO.
ECHO Estableciendo contraseña de Administrador:
ECHO.
net user administrator "Adm1n1str@d0r"
IF errorlevel 1 GOTO Sin_Permisos
SET Comando=%
GOTO PrePrincipal


::Desactivar la cuenta de Administrador
:Desactivar
ECHO Desactivando cuenta de Administrador:
ECHO.
net user administrator /active:no
IF errorlevel 1 GOTO Sin_Permisos
ECHO ------------------------------------------------------------------------------------------------------------------------
ECHO.
ECHO Desestableciendo contraseña de Administrador:
ECHO.
net user administrator ""
IF errorlevel 1 GOTO Sin_Permisos
SET Comando=%
GOTO PrePrincipal


::Muestrar la version de Windows con el filtro "Sistema Operativo"/ Si el comando es Exportar, Exporta lo siguiente
:Version
IF %Comando% == Exportar ( IF EXIST "C:\ScryptResult\VersionDelSistema.txt" ( SET DocumentoExiste=VersionDelSistema.txt) && GOTO DocumentoExiste)
IF %Comando% == exportar ( IF EXIST "C:\ScryptResult\VersionDelSistema.txt" ( SET DocumentoExiste=VersionDelSistema.txt) && GOTO DocumentoExiste)
IF %Comando% == Exportar systeminfo | findstr /C:"sistema operativo" >> C:\ScryptResult\VersionDelSistema.txt && ECHO. && ECHO Exportado correctamente en C:\ScryptResult\VersionDelSistema.txt && GOTO PrePrincipal
IF %Comando% == exportar systeminfo | findstr /C:"sistema operativo" >> C:\ScryptResult\VersionDelSistema.txt && ECHO. && ECHO Exportado correctamente en C:\ScryptResult\VersionDelSistema.txt && GOTO PrePrincipal
ECHO.
systeminfo | findstr /C:"sistema operativo"
SET Comando=%
SET Exportar=%
GOTO PrePrincipal


::Muestrar la clave de producto/ Si el comando es Exportar, Exporta lo siguiente
:ClaveDeProducto
IF %Comando% == Exportar ( IF EXIST "C:\ScryptResult\ClaveDeProducto.txt" ( SET DocumentoExiste=ClaveDeProducto.txt) && GOTO DocumentoExiste)
IF %Comando% == exportar ( IF EXIST "C:\ScryptResult\ClaveDeProducto.txt" ( SET DocumentoExiste=ClaveDeProducto.txt) && GOTO DocumentoExiste)
IF %Comando% == Exportar wmic os get "SerialNumber" | find /v "SerialNumber" >> C:\ScryptResult\ClaveDeProducto.txt
IF %Comando% == exportar wmic os get "SerialNumber" | find /v "SerialNumber" >> C:\ScryptResult\ClaveDeProducto.txt
IF %Comando% == Exportar ECHO ------------------------------------------------------------------------------------------------------------------------ >> C:\ScryptResult\ClaveDeProducto.txt
IF %Comando% == exportar ECHO ------------------------------------------------------------------------------------------------------------------------ >> C:\ScryptResult\ClaveDeProducto.txt
IF %Comando% == Exportar wmic path softwarelicensingservice get OA3xOriginalProductKey >> C:\ScryptResult\ClaveDeProducto.txt && ECHO Exportado correctamente en C:\ScryptResult\ClaveDeProducto.txt && GOTO PrePrincipal
IF %Comando% == exportar wmic path softwarelicensingservice get OA3xOriginalProductKey >> C:\ScryptResult\ClaveDeProducto.txt && ECHO Exportado correctamente en C:\ScryptResult\ClaveDeProducto.txt && GOTO PrePrincipal
ECHO ID del producto
wmic os get "SerialNumber" | find /v "SerialNumber"
wmic path softwarelicensingservice get OA3xOriginalProductKey
SET Comando=%
SET Exportar=%
GOTO PrePrincipal


::Muestra toda la informacion sobre es sistema/ Si el comando es Exportar, Exporta lo siguiente
:InformacionCompleta
IF %Comando% == Exportar ( IF EXIST "C:\ScryptResult\InformacionCompleta.txt" ( SET DocumentoExiste=InformacionCompleta.txt) && GOTO DocumentoExiste)
IF %Comando% == exportar ( IF EXIST "C:\ScryptResult\InformacionCompleta.txt" ( SET DocumentoExiste=InformacionCompleta.txt) && GOTO DocumentoExiste)
IF %Comando% == Exportar systeminfo >> C:\ScryptResult\InformacionCompleta.txt
IF %Comando% == exportar systeminfo >> C:\ScryptResult\InformacionCompleta.txt
IF %Comando% == Exportar ECHO ------------------------------------------------------------------------------------------------------------------------ >> C:\ScryptResult\InformacionCompleta.txt
IF %Comando% == exportar ECHO ------------------------------------------------------------------------------------------------------------------------ >> C:\ScryptResult\InformacionCompleta.txt
IF %Comando% == Exportar ipconfig /all >> C:\ScryptResult\InformacionCompleta.txt && ECHO Exportado correctamente en C:\ScryptResult\InformacionCompleta.txt && GOTO PrePrincipal
IF %Comando% == exportar ipconfig /all >> C:\ScryptResult\InformacionCompleta.txt && ECHO Exportado correctamente en C:\ScryptResult\InformacionCompleta.txt && GOTO PrePrincipal
systeminfo
ECHO.
ECHO ------------------------------------------------------------------------------------------------------------------------
ipconfig /all
SET Comando=%
SET Exportar=%
GOTO PrePrincipal


::Exporta la informaxion en un documento
:Exportar
SET /p Exportar=Que desea exportar^?^>

SET var=%Exportar%

IF "!var!"=="" GOTO Exportar
IF EXIST "C:\ScryptResult" GOTO ExportarProcedimiento
IF NOT EXIST "C:\ScryptResult" MD C:\ScryptResult
GOTO ExportarProcedimiento


::Sigue la exportación
:ExportarProcedimiento
IF %Exportar% == Version ECHO. && GOTO Version
IF %Exportar% == version ECHO. && GOTO Version
IF %Exportar% == Clave ECHO. && GOTO ClaveDeProducto
IF %Exportar% == clave ECHO. && GOTO ClaveDeProducto
IF %Exportar% == Info ECHO. && GOTO InformacionCompleta
IF %Exportar% == info ECHO. && GOTO InformacionCompleta
IF %Exportar% == Ayuda ECHO. && GOTO AyudaExportacion
IF %Exportar% == ayuda ECHO. && GOTO AyudaExportacion
IF %Exportar% == Salir ECHO. && GOTO PrePrincipal
IF %Exportar% == salir ECHO. && GOTO PrePrincipal

IF NOT %Exportar% == Version ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == version ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == Clave ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == clave ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == Info ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == info ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == Ayuda ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == ayuda ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == Salir ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == salir ECHO. && GOTO ErrorCExportar


::Mostrar todos los comandos que se pueden utilizar
:Ayuda
ECHO Activar		Activar cuenta de administrador
ECHO Desactivar	Desactivar cuenta de administrador
ECHO Version		Muestra la version de Windows
ECHO Clave		Muesta la clave de producto 
ECHO Info		Informacion completa del equipo
ECHO Exportar	Exporta en un documento la informacion solicitada
ECHO CMD		Ejecuta el Simbolo del Sistema
ECHO "ECHO ON/OFF"	Muestra/Esconde el codigo interno
ECHO Oscuro		Establecer la consola en el modo oscuro
ECHO Claro		Establecer la consola en el modo claro
ECHO Ayuda		Muestra los comandos
ECHO Reiniciar	Reinicia la consola
ECHO Salir		Salir de la consola
ECHO.
ECHO					               ©DCTech97 2019 v5.2.0
SET Comando=%
GOTO PrePrincipal


::Muestra los comandos para la opcion de exportaciona a documento
:AyudaExportacion
ECHO Version		Exporta en un documento la informacion sobre la version de Windows
ECHO Clave		Exporta en un documento la Clave de Producto
ECHO Info		Exporta en un documento la Informacion completa del equipo
ECHO Salir		Salir de la opcion de Exportacion a un documento
ECHO.
SET Exportar=%
GOTO Exportar


::Establece la consola en los colores siguientes (Fondo oscuro, Texto blanco)
:DarkMode
COLOR 0F
SET Comando=%
GOTO PrePrincipal


::Establece la consola en los colores siguientes (Fondo blanco, Texto oscuro)
:LightMode
COLOR F0
SET Comando=%
GOTO PrePrincipal


::Ejecuta la Consola principal de Windows en la misma consola
:CMD
COLOR 0F
ECHO ________________________________________________________________________________________________________________________
ECHO.
::@ECHO OFF
CMD.exe
ECHO.
ECHO ________________________________________________________________________________________________________________________
ECHO.
COLOR 4E
SET Comando=%
GOTO SalidaCMD


::Muestra todos los comandos de ejecucion
:Echo-On
@ECHO ON
SET Comando=%
GOTO PrePrincipal


::Esconde todos los comandos de ejecucion
:Echo-Off
@ECHO OFF
SET Comando=%
GOTO PrePrincipal


::Cambia el color de la consola a Rojo y borra toda la informacion dentro de la consola
:Reiniciar
@ECHO OFF
COLOR 4E
CLS.
SET Comando=%
GOTO SalidaCMD


::Si el comando introducido no coinceide con ninguno, mustra este mensaje
:Error
ECHO "%Comando%" es un comando desconocido.
SET Comando=%
GOTO PrePrincipal


::Mensaje para comando de verificacion desconocido
:ErrorVerificacion
ECHO "%Verificacion%" es un comando desconocido.
ECHO.
SET Verificacion=%
GOTO Verificacion


::Mensaje para comando de exporte desconocido
:ErrorCExportar
ECHO "%Exportar%" es un comando desconocido.
ECHO.
SET Exportar=%
GOTO Exportar


::Si el documento ya existe mustra este error y vuelve a PrePrincipal
:DocumentoExiste
ECHO El documento (%DocumentoExiste%) que ha solicitado ya existe.
ECHO Por favor vaya a "C:\ScryptResult" para ver el documento.
SET Exportar=%
GOTO PrePrincipal


::Mensaje para error desconocido
:Error_Inesperado
ECHO Error Inesperado!
ECHO.
SET Comando=%
PAUSE
EXIT


::Si el ussuario ha abierto este documento sin permisos administrativos muestra este mensaje
:Sin_Permisos
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO No tienes privilegios suficientes para Activar o Desactivar una cuanta Administrativa.
ECHO.
SET Comando=%
TIMEOUT 60
EXIT


::Salir de la consola
:Salir
TIMEOUT 3
SET Comando=%
EXIT

::---------------------------------------------------DEBUG AREA------------------------------------------------------------------

:Ejecutar
SET /p Programa= Introduzca el nombre ^del programa^>

IF %Programa% == cmd GOTO CMD
IF %Programa% == CMD GOTO CMD
IF %Programa% == Salir GOTO PrePrincipal
If %Programa% == salir GOTO PrePrincipal
IF %Programa% == ".exe" SET Program %Programa%.exe && ECHO Exito



::IF NOT %Programa% == *.exe ECHO. && GOTO ErrorEjecucion
START %Programa%
IF errorlevel 1 ECHO. && ECHO ERROR && ECHO. && GOTO ErrorEjecucion
ECHO %Programa% ha sido ejecutado
GOTO Debug


:ErrorEjecucion
ECHO %Programa% es incorrecto o no existe.
ECHO.
GOTO Ejecutar



:Shutdown
::shutdown /h
ECHO Deshabilitado
GOTO Debug

:ClaveDeProductoBeta
::wmic os get "SerialNumber" | find /v "SerialNumber"

set /p IDdeProducto=Introduzca el ID del producto^>

::SET nuevo="/v"
IF errorlevel 1 GOTO Sin_Permisos

IF %IDdeProducto% == "00330-80195-71466-AA679" GOTO InformacionDeClave
IF NOT %IDdeProducto% == "00330-80195-71466-AA679" GOTO ErrorDeID
::wmic os get "SerialNumber" GOTO InformacionDeClave

IF %IDdeProducto% == Exit GOTO Principal
IF %IDdeProducto% == exit GOTO Principal
GOTO Debug


::DEBUG
:Debug
ECHO Exito!
GOTO PrePrincipal


::--------------------------------------------EXPERIMENTAL AREA------------------------------------------------------------------


:ExportarEX
Beta-ComandosAdministrativos.cmd 1>stdout.txt 2>errors.txt
c:\Users\skq09\Desktop\Beta-ComandosAdministrativos.cmd >> c:\yourLogFile.txt

IF NOT EXIST "C:\ScriptResult" MD C:\ScryptResult
Desktop\BetaComandosAdministrativos.cmd >> C:\ScryptResult\MyFIle.txt

SET Comando=ipconfig
%Comando% > file.txt 2>&1