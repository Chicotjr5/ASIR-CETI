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
- [Extrae el contenido de alguna APK](#extrae-el-contenido-de-alguna-apk)
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

![3 2](https://github.com/user-attachments/assets/a7c0decd-aac1-4a21-b529-523ca80d12b3)



`adb logcat -s Systemserver:I > log2.txt` 

Este comando filtra los logs para que solo saque los mensajes que ha generado el proceso Systemserver y los mande al fichero log2.txt.

![3 3 1](https://github.com/user-attachments/assets/8639ccc1-af98-4445-b2ac-5d0a1178b2eb)


`adb logcat *:W > log3.txt`

Este comando captura todos los logs de nivel **Warning** o superior y los pasa al archivo log3.txt.

![3 5](https://github.com/user-attachments/assets/12f71eb1-249c-4a7f-861f-a02452bfb8d1)


`adb logcat +:E > log4.txt`

![3 7](https://github.com/user-attachments/assets/ef1dc180-0c90-4d23-ab32-f99ead4fcb77)

---

### Obten toda la información del sistema

El comando **adb bugreport** permite crear un fichero comprimido con todo tipo de información del sistema:

`adb bugreport`

![4 2](https://github.com/user-attachments/assets/a03b8bfd-ae9d-42a1-9cec-4026b32ab3d0)


---

### Envío de archivo desde el PC al dispositivo conectado

`adb push punto5.txt /sdcard/punto5.txt`

![5 1](https://github.com/user-attachments/assets/c0e15bfb-4600-4e99-a1eb-385b1a862298)


Si veo el contenido del directorio **/sdcard** se puede observar que el archivo se ha guardado:

![5 2](https://github.com/user-attachments/assets/ec6a9701-7854-4e74-9416-bb637ce30697)


---

### Envío de archivo desde Android al PC

`adb pull /sdcard/pokemon_negro.nds`

![6 1](https://github.com/user-attachments/assets/e6b1ea18-cbe9-4579-95df-8122cc939e76)


↓

![6 2](https://github.com/user-attachments/assets/bff596b3-7706-4cda-8541-c611a0f0948a)


---

### Instalar y desinstalar archivo apk

`adb install “Youtube Premium v19.44.39.apk”`

![8 1](https://github.com/user-attachments/assets/0d7bf82a-cf29-45e3-a817-4a03f7ebcac8)


Al querer desinstalarlo, me daba un error:

`adb uninstall “Youtube Premium v19.44.39.apk”`

![9 1](https://github.com/user-attachments/assets/329a2dca-4a5f-4f71-a07a-a1e5011c6f2a)

---

### Controlar el dispositivo en modo texto

`adb shell`

![10 1](https://github.com/user-attachments/assets/2e51a980-e7ff-406d-ab6c-dd977ef8078b)


Este comando permite que interactuemos con el móvil como si fuera un terminar de Linux (de hecho, es muy similar a un sistema Linux, porque Android está basado en este sistema). 
Este comando lo use en anteriores puntos, como por ejemplo, para poder obtener un archivo del móvil y pasarlo a Android o en el punto donde hay que pasarlo del PC al móvil.

---

### Guardar una captura de pantalla del móvil y guardarla en su memoria

`screencap -p /sdcard/capturilla.png`

![11 1](https://github.com/user-attachments/assets/2a91d743-14f6-44b5-9a54-4dfd407109fe)


Para ver que realmente este comando ha tomado una captura de pantalla del móvil, obtengo el archivo con un **adb pull**.

![11 2](https://github.com/user-attachments/assets/606504a5-60e4-4516-b91c-10be4344642a)


↓

![11 3](https://github.com/user-attachments/assets/105e64a3-4c04-4721-acb5-4f039621a8a0)


---

### Paquetes instalados en el teléfono

`pm list packages`

![12 1](https://github.com/user-attachments/assets/8acd5c23-6ace-42cc-b652-6e4cfd19a144)


---

### Información de servicios del sistema

El comando **dumpsys** nos muestra información de los servicios del sistema:

`adb shell dumpsys > dump.txt`

![13 1](https://github.com/user-attachments/assets/1eb77294-9c71-4c0e-b7d2-547598b728fb)


↓

![13 2](https://github.com/user-attachments/assets/532c961a-0007-4f16-a9f6-327375ef4155)


Con el **parámetro -l** se puede obtener una lista de los servicios que hay en el sistema, pero no nos saca nada de información sobre su estado (como lo hace el comando **dumpsys** de normal)

`adb shell dumpsys -l > dump2.txt`

![13 3](https://github.com/user-attachments/assets/61b53f09-78ca-4d75-bbeb-eb43dc115beb)


↓

![13 4](https://github.com/user-attachments/assets/63855246-1eba-431c-8859-001e4134fa9b)


Si a este comando le pasamos un servicio en específico y lo juntamos con el **parámetro -h** nos sacará todo tipo de información.

`adb shell dumpsys account -h`

![13 5](https://github.com/user-attachments/assets/32312bec-995e-43c7-839a-b0d1f3043a1c)

---

### Extrae el contenido de alguna APK

Este comando no solo funciona con servicios, si no que también lo hace con paquetes:

`adb shell dumpsys package com.android.deskclock`

![14 1](https://github.com/user-attachments/assets/5074fbfa-4920-4cba-b34f-0d73e41f91a4)


---

### Obtener el estado los dispositivos de entrada del sistema y el procesamiento de eventos de entrada

`adb shell dumpsys input`

![15 1](https://github.com/user-attachments/assets/36f1fe0b-5328-4199-8551-1bfb3e132b38)


---

### Uso de la memoria

`adb shell dumpsys meminfo`

![16 1](https://github.com/user-attachments/assets/30039cf9-f81b-4e7f-a4d3-b76427cc0799)


Al final de la ejecución de este comando se ve más información sobre la RAM, como la RAM total, la usada etc:

![16 2](https://github.com/user-attachments/assets/5fe00c47-771c-4aab-918d-b08d10d270bc)


De hecho se puede ver el uso de memoria de **dalvik**:

![16 3](https://github.com/user-attachments/assets/b6761143-e297-48a8-97e5-f23d5a0db89f)


---

### Visualizar información más detallada del paquete

Si ponemos el nombre de los paquetes junto con **meminfo**, podremos ver más información de los mismos:

`adb shell dumpsys meminfo com.android.systemui`

![17 1](https://github.com/user-attachments/assets/94f1169a-aa53-4107-915a-793a9febf003)


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

![18 1](https://github.com/user-attachments/assets/7fcc9f89-238d-4b59-a1ab-256db51e325a)


