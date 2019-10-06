@ECHO OFF

setlocal enabledelayedexpansion

TITLE Advanced Device Administrations

IF errorlevel 1 GOTO Error_Inesperado

COLOR 4F

:SalidaCMD
IF errorlevel 1 GOTO Error_Inesperado

ECHO Advanced Device Administrations && ECHO.(c) 2019 DCTech97. All Rights Reserved. & ECHO.

SET DEBUGMODE="Falso"



::Menu principal
:Principal
IF errorlevel 1 GOTO Error_Inesperado

SET/p Comando= ^Enter ^a ^command^>

set var=%Comando%

IF errorlevel 1 GOTO Error_Inesperado

::Si son estos comandos ir a...
IF "!var!"=="" GOTO Principal
IF %Comando% == Enable ECHO. && GOTO Verificacion
IF %Comando% == enable ECHO. && GOTO Verificacion
IF %Comando% == Disable ECHO. && GOTO Verificacion
IF %Comando% == disable ECHO. && GOTO Verificacion
IF %Comando% == Version GOTO Version
IF %Comando% == version GOTO Version
IF %Comando% == Key GOTO ClaveDeProducto
IF %Comando% == key GOTO ClaveDeProducto
IF %Comando% == Info GOTO InformacionCompleta
IF %Comando% == info GOTO InformacionCompleta
IF %Comando% == Export ECHO. && GOTO Exportar
IF %Comando% == export ECHO. && GOTO Exportar
IF %Comando% == Help GOTO Ayuda
IF %Comando% == help GOTO Ayuda
IF %Comando% == Dark GOTO DarkMode
IF %Comando% == dark GOTO DarkMode
IF %Comando% == Light GOTO LightMode
IF %Comando% == light GOTO LightMode
IF %Comando% == CMD GOTO CMD ::Nuevo
IF %Comando% == cmd GOTO CMD
IF %Comando% == "ECHO ON" GOTO Echo-On
IF %Comando% == "Echo On" GOTO Echo-On
IF %Comando% == "echo on" GOTO Echo-On
IF %Comando% == "ECHO OFF" GOTO Echo-Off
IF %Comando% == "Echo Off" GOTO Echo-Off
IF %Comando% == "echo off" GOTO Echo-Off ::Nuevo Fin
IF %Comando% == Reset GOTO Reiniciar
IF %Comando% == reset GOTO Reiniciar
IF %Comando% == Exit GOTO Salir
IF %Comando% == exit GOTO Salir
IF %Comando% == Debug ( SET DEBUGMODE="Verdadero" && ECHO. && ECHO Debug Mode On && GOTO PrePrincipal)
IF %Comando% == debug ( SET DEBUGMODE="Verdadero" && ECHO. && ECHO Debug Mode On && GOTO PrePrincipal)
IF %Comando%==[] GOTO Principal

::Si no son estos comandos ir a Error
IF NOT %Comando% == Enable GOTO Error
IF NOT %Comando% == enable GOTO Error
IF NOT %Comando% == Disable GOTO Error
IF NOT %Comando% == disable GOTO Error
IF NOT %Comando% == Version GOTO Error
IF NOT %Comando% == version GOTO Error
IF NOT %Comando% == Key GOTO Error
IF NOT %Comando% == key GOTO Error
IF NOT %Comando% == Info GOTO Error
IF NOT %Comando% == info GOTO Error
IF NOT %Comando% == Export ECHO. && GOTO Error
IF NOT %Comando% == export ECHO. && GOTO Error
IF NOT %Comando% == Help GOTO Error
IF NOT %Comando% == help GOTO Error
IF NOT %Comando% == Dark GOTO Error
IF NOT %Comando% == dark GOTO Error
IF NOT %Comando% == CMD GOTO Error
IF NOT %Comando% == cmd GOTO Error
IF NOT %Comando% == "ECHO ON" GOTO Error
IF NOT %Comando% == "Echo On" GOTO Error
IF NOT %Comando% == "echo on" GOTO Error
IF NOT %Comando% == "ECHO OFF" GOTO Error
IF NOT %Comando% == "Echo Off" GOTO Error
IF NOT %Comando% == "echo off" GOTO Error
IF NOT %Comando% == Reset GOTO Error
IF NOT %Comando% == reset GOTO Error
IF NOT %Comando% == Light GOTO Error
IF NOT %Comando% == light GOTO Error
IF NOT %Comando% == Exit GOTO Error
IF NOT %Comando% == exit GOTO Error
IF NOT %Comando% == Debug GOTO Error
IF NOT %Comando% == debug GOTO Error


::Verificacion de Ussuario si esta seguro si quiere activar o desactivar la cuenta
:Verificacion
set /p Verificacion=Are you sure? [Y/N]^>

SET var=%Verificacion%

