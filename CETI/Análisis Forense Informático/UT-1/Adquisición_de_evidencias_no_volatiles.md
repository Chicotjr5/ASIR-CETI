## Índice

- Introducción
- Obtener imagen del disco

## Introducción

En esta práctica se va a recopilar información NO VOLÁTIL del disco duro de un sistema Windows 10

---
### Obtener imagen del disco

El primer paso es obtener una imagen del disco del que obtendremos las evidencias.
Para esta tarea, usaré la herramienta **FTP IMAGER**.

![[2.2.png]]


Para extraer la imagen, se ejecuta la herramienta y se configuran una serie de parámetros: 

- Fuente de la imagen 
- Formato de la imagen 
- Información adicional de la imagen 
- Destino de la imagen 

Después de esto, se empieza a crear la imagen.

![[2.5.png]]

<center>↓</center>

![[2.6.png]]

<center>↓</center>

![[2.7.png]]


Ya con la imagen creada se crea un fichero donde nos da información sobre el archivo:

![[2.8.png]]

---

### Extracción tabla MFT

Comando:

`fsinfo ntsinfo C:`

Almaceno la información en el archivo **Tabla_MFT.txt**

![[2.10.1.png]]

---
### Almacenar hardware de la máquina

Para obtener la información del hardware de la máquina, voy a usar 2 herramientas:

PsInfo.exe
![[3.1.png]]

`systeminfo`

![[3.2.1.png]]

---

### Almacenamiento del contenido de la papelera de reciclaje

La papela de reciclaje se encuentra en **C:\$Recycle.bin** así que accedo a esa ubicación y con un `dir /a` visualizo su contenido.

![[4.2.png]]

Se pueden observar 3 directorios cuyo nombre se asemeja al GUID de los usuarios. 
Accedo a cada directorio y veo su contenido:

![[4.3.png]]
↓
![[4.4.png]]


También accedo desde el **Explorador de Archivos**:

![[4.6.png]]

↓ 

![[4.7.png]]

Con la herramienta **rifiuti-vista.exe** obtengo información sobre cada uno de los directorios que se encuentran en **$Recycle.bin**

`rifiuti-vista.exe “C:\$Recycle.bin\S-1-5-18” -o salida.xml`

![[4.11.png]]

`rifiuti-vista.exe “C:\$Recycle.bin\S-1-5-21-” -o salida2.xml`
`rifiuti-vista.exe “C:\$Recycle.bin\S-1-5-21” -o salida3.xml`

![[4.12.png]]

Con la información guardada, veo el contenido de los archivos: Los 2 primeros ficheros no contienen nada de información.

![[4.13.png]]

Pero el 3º sí que tiene información:

![[4.15.1.png]]

---

### Almacenamiento de ficheros log
Con la herramienta psloglist64 recopilo información sobre los logs del sistema y procedo a visualizar su contenido:

`psloglist64.exe > g:\Guardar_informacion\log.txt`

![[6.1.png]]


Dentro del mismo se encuentran cosas interesantes, como algunos registros que indican que “**Este evento se genera cuando se detecta un intento de aprovechar una vulnerabilidad conocida”**.

![[6.2.png]]

---

### Almacenamiento del fichero hosts

Este fichero se encuentra en la ruta **“C:\windows\system32\drivers\etc\hosts"** así que copio su contenido a otro fichero y veo su contenido:

![[7.2.png]]

Este archivo permite a los usuarios especificar manualmente una dirección a la que queramos prohibir el acceso.

---

### Almacenamiento de las variables de entorno

Para ver cuáles son las variables de entorno ejecuto el comando Path. 
El resultado de este comando lo almaceno en otro archivo.

`path > variables_de_entorno.txt`

![[8.1.png]]


---

### Almacenamiento de tareas programadas

Para recoger información sobre las tareas programadas, almaceno el resultado del comando **schtasks** en un archivo y veo su contenido:

`schtasks > tareas_programadas.txt`

![[9.1.png]]

---

### Almacenamiento del log del firewall

El fichero de log del firewall se encuentra en la ruta:
**“C:\windows\system32\logfiles\firewall\pfirewall.log”**

Así que copio su contenido a otro archivo y veo su contenido:

`copy C:\windows\system32\logfiles\firewall\pfirewall.log g:\Guardar_informacion\pfirewall.log` 


![[10.1.png]]

![[10.2.png]]

---
### Almacenamiento de los accesos directos

Para poder obtener todos los accesos directos, uso el siguiente comando de Powershell:

`Get-Childitem -Path C:\ -Filter *.lnk -Recuse | Copy-Item -Destination G:\Guardar_informacion\lnk`

![[11.1.png]]


![[11.2.png]]

Ya con todos los **.lnk** uso la herramienta **lnk_parser_cmd** para obtener más información de estos.
La información obtenida es: 
- Fecha de modificación
- Fecha de acceso
- Fecha de creación
- Nombre 
- Ruta
- Hash MD5
- Fecha de modificación del link
- Fecha de acceso al link
- Fecha de creación del link
- Tamaño 
- Tamaño del archivo

![[11.5.png]]

![[11.6.png]]

---

### Almacenamiento de las búsquedas realizadas en los navegadores

Para este punto tenía pensado usar la herramienta **MyLastSearch** pero no obtuve ningún resultado (no salía nada) así que usé la herramienta **BrowsingHistoryView** pero sacando solo el historial de los últimas 3 horas:

![[13.1.png]]

↓

![[13.2.png]]


---

### Almacenamiento del historial de navegación

Vuelvo a usar la herramienta BrowsingHistoryView pero esta vez quiero que busque todo el historial, sin limitantes de tiempo.

