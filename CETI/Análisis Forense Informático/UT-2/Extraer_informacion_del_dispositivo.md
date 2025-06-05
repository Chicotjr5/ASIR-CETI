## Índice
- [Introducción](#introducción)
- [Extracción de archivos log](#extracción-de-archivos-log)
- [Obtén toda la información del sistema](#obtén-toda-la-información-del-sistema)
- [Envío de archivo desde el PC al dispositivo conectado](#envío-de-archivo-desde-el-pc-al-dispositivo-conectado)
- [Envío de archivo desde Android al PC](#envío-de-archivo-desde-android-al-pc)
- [Instalar y desinstalar archivo APK](#instalar-y-desinstalar-archivo-apk)
- [Controlar el dispositivo en modo texto](#controlar-el-dispositivo-en-modo-texto)
- [Guardar una captura de pantalla del móvil y guardarla en su memoria](#guardar-una-captura-de-pantalla-del-móvil-y-guardarla-en-su-memoria)
- [Paquetes instalados en el teléfono](#paquetes-instalados-en-el-teléfono)
- [Información de servicios del sistema](#información-de-servicios-del-sistema)
- [Extraer el contenido de alguna APK](#extraer-el-contenido-de-alguna-apk)
- [Obtener el estado de los dispositivos de entrada del sistema y el procesamiento de eventos de entrada](#obtener-el-estado-de-los-dispositivos-de-entrada-del-sistema-y-el-procesamiento-de-eventos-de-entrada)
- [Uso de la memoria](#uso-de-la-memoria)
- [Visualizar información más detallada del paquete](#visualizar-información-más-detallada-del-paquete)
- [Realizar una copia bit a bit con ADB](#realizar-una-copia-bit-a-bit-con-adb)


## Introducción

En esta práctica se va a realizar una extracción de evidencias usando la herramienta ADB.

---

### Extracción de archivos log

El comando para poder extraer los logs será **adb logcat** el cual se puede combinar con algunos atributos:

- V
	- Detallado
- D
	- Información de depuración
- I
	- Mensajes informativos
- W
	- Advertencias sobre posibles problemas
- E
	- Errores que pueden afectar a la ejecución
- F
	- Fallos críticos que pueden causar un cierre

Si ejecutamos el comando sin ningún parámetro, el resultado se verá así:

`adb logcat`

![[3.2 1.png]]


`adb logcat -s Systemserver:I > log2.txt` 

Este comando filtra los logs para que solo saque los mensajes que ha generado el proceso Systemserver y los mande al fichero log2.txt.

![[3.3 1.png]]

`adb logcat *:W > log3.txt`

Este comando captura todos los logs de nivel **Warning** o superior y los pasa al archivo log3.txt.

![[3.5 1.png]]

`adb logcat +:E > log4.txt`

![[3.7 1.png]]

---

### Obten toda la información del sistema

El comando **adb bugreport** permite crear un fichero comprimido con todo tipo de información del sistema:

`adb bugreport`

![[4.2.png]]

---

### Envío de archivo desde el PC al dispositivo conectado

`adb push punto5.txt /sdcard/punto5.txt`

![[5.1.png]]

Si veo el contenido del directorio **/sdcard** se puede observar que el archivo se ha guardado:

![[5.2.png]]

---

### Envío de archivo desde Android al PC

`adb pull /sdcard/pokemon_negro.nds`

![[6.1.png]]

↓

![[6.2 1.png]]

---

### Instalar y desinstalar archivo apk

`adb install “Youtube Premium v19.44.39.apk”`

![[8.1.png]]

Al querer desinstalarlo, me daba un error:

`adb uninstall “Youtube Premium v19.44.39.apk”`

![[9.1.png]]


---

### Controlar el dispositivo en modo texto

`adb shell`

![[10.1.png]]

Este comando permite que interactuemos con el móvil como si fuera un terminar de Linux (de hecho, es muy similar a un sistema Linux, porque Android está basado en este sistema). 
Este comando lo use en anteriores puntos, como por ejemplo, para poder obtener un archivo del móvil y pasarlo a Android o en el punto donde hay que pasarlo del PC al móvil.

---

### Guardar una captura de pantalla del móvil y guardarla en su memoria

`screencap -p /sdcard/capturilla.png`

![[11.1 1.png]]

Para ver que realmente este comando ha tomado una captura de pantalla del móvil, obtengo el archivo con un **adb pull**.

![[11.2.png]]

↓

![[11.3.png]]

---

### Paquetes instalados en el teléfono

`pm list packages`

![[12.1.png]]

---

### Información de servicios del sistema

El comando **dumpsys** nos muestra información de los servicios del sistema:

`adb shell dumpsys > dump.txt`

![[13.1.png]]

↓

![[13.2.png]]

Con el **parámetro -l** se puede obtener una lista de los servicios que hay en el sistema, pero no nos saca nada de información sobre su estado (como lo hace el comando **dumpsys** de normal)

`adb shell dumpsys -l > dump2.txt`

![[13.3.png]]

↓

![[13.4.png]]

Si a este comando le pasamos un servicio en específico y lo juntamos con el **parámetro -h** nos sacará todo tipo de información.

`adb shell dumpsys account -h`

![[13.5.png]]


---

### Extrae el contenido de alguna APK

Este comando no solo funciona con servicios, si no que también lo hace con paquetes:

`adb shell dumpsys package com.android.deskclock`

![[14.1.png]]

---

### Obtener el estado los dispositivos de entrada del sistema y el procesamiento de eventos de entrada.

`adb shell dumpsys input`

![[15.1.png]]

---

### Uso de la memoria

`adb shell dumpsys meminfo`

![[16.1.png]]

Al final de la ejecución de este comando se ve más información sobre la RAM, como la RAM total, la usada etc:

![[16.2.png]]

De hecho se puede ver el uso de memoria de **dalvik**:

![[16.3.png]]

---

### Visualizar información más detallada del paquete

Si ponemos el nombre de los paquetes junto con **meminfo**, podremos ver más información de los mismos:

`adb shell dumpsys meminfo com.android.systemui`

![[17.1.png]]

---

### Realizar una copia bit a bit con adb

La copia de seguridad se realiza con el comando **adb backup** pero a este se le pueden agregar varios parámetros. 
En mi caso: 
- **-apk** 
	- Incluye los archivos APK de las aplicaciones en la copia de seguridad (sin incluir los datos). 
- **-shared** 
	- Copia los datos de almacenamiento compartido 
- **-all** 
	- Realiza una copia de seguridad de todas las aplicaciones instaladas en el dispositivo. 
- **-system** 
	- Incluye aplicaciones del sistema (pero solo sus datos, no sus APKs). 
- **-obb** 
	- Copia archivos OBB (datos adicionales de juegos y aplicaciones grandes). 
- **-keyvalue** 
	- Incluye datos almacenados en el servicio de Key-Value Backup. 
- **-f Xiaomi_redmi.ab** 
	- Especifica el archivo de salida donde se guardará la copia de seguridad.

`adb backup -apk -shared -all -system -obb -keyvalue -f xiaomi_redmi.ab`

![[18.1.png]]