IF "!var!"=="" GOTO Verificacion%
IF %Comando% == Enable ( IF %Verificacion% == Y  GOTO Activar)
IF %Comando% == Enable ( IF %Verificacion% == y  GOTO Activar)
IF %Comando% == enable ( IF %Verificacion% == Y  GOTO Activar)
IF %Comando% == enable ( IF %Verificacion% == y  GOTO Activar)
IF %Comando% == Enable ( IF %Verificacion% == N  GOTO PrePrincipal)
IF %Comando% == Enable ( IF %Verificacion% == n  GOTO PrePrincipal)
IF %Comando% == enable ( IF %Verificacion% == N  GOTO PrePrincipal)
IF %Comando% == enable ( IF %Verificacion% == n  GOTO PrePrincipal)
IF %Comando% == Enable ( IF %Verificacion% == Help ECHO. && GOTO AyudaVerificacion)
IF %Comando% == Enable ( IF %Verificacion% == help ECHO. && GOTO AyudaVerificacion)
IF %Comando% == enable ( IF %Verificacion% == Help ECHO. && GOTO AyudaVerificacion)
IF %Comando% == enable ( IF %Verificacion% == help ECHO. && GOTO AyudaVerificacion)
IF %Comando% == Disable ( IF %Verificacion% == Y GOTO Desactivar)
IF %Comando% == Disable ( IF %Verificacion% == y GOTO Desactivar)
IF %Comando% == disable ( IF %Verificacion% == Y GOTO Desactivar)
IF %Comando% == disable ( IF %Verificacion% == y GOTO Desactivar)
IF %Comando% == Disable ( IF %Verificacion% == N GOTO PrePrincipal)
IF %Comando% == Disable ( IF %Verificacion% == n GOTO PrePrincipal)
IF %Comando% == disable ( IF %Verificacion% == N GOTO PrePrincipal)
IF %Comando% == disable ( IF %Verificacion% == n GOTO PrePrincipal)
IF %Comando% == Disable ( IF %Verificacion% == Help ECHO. && GOTO AyudaVerificacion)
IF %Comando% == Disable ( IF %Verificacion% == help ECHO. && GOTO AyudaVerificacion)
IF %Comando% == disable ( IF %Verificacion% == Help ECHO. && GOTO AyudaVerificacion)
IF %Comando% == disable ( IF %Verificacion% == help ECHO. && GOTO AyudaVerificacion)

