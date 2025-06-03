## Índice

- Introducción
- Obtener imagen del disco

## Introducción

En esta práctica se va a recopilar información NO VOLÁTIL del disco duro de un sistema Windows 10

---
### Obtener imagen del disco

El primer paso es obtener una imagen del disco del que obtendremos las evidencias.
Para esta tarea, usaré la herramienta **FTP IMAGER**.

![2 2](https://github.com/user-attachments/assets/680e7f81-aa41-4051-8d99-7f0689ccba0c)



Para extraer la imagen, se ejecuta la herramienta y se configuran una serie de parámetros: 

- Fuente de la imagen 
- Formato de la imagen 
- Información adicional de la imagen 
- Destino de la imagen 

Después de esto, se empieza a crear la imagen.

![2 5](https://github.com/user-attachments/assets/bda9544a-78c0-451d-b4f9-26079b99a9fb)


<center>↓</center>

![2 6](https://github.com/user-attachments/assets/becba435-e23a-42bb-9934-5723875a42ea)


<center>↓</center>

![2 7](https://github.com/user-attachments/assets/62a26d3a-6412-48db-a5e5-ad07b3c02fe4)



Ya con la imagen creada se crea un fichero donde nos da información sobre el archivo:

![2 8](https://github.com/user-attachments/assets/0d80835d-a7fa-4323-932d-4c6883147242)


---

### Extracción tabla MFT

Comando:

`fsinfo ntsinfo C:`

Almaceno la información en el archivo **Tabla_MFT.txt**

![2 10 1](https://github.com/user-attachments/assets/4740605f-a0c8-4a24-a147-f983b68b6391)


---
### Almacenar hardware de la máquina

Para obtener la información del hardware de la máquina, voy a usar 2 herramientas:

PsInfo.exe

![3 1](https://github.com/user-attachments/assets/d9bb0f6b-18fe-4aa2-94d1-3eab9c4c70b5)


`systeminfo`

![3 2 1](https://github.com/user-attachments/assets/194dfa79-03e0-4e3e-a889-1766638fba08)

---

### Almacenamiento del contenido de la papelera de reciclaje

La papela de reciclaje se encuentra en **C:\$Recycle.bin** así que accedo a esa ubicación y con un `dir /a` visualizo su contenido.

![4 2](https://github.com/user-attachments/assets/88369481-d245-417c-897d-aabd55dbd635)


Se pueden observar 3 directorios cuyo nombre se asemeja al GUID de los usuarios. 
Accedo a cada directorio y veo su contenido:

![4 3](https://github.com/user-attachments/assets/b0aebfa4-daf8-49a9-bc2d-ff558dd754a9)

↓
![4 4](https://github.com/user-attachments/assets/2e10a78f-375f-4a43-80e6-ecc4bc62b5bd)



También accedo desde el **Explorador de Archivos**:

![4 6](https://github.com/user-attachments/assets/89609482-aecd-4d56-9256-b920efad6835)


↓ 

![4 7](https://github.com/user-attachments/assets/4100f065-3506-43b5-8b19-84e1215efeff)


Con la herramienta **rifiuti-vista.exe** obtengo información sobre cada uno de los directorios que se encuentran en **$Recycle.bin**

`rifiuti-vista.exe “C:\$Recycle.bin\S-1-5-18” -o salida.xml`

![4 11](https://github.com/user-attachments/assets/0bf65f8e-8247-4b65-bee5-f6403baa0dd5)


`rifiuti-vista.exe “C:\$Recycle.bin\S-1-5-21-” -o salida2.xml`
`rifiuti-vista.exe “C:\$Recycle.bin\S-1-5-21” -o salida3.xml`

![4 12](https://github.com/user-attachments/assets/10d31681-6dd4-4608-9a16-c5bac900858c)


Con la información guardada, veo el contenido de los archivos: Los 2 primeros ficheros no contienen nada de información.

![4 13](https://github.com/user-attachments/assets/d33b01c2-2e99-421a-9fe7-c1b6a5b7e924)


Pero el 3º sí que tiene información:

![4 15 1](https://github.com/user-attachments/assets/4ed1a5be-958e-448b-9de1-8725c3b95cd2)


---

### Almacenamiento de ficheros log
Con la herramienta psloglist64 recopilo información sobre los logs del sistema y procedo a visualizar su contenido:

`psloglist64.exe > g:\Guardar_informacion\log.txt`

![6 1](https://github.com/user-attachments/assets/bdceb7ad-184b-470d-a210-f801f1c46dcb)



Dentro del mismo se encuentran cosas interesantes, como algunos registros que indican que “**Este evento se genera cuando se detecta un intento de aprovechar una vulnerabilidad conocida”**.

![6 2](https://github.com/user-attachments/assets/fb733dbe-0247-494e-880b-e2aa8fb8ed31)


---

### Almacenamiento del fichero hosts

Este fichero se encuentra en la ruta **“C:\windows\system32\drivers\etc\hosts"** así que copio su contenido a otro fichero y veo su contenido:

![7 2](https://github.com/user-attachments/assets/04981f5e-d9c2-4331-8bbd-7a84967f2376)


Este archivo permite a los usuarios especificar manualmente una dirección a la que queramos prohibir el acceso.

---

### Almacenamiento de las variables de entorno

Para ver cuáles son las variables de entorno ejecuto el comando Path. 
El resultado de este comando lo almaceno en otro archivo.

`path > variables_de_entorno.txt`

![8 1](https://github.com/user-attachments/assets/02be2ff1-22fe-4574-ad92-87239c700275)

---

### Almacenamiento de tareas programadas

Para recoger información sobre las tareas programadas, almaceno el resultado del comando **schtasks** en un archivo y veo su contenido:

`schtasks > tareas_programadas.txt`

![9 1](https://github.com/user-attachments/assets/6e37af80-06a6-4790-a47f-8efa67ef8dae)

---

### Almacenamiento del log del firewall

El fichero de log del firewall se encuentra en la ruta:
**“C:\windows\system32\logfiles\firewall\pfirewall.log”**

Así que copio su contenido a otro archivo y veo su contenido:

`copy C:\windows\system32\logfiles\firewall\pfirewall.log g:\Guardar_informacion\pfirewall.log` 


![10 1](https://github.com/user-attachments/assets/33202439-d0ae-41f4-9379-5f344329afb8)


![10 2](https://github.com/user-attachments/assets/76ac73ce-e462-451c-8f14-59dfad737a0f)

---

### Almacenamiento de los accesos directos

Para poder obtener todos los accesos directos, uso el siguiente comando de Powershell:

`Get-Childitem -Path C:\ -Filter *.lnk -Recuse | Copy-Item -Destination G:\Guardar_informacion\lnk`

![11 1](https://github.com/user-attachments/assets/fd41aad6-2cdc-4966-a3f4-85d7f83cf39f)


![11 2](https://github.com/user-attachments/assets/7d0c3b04-d7ab-4ff2-9845-6e44b9618fc9)


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

![11 5](https://github.com/user-attachments/assets/447c0aff-e78e-439b-824e-5aeec2213a25)


![11 6](https://github.com/user-attachments/assets/d74565a2-72cc-4dfc-8a57-8a869bd7b81c)


---

### Almacenamiento de las búsquedas realizadas en los navegadores

Para este punto tenía pensado usar la herramienta **MyLastSearch** pero no obtuve ningún resultado (no salía nada) así que usé la herramienta **BrowsingHistoryView** pero sacando solo el historial de los últimas 3 horas:

![13 1](https://github.com/user-attachments/assets/18116d3e-b82d-4300-a9da-1f8768a92010)


↓

![13 2](https://github.com/user-attachments/assets/0759e811-0a65-484d-8a70-1377cc9592d9)

---

### Almacenamiento del historial de navegación

Vuelvo a usar la herramienta BrowsingHistoryView pero esta vez quiero que busque todo el historial, sin limitantes de tiempo.

![14 2](https://github.com/user-attachments/assets/afd0f0ac-df50-4398-9af0-0f92215346a5)

↓

![14 3](https://github.com/user-attachments/assets/bfcd971a-941f-4aeb-948b-5a93bda21663)

---

### Almacenamiento del portapapeles

Para poder obtener información del portapapeles uso la herramienta **Inside Clipboard**. 

En esta captura se puede ver la siguiente información:

- CF_HDROP - Archivos copiados 
- FileNameW - Nombres de archivo en formato Unicode. 
- FileContents - Contenido de los archivos. 
- DataObjectAttributes - Atributos de los datos almacenados

![15 1](https://github.com/user-attachments/assets/dcfd4b95-953c-4d59-a547-afc2ffc723ba)

---

### Almacenamiento del histórico de comandos de consola

El comando **doskey** permite ver cuáles han sido los comandos que se han ejecutado en la consola desde que se ha iniciado sesión en el equipo.

`doskey /history >> historias_de_comandos.txt`

![16 1](https://github.com/user-attachments/assets/04fa1fe0-f881-4ea6-9c01-59ff4c05c348)

---

### Almacenamiento de la estructura de archivos y carpetas ordenados

Ahora voy a guardar la estructura de directorios de todo el equipo, pero ordenándola de 3 formas diferentes:

**Mapa del sistema de ficheros basado en la fecha de modificación**
- `dir C:\ /T:W /S > mapa_modificacion.txt`

![17 1](https://github.com/user-attachments/assets/55cb7f2d-a957-4db6-842f-8f539f1df1fc)


**Mapa del sistema de ficheros basado en la fecha de acceso**
- `dir C:\ /T:A /S > mapa_acceso.txt`

![17 2](https://github.com/user-attachments/assets/de71bc99-6bb7-4bed-b358-b9efc2616c42)


**Mapa del sistema de ficheros basado en la fecha de creación**
- `dir C:\ /T:C /S > mapa_creacion.txt`

![17 3](https://github.com/user-attachments/assets/cd7633a6-5669-48f9-8c96-1dfc94ee3baf)


Y visualizo el contenido de cada fichero (están en orden).

![17 4](https://github.com/user-attachments/assets/13c1ea2b-83bc-4d7c-b6e5-4507012e4cd9)


↓

![17 5](https://github.com/user-attachments/assets/a467e181-6185-4421-81de-ba819b8e3c30)


↓

![17 6](https://github.com/user-attachments/assets/349555e9-dc81-4603-9792-e52858226a2b)


---

### Almacenamiento de usuarios, contraseñas para acceso a recursos

Uso la herramienta **netpass**. 
Antes de ejecutarla hemos de **deshabilitar Windows Defender**, debido a que la detecta como un virus y al ejecutarla la borra de forma inmediata. 
Al ejecutar la herramienta, no aparece ninguna contraseña de usuario, solo una genérica:

![18 1](https://github.com/user-attachments/assets/c101f187-989b-46a2-859e-33ff4b8a4a36)


Paso esta información a un archivo y veo su contenido:

![18 2](https://github.com/user-attachments/assets/cd385ec4-ff42-4352-9ed5-4066f5f05005)


Seguramente esta clave se refiera a alguna configuración especifica de servicios de Windows o a alguna conexión a recursos remotos.

---

### Almacenamiento de contraseñas de los navegadores

Para obtener las contraseñas que se guardan en os navegadores, usaré la herramienta **WebBrowserPassView**.

Al iniciarlo me aparece una contraseña almacenada en el sitio https://www.wigle.net

![19 1](https://github.com/user-attachments/assets/e090fa97-4e40-482a-92a9-9a256f4c8440)


Guardo esa información en un archivo y veo su contenido.

![19 2](https://github.com/user-attachments/assets/9c475bfd-b869-43ec-a40e-8dba46d6ab53)

---

### Almacenamiento de contraseñas de gestores de correo electrónico

Para poder obtener las contraseñas de los correos uso la herramienta **MailPassView** pero al ejecutarla, no sale ningún resultado. 
Si hubiera algún dato, el procedimiento sería el mismo que con el resto de las herramientas, que es guardar la información en un archivo, ver su contenido, sacar el hash del archivo y guardarlo.

![20 1](https://github.com/user-attachments/assets/f0552943-b5ec-4e9c-b087-dafb4a62f01f)

---

### Almacenamiento de redes Wifi

Lo mismo pasa con el almacenamiento de las redes Wifi y es que como mi equipo no tiene antena Wifi y no se ha conectado a ninguna red, no hay ningún registro sobre estas.

![21 1](https://github.com/user-attachments/assets/7b1d8d00-e347-4c04-922b-6e97c1671506)


---

### Almacenamiento del software de inicio Windows

Uso el programa **Whatinstartup** pasando los datos a un archivo:

![22 1](https://github.com/user-attachments/assets/1ad26bad-dd35-4aae-b630-086b54ef1237)


![22 2](https://github.com/user-attachments/assets/8bcd8942-2740-4d02-8781-c960e5db0fc5)


---

### Almacenamiento y verificación de alguna variable de los registros

En la ruta **(HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\RunOnce** se almacena información sobre programas o scripts que se deben ejecutar una sola vez la próxima vez que se inicie el sistema operativo. 

Al momento de hacer la captura, no contenía nada

![23 1](https://github.com/user-attachments/assets/4b0658fb-217f-4d95-88dd-3bd92d4aee64)

---

### Almacenamiento de información sobre dispositivos USB conectados

Esta información se guarda en el archivo **C:\Windows\INF\setupapi.dev.log** así que obtengo su contenido y lo copio en otro fichero.

`type C:\Windows\INF\setupapi.dev.log > usb_conectados.txt`

![24 1](https://github.com/user-attachments/assets/d71bdc82-4f8d-4782-93a0-40e39f08d019)


↓

![24 2](https://github.com/user-attachments/assets/6aa25827-f5ad-4545-b881-0e1ef9d447d7)


---

### Almacenamiento información USB desde el registro de Windows

Dentro del registro se guarda información sobre los USB que han sido conectados en el equipo. Esta información se guarda en las siguientes rutas: 

- **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USB**
- **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Enum\USBSTOR\**

![25 1](https://github.com/user-attachments/assets/af665957-9ef4-4aa4-b472-16c6482f9880)


Exporto ambas claves:

![25 2](https://github.com/user-attachments/assets/a8fe49f7-d4b1-4a44-a70a-88357575e79a)

↓

![25 3](https://github.com/user-attachments/assets/8abb9a1c-5e2e-4044-85c8-f83f210e72f4)


Además de estos registros, también uso la herramienta **usb_history** que me permite ver todos los USB que se han insertado en el equipo. 
Ejecuto el programa y redirecciono la salida a un archivo, del cual veo su contenido.

![25 6](https://github.com/user-attachments/assets/cf866b08-25b3-483e-9163-01524942604a)

---

### Almacenamiento de reglas de excepciones en cortafuegos

Estas excepciones también se guardan en el Registro, más concretamente en la rama: 

- **HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\SharedAccess\ Para meters\FirewallPolicy\FirewallRules**

![26 1](https://github.com/user-attachments/assets/061f9c8c-9d26-4994-b4b7-7ef7ce8b7d24)


La exporto de igual forma que el resto de ramas:

![26 2](https://github.com/user-attachments/assets/e3a70348-3134-46a4-baaf-952174f5de86)


Si busco las excepciones del firewall en Windows y también las busco en el registro que he exportado, podré verlas en ambos lados.

![26 6](https://github.com/user-attachments/assets/3494e5c2-3ea7-4d7b-8bc7-d7bea9c1ae46)

↓ 

![26 7](https://github.com/user-attachments/assets/48fdcf69-206c-4c47-9d8b-7de407940265)


---

### Almacenamiento de la asociación extensión y programa que los abre

En la rama **HKEY_CLASSES_ROOT** se guarda el programa que abre cada extensión de cada archivo.

![27 1](https://github.com/user-attachments/assets/9b6529dc-93a7-4c12-bd4b-def56ab42788)


Por ejemplo, los archivos **.txt** los abre el programa **Notepad.exe**

![27 2 1](https://github.com/user-attachments/assets/204335ab-118f-4db9-a1fd-429488d54ce5)


Y las primeras extensiones que modifican los virus, son los .exe

![27 2 2](https://github.com/user-attachments/assets/58ca39b0-73ba-4ce3-b6ac-2e2c661f418e)

---

### Almacenamiento del registro. Lista de aplicaciones instaladas

Las aplicaciones que se han instalado en el sistema también se guardan en el registro, más específicamente en la rama: 
- **HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall**


![28 1](https://github.com/user-attachments/assets/e623f18d-8f2d-4090-9c7c-70517ecdb9ac)



