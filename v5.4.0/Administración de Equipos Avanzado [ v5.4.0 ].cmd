@ECHO OFF

setlocal enabledelayedexpansion

TITLE Administración de Equipos Avanzado

IF errorlevel 1 ECHO. && GOTO Error_Inesperado

COLOR 4F

:SalidaCMD
IF errorlevel 1 ECHO. && GOTO Error_Inesperado

ECHO Administracion de Equipos Avanzado && ECHO.(c) 2019 DCTech97. Todos los derechos reservados. & ECHO.

SET DEBUGMODE="Falso"



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
IF %Comando% == Debug ( SET DEBUGMODE="Verdadero" && ECHO. && ECHO Debug Mode On && GOTO PrePrincipal)
IF %Comando% == debug ( SET DEBUGMODE="Verdadero" && ECHO. && ECHO Debug Mode On && GOTO PrePrincipal)
IF %Comando%==[] GOTO Principal

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
IF NOT %Comando% == Exportar ECHO. && GOTO Error
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


::Verificacion de Usuario si esta seguro si quiere activar o desactivar la cuenta
:Verificacion
set /p Verificacion=Estas Seguro/a? [S/N]^>

SET var=%Verificacion%

IF "!var!"=="" GOTO Verificacion
IF %Comando% == Activar ( IF %Verificacion% == S ECHO. && GOTO Activar)
IF %Comando% == Activar ( IF %Verificacion% == s ECHO. && GOTO Activar)
IF %Comando% == activar ( IF %Verificacion% == S ECHO. && GOTO Activar)
IF %Comando% == activar ( IF %Verificacion% == s ECHO. && GOTO Activar)
IF %Comando% == Activar ( IF %Verificacion% == N ECHO. && GOTO PrePrincipal)
IF %Comando% == Activar ( IF %Verificacion% == n ECHO. && GOTO PrePrincipal)
IF %Comando% == activar ( IF %Verificacion% == N ECHO. && GOTO PrePrincipal)
IF %Comando% == activar ( IF %Verificacion% == n ECHO. && GOTO PrePrincipal)
IF %Comando% == Activar ( IF %Verificacion% == Ayuda ECHO. && GOTO AyudaVerificacion)
IF %Comando% == Activar ( IF %Verificacion% == ayuda ECHO. && GOTO AyudaVerificacion)
IF %Comando% == activar ( IF %Verificacion% == Ayuda ECHO. && GOTO AyudaVerificacion)
IF %Comando% == activar ( IF %Verificacion% == ayuda ECHO. && GOTO AyudaVerificacion)
IF %Comando% == Desactivar ( IF %Verificacion% == S ECHO. && GOTO Desactivar)
IF %Comando% == Desactivar ( IF %Verificacion% == s ECHO. && GOTO Desactivar)
IF %Comando% == desactivar ( IF %Verificacion% == S ECHO. && GOTO Desactivar)
IF %Comando% == desactivar ( IF %Verificacion% == s ECHO. && GOTO Desactivar)
IF %Comando% == Desactivar ( IF %Verificacion% == N ECHO. && GOTO PrePrincipal)
IF %Comando% == Desactivar ( IF %Verificacion% == n ECHO. && GOTO PrePrincipal)
IF %Comando% == desactivar ( IF %Verificacion% == N ECHO. && GOTO PrePrincipal)
IF %Comando% == desactivar ( IF %Verificacion% == n ECHO. && GOTO PrePrincipal)
IF %Comando% == Desactivar ( IF %Verificacion% == Ayuda ECHO. && GOTO AyudaVerificacion)
IF %Comando% == Desactivar ( IF %Verificacion% == ayuda ECHO. && GOTO AyudaVerificacion)
IF %Comando% == desactivar ( IF %Verificacion% == Ayuda ECHO. && GOTO AyudaVerificacion)
IF %Comando% == desactivar ( IF %Verificacion% == ayuda ECHO. && GOTO AyudaVerificacion)

IF %Comando% == Activar ( IF NOT %Verificacion% == S ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Activar ( IF NOT %Verificacion% == s ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == S ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == s ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Activar ( IF NOT %Verificacion% == N ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Activar ( IF NOT %Verificacion% == n ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == N ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == n ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Activar ( IF NOT %Verificacion% == Ayuda ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Activar ( IF NOT %Verificacion% == ayuda ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == Ayuda ECHO. && GOTO ErrorVerificacion)
IF %Comando% == activar ( IF NOT %Verificacion% == ayuda ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == S ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == s ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == S ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == s ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == N ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == n ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == N ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == n ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == Ayuda ECHO. && GOTO ErrorVerificacion)
IF %Comando% == Desactivar ( IF NOT %Verificacion% == ayuda ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == Ayuda ECHO. && GOTO ErrorVerificacion)
IF %Comando% == desactivar ( IF NOT %Verificacion% == ayuda ECHO. && GOTO ErrorVerificacion)


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
net user administrator "Adm1n15tr@d0r"
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


::Muestrar la version de Windows con el filtro "Sistema Operativo"
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


::Muestrar la clave de producto
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


::Muestra toda la informacion sobre es sistema
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
ECHO CMD		Ejecuta el Simbolo del Sistema nativo de Windows
ECHO "ECHO ON/OFF"	Muestra/Esconde el codigo interno
ECHO Oscuro		Establecer la consola en el modo oscuro
ECHO Claro		Establecer la consola en el modo claro
ECHO Ayuda		Muestra los comandos
ECHO Reiniciar	Reinicia la consola
ECHO Salir		Salir de la consola
IF %DEBUGMODE% == "Verdadero" GOTO Debug 
::ECHO					                     ©DCTech97 2019
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


:AyudaVerificacion
ECHO S/N		Verificar la activacion o desactivacion de la Cuenta de Administrador Local
ECHO Ayuda		Muestra todos los comandos de esta opcion
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


::DEBUG
:Debug
ECHO.
ECHO					    Administracion de Equipos Avanzado [Version 5.4.0] && ECHO.				    (c) 2019 DCTech97. Todos los derechos reservados. && ECHO. 						      Version Final.
SET Comando=%
GOTO PrePrincipal