IF %Comando% == Enable ( IF NOT %Verificacion% == Y  GOTO ErrorVerificacion)
IF %Comando% == Enable ( IF NOT %Verificacion% == y  GOTO ErrorVerificacion)
IF %Comando% == enable ( IF NOT %Verificacion% == Y  GOTO ErrorVerificacion)
IF %Comando% == enable ( IF NOT %Verificacion% == y  GOTO ErrorVerificacion)
IF %Comando% == Enable ( IF NOT %Verificacion% == N  GOTO ErrorVerificacion)
IF %Comando% == Enable ( IF NOT %Verificacion% == n  GOTO ErrorVerificacion)
IF %Comando% == enable ( IF NOT %Verificacion% == N  GOTO ErrorVerificacion)
IF %Comando% == enable ( IF NOT %Verificacion% == n  GOTO ErrorVerificacion)
IF %Comando% == Enable ( IF NOT %Verificacion% == Help ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Enable ( IF NOT %Verificacion% == help ECHO. && GOTO ErrorVerificacion)
IF %Comando% == enable ( IF NOT %Verificacion% == Help ECHO. && GOTO ErrorVerificacion)
IF %Comando% == enable ( IF NOT %Verificacion% == help ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Disable ( IF NOT %Verificacion% == Y GOTO ErrorVerificacion)
IF %Comando% == Disable ( IF NOT %Verificacion% == y GOTO ErrorVerificacion)
IF %Comando% == disable ( IF NOT %Verificacion% == Y GOTO ErrorVerificacion)
IF %Comando% == disable ( IF NOT %Verificacion% == y GOTO ErrorVerificacion)
IF %Comando% == Disable ( IF NOT %Verificacion% == N GOTO ErrorVerificacion)
IF %Comando% == Disable ( IF NOT %Verificacion% == n GOTO ErrorVerificacion)
IF %Comando% == disable ( IF NOT %Verificacion% == N GOTO ErrorVerificacion)
IF %Comando% == disable ( IF NOT %Verificacion% == n GOTO ErrorVerificacion)
IF %Comando% == Disable ( IF NOT %Verificacion% == Help ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Disable ( IF NOT %Verificacion% == help ECHO. && GOTO ErrorVerificacion)
IF %Comando% == disable ( IF NOT %Verificacion% == Help ECHO. && GOTO ErrorVerificacion)
IF %Comando% == disable ( IF NOT %Verificacion% == help ECHO. && GOTO ErrorVerificacion)


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
ECHO Enabling administrator account:
ECHO.
net user administrator /active:yes
IF errorlevel 1 GOTO Sin_Permisos
ECHO ------------------------------------------------------------------------------------------------------------------------
ECHO.
ECHO establishing administrator password:
ECHO.
net user administrator "Adm1n15tr@t0r"
IF errorlevel 1 GOTO Sin_Permisos
SET Comando=%
GOTO PrePrincipal


::Desactivar la cuenta de Administrador
:Desactivar
ECHO Disabling administrador account:
ECHO.
net user administrator /active:no
IF errorlevel 1 GOTO Sin_Permisos
ECHO ------------------------------------------------------------------------------------------------------------------------
ECHO.
ECHO Unestablishing administrator account:
ECHO.
net user administrator ""
IF errorlevel 1 GOTO Sin_Permisos
SET Comando=%
GOTO PrePrincipal


::Mostrar la version de Windows con el filtro "Sistema Operativo"
:Version
IF %Comando% == Export ( IF EXIST "C:\ScryptResult\SystemVersion.txt" ( SET DocumentoExiste=SystemVersion.txt) && GOTO DocumentoExiste)
IF %Comando% == export ( IF EXIST "C:\ScryptResult\SystemVersion.txt" ( SET DocumentoExiste=SystemVersion.txt) && GOTO DocumentoExiste)
IF %Comando% == Export systeminfo | findstr /C:"OS" >> C:\ScryptResult\SystemVersion.txt && ECHO. && ECHO Exportado correctamente en C:\ScryptResult\SystemVersion.txt && GOTO PrePrincipal
IF %Comando% == export systeminfo | findstr /C:"OS" >> C:\ScryptResult\SystemVersion.txt && ECHO. && ECHO Exportado correctamente en C:\ScryptResult\SystemVersion.txt && GOTO PrePrincipal
ECHO.
systeminfo | findstr /C:"OS"
SET Comando=%
SET Exportar=%
GOTO PrePrincipal


::Mostrar la clave de producto
:ClaveDeProducto
IF %Comando% == Exportar ( IF EXIST "C:\ScryptResult\ProductKey.txt" ( SET DocumentoExiste=ProductKey.txt) && GOTO DocumentoExiste)
IF %Comando% == exportar ( IF EXIST "C:\ScryptResult\ProductKey.txt" ( SET DocumentoExiste=ProductKey.txt) && GOTO DocumentoExiste)
IF %Comando% == Exportar wmic os get "SerialNumber" | find /v "SerialNumber" >> C:\ScryptResult\ProductKey.txt
IF %Comando% == exportar wmic os get "SerialNumber" | find /v "SerialNumber" >> C:\ScryptResult\ProductKey.txt
IF %Comando% == Exportar ECHO ------------------------------------------------------------------------------------------------------------------------ >> C:\ScryptResult\ProductKey.txt
IF %Comando% == exportar ECHO ------------------------------------------------------------------------------------------------------------------------ >> C:\ScryptResult\ProductKey.txt
IF %Comando% == Exportar wmic path softwarelicensingservice get OA3xOriginalProductKey >> C:\ScryptResult\ProductKey.txt && ECHO Exportado correctamente en C:\ScryptResult\ProductKey.txt && GOTO PrePrincipal
IF %Comando% == exportar wmic path softwarelicensingservice get OA3xOriginalProductKey >> C:\ScryptResult\ProductKey.txt && ECHO Exportado correctamente en C:\ScryptResult\ProductKey.txt && GOTO PrePrincipal
ECHO ID del producto
wmic os get "SerialNumber" | find /v "SerialNumber"
wmic path softwarelicensingservice get OA3xOriginalProductKey
SET Comando=%
SET Exportar=%
GOTO PrePrincipal


::Muestra toda la informacion sobre es sistema
:InformacionCompleta
IF %Comando% == Exportar ( IF EXIST "C:\ScryptResult\CompleteInfo.txt" ( SET DocumentoExiste=CompleteInfo.txt) && GOTO DocumentoExiste)
IF %Comando% == exportar ( IF EXIST "C:\ScryptResult\CompleteInfo.txt" ( SET DocumentoExiste=CompleteInfo.txt) && GOTO DocumentoExiste)
IF %Comando% == Exportar systeminfo >> C:\ScryptResult\CompleteInfo.txt
IF %Comando% == exportar systeminfo >> C:\ScryptResult\CompleteInfo.txt
IF %Comando% == Exportar ECHO ------------------------------------------------------------------------------------------------------------------------ >> C:\ScryptResult\CompleteInfo.txt
IF %Comando% == exportar ECHO ------------------------------------------------------------------------------------------------------------------------ >> C:\ScryptResult\CompleteInfo.txt
IF %Comando% == Exportar ipconfig /all >> C:\ScryptResult\CompleteInfo.txt && ECHO Exportado correctamente en C:\ScryptResult\CompleteInfo.txt && GOTO PrePrincipal
IF %Comando% == exportar ipconfig /all >> C:\ScryptResult\CompleteInfo.txt && ECHO Exportado correctamente en C:\ScryptResult\CompleteInfo.txt && GOTO PrePrincipal
systeminfo
ECHO.
ECHO ------------------------------------------------------------------------------------------------------------------------
ipconfig /all
SET Comando=%
SET Exportar=%
GOTO PrePrincipal


::Exporta la informaxion en un documento
:Exportar
SET /p Exportar=Waat would you like to export^?^>

SET var=%Exportar%

IF "!var!"=="" GOTO Exportar
IF EXIST "C:\ScryptResult" GOTO ExportarProcedimiento
IF NOT EXIST "C:\ScryptResult" MD C:\ScryptResult
GOTO ExportarProcedimiento


::Sigue la exportación
:ExportarProcedimiento
IF %Exportar% == Version ECHO. && GOTO Version
IF %Exportar% == version ECHO. && GOTO Version
IF %Exportar% == Key ECHO. && GOTO ClaveDeProducto
IF %Exportar% == key ECHO. && GOTO ClaveDeProducto
IF %Exportar% == Info ECHO. && GOTO InformacionCompleta
IF %Exportar% == info ECHO. && GOTO InformacionCompleta
IF %Exportar% == Help ECHO. && GOTO AyudaExportacion
IF %Exportar% == help ECHO. && GOTO AyudaExportacion
IF %Exportar% == Exit ECHO. && GOTO PrePrincipal
IF %Exportar% == exit ECHO. && GOTO PrePrincipal

IF NOT %Exportar% == Version ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == version ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == Key ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == key ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == Info ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == info ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == Help ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == help ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == Exit ECHO. && GOTO ErrorCExportar
IF NOT %Exportar% == exit ECHO. && GOTO ErrorCExportar


::Mostrar todos los comandos que se pueden utilizar
:Ayuda
ECHO Enable		Enable administrator account
ECHO Disable		Disable administrator account
ECHO Version		Displays the version of Windows
ECHO Key		Displays product key
ECHO Info		Full device information
ECHO Export		Export the information requested
ECHO CMD		Execute the Command Prompt
ECHO "ECHO ON/OFF"	Show/Hide intern code
ECHO Dark		Establish dark console mode
ECHO Light		Establish light console mode
ECHO Help		Show all commands
ECHO Reset		Resets the whole console
ECHO Exit		Exit the console
IF %DEBUGMODE% == "Verdadero" GOTO Debug 
::ECHO					                     ©DCTech97 2019
SET Comando=%
GOTO PrePrincipal


::Muestra los comandos para la opcion de exportaciona a documento
:AyudaExportacion
ECHO Version		Export in a document all the information about the Verison of Windows
ECHO Key		Export in a document the Product Key
ECHO Info		Export in a document the full information of the PC
ECHO Salir		Exit from Export to a document option
ECHO.
SET Exportar=%
GOTO Exportar


:AyudaVerificacion
ECHO S/N		Verify the ativation or deactivation  of the Local Administrator Account
ECHO Ayuda		Show all the commands in this option
ECHO ________________________________________________________________________________________________________________________
ECHO.
GOTO Verificacion


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
COLOR 4F
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
COLOR 4f
CLS.
SET Comando=%
GOTO SalidaCMD


::Si el comando introducido no coinceide con ninguno, mustra este mensaje
:Error
ECHO "%Comando%" is an unknown command.
SET Comando=%
GOTO PrePrincipal


::Mensaje para comando de verificacion desconocido
:ErrorVerificacion
ECHO "%Verificacion%" is an unknown command.
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
ECHO EThe document (%DocumentoExiste%) you have requested already exists.
ECHO Please go to "C:\ScryptResult" to view the document.
SET Exportar=%
GOTO PrePrincipal


::Mensaje para error desconocido
:Error_Inesperado
ECHO Unexpected Error!
ECHO.
SET Comando=%
PAUSE
EXIT


::Si el ussuario ha abierto este documento sin permisos administrativos muestra este mensaje
:Sin_Permisos
ECHO ________________________________________________________________________________________________________________________
ECHO.
ECHO You do not have enough privilages to enable or disable an administrator account.
ECHO.
SET Comando=%
TIMEOUT 20
EXIT


::Salir de la consola
:Salir
TIMEOUT 5
SET Comando=%
EXIT


::DEBUG
:Debug
ECHO.
ECHO					    Advanced Device Administrations [Version 5.4.0] && ECHO.					(c) 2019 DCTech97. All Rights Reserved. && ECHO. 						    Final Version.
SET Comando=%
GOTO PrePrincipal