![[14.2.png]]

↓

![[14.3.png]]

---

### Almacenamiento del portapapeles

Para poder obtener información del portapapeles uso la herramienta **Inside Clipboard**. 

En esta captura se puede ver la siguiente información:

- CF_HDROP - Archivos copiados 
- FileNameW - Nombres de archivo en formato Unicode. 
- FileContents - Contenido de los archivos. 
- DataObjectAttributes - Atributos de los datos almacenados

![[15.1.png]]

---

### Almacenamiento del histórico de comandos de consola

El comando **doskey** permite ver cuáles han sido los comandos que se han ejecutado en la consola desde que se ha iniciado sesión en el equipo.

`doskey /history >> historias_de_comandos.txt`

![[16.1.png]]

---

### Almacenamiento de la estructura de archivos y carpetas ordenados

Ahora voy a guardar la estructura de directorios de todo el equipo, pero ordenándola de 3 formas diferentes:

**Mapa del sistema de ficheros basado en la fecha de modificación**
- `dir C:\ /T:W /S > mapa_modificacion.txt`

![[17.1.png]]

**Mapa del sistema de ficheros basado en la fecha de acceso**
- `dir C:\ /T:A /S > mapa_acceso.txt`

![[17.2 1.png]]

**Mapa del sistema de ficheros basado en la fecha de creación**
- `dir C:\ /T:C /S > mapa_creacion.txt`

![[17.3.png]]

Y visualizo el contenido de cada fichero (están en orden).

![[17.4.png]]

↓

![[17.5.png]]

↓

![[17.6.png]]

---

### Almacenamiento de usuarios, contraseñas para acceso a recursos

Uso la herramienta **netpass**. 
Antes de ejecutarla hemos de **deshabilitar Windows Defender**, debido a que la detecta como un virus y al ejecutarla la borra de forma inmediata. 
Al ejecutar la herramienta, no aparece ninguna contraseña de usuario, solo una genérica:

![[18.1.png]]

Paso esta información a un archivo y veo su contenido:

![[18.2.png]]

Seguramente esta clave se refiera a alguna configuración especifica de servicios de Windows o a alguna conexión a recursos remotos.

---

### Almacenamiento de contraseñas de los navegadores

Para obtener las contraseñas que se guardan en os navegadores, usaré la herramienta **WebBrowserPassView**.

Al iniciarlo me aparece una contraseña almacenada en el sitio https://www.wigle.net

![[19.1.png]]

Guardo esa información en un archivo y veo su contenido.

![[19.2.png]]


---

### Almacenamiento de contraseñas de gestores de correo electrónico

Para poder obtener las contraseñas de los correos uso la herramienta **MailPassView** pero al ejecutarla, no sale ningún resultado. 
Si hubiera algún dato, el procedimiento sería el mismo que con el resto de las herramientas, que es guardar la información en un archivo, ver su contenido, sacar el hash del archivo y guardarlo.

![[20.1.png]]

---

### Almacenamiento de redes Wifi

Lo mismo pasa con el almacenamiento de las redes Wifi y es que como mi equipo no tiene antena Wifi y no se ha conectado a ninguna red, no hay ningún registro sobre estas.

![[21.1.png]]


---

### Almacenamiento del software de inicio Windows

Uso el programa **Whatinstartup** pasando los datos a un archivo:

![[22.1.png]]

![[22.2.png]]

---

### Almacenamiento y verificación de alguna variable de los registros

En la ruta **(HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce** se almacena información sobre programas o scripts que se deben ejecutar una sola vez la próxima vez que se inicie el sistema operativo. 

Al momento de hacer la captura, no contenía nada

![[23.1.png]]

---

### Almacenamiento de información sobre dispositivos USB conectados

Esta información se guarda en el archivo **C:\Windows\INF\setupapi.dev.log** así que obtengo su contenido y lo copio en otro fichero.

`type C:\Windows\INF\setupapi.dev.log > usb_conectados.txt`

![[24.1.png]]

↓

![[24.2.png]]

---

### Almacenamiento información USB desde el registro de Windows

Dentro del registro se guarda información sobre los USB que han sido conectados en el equipo. Esta información se guarda en las siguientes rutas: 

- **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USB**
- **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USBSTOR\**

![[25.1.png]]

Exporto ambas claves:

![[25.2.png]]

↓

![[25.3.png]]

Además de estos registros, también uso la herramienta **usb_history** que me permite ver todos los USB que se han insertado en el equipo. 
Ejecuto el programa y redirecciono la salida a un archivo, del cual veo su contenido.

![[25.6.png]]

---

### Almacenamiento de reglas de excepciones en cortafuegos

Estas excepciones también se guardan en el Registro, más concretamente en la rama: 

- **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\ Para meters\FirewallPolicy\FirewallRules**

![[26.1.png]]

La exporto de igual forma que el resto de ramas:

![[26.2.png]]


Si busco las excepciones del firewall en Windows y también las busco en el registro que he exportado, podré verlas en ambos lados.

![[26.6.png]]

↓ 

![[26.7.png]]

---

### Almacenamiento de la asociación extensión y programa que los abre

En la rama **HKEY_CLASSES_ROOT** se guarda el programa que abre cada extensión de cada archivo.

![[27.1.png]]

Por ejemplo, los archivos **.txt** los abre el programa **Notepad.exe**

![[27.2.1.png]]

Y las primeras extensiones que modifican los virus, son los .exe

![[27.2.2.png]]


---

### Almacenamiento del registro. Lista de aplicaciones instaladas

Las aplicaciones que se han instalado en el sistema también se guardan en el registro, más específicamente en la rama: 
- **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall**

![[28.1.png]]


