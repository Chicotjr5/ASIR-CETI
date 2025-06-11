## Índice


## Introducción

En esta práctica se va a obtener diferente tipo de información de un equipo Windows 10 mediante el uso de diferentes herramientas de análisis forense. 
Antes de empezar, creo un archivo donde pongo la fecha y hora del comienzo del análisis creando un hash para el mismo.

![1 2](https://github.com/user-attachments/assets/420d400c-7264-4d8a-aece-40b295220d22)

![1 3](https://github.com/user-attachments/assets/f0fc67bf-b6a6-4b07-934d-ec9a00f5f7a6)

![1 4](https://github.com/user-attachments/assets/41c151b8-280c-4ede-a316-6fabeced7a70)


---
### Obtener volcado de RAM
Para esta primera obtención voy a usar la herramienta **DumpIt.txt**

![1 5](https://github.com/user-attachments/assets/ce38ce06-70f7-4936-8fb4-3de94f34633b)


Ya ejecutada, tan solo hemos de confirmar la adquisición de la memoria y la herramienta empezará a funcionar:
![1 6](https://github.com/user-attachments/assets/b168c975-bfb8-463e-8d65-cfd69281f681)


![1 7](https://github.com/user-attachments/assets/e4580c52-5f6f-4c7f-a906-80ec44084113)


Después de esperar unos minutos ya tenemos nuestro volcado de memoria.
![1 8](https://github.com/user-attachments/assets/dc1ed20a-12f3-471c-b125-1dad2fe63f6a)


Del cual obtengo el hash

![1 9](https://github.com/user-attachments/assets/971ad78b-abe7-4526-87e0-a764cd6d5060)


![1 10](https://github.com/user-attachments/assets/b5673202-fe5a-4bbd-9112-3264632497b3)

---
### Obtener archivos de paginación y segmentación

Originalmente esta parte se debía de hacer con las herramientas TotalCommander o PureSync, pero no pude realizarlo, así que arranque el equipo Windows 10 con una ISO de Ubuntu 24.04.


![2 3](https://github.com/user-attachments/assets/2f7109ba-27fd-48cf-bf3d-b6e240625a74)


Localizo los archivos y los copio a mi unidad USB.

![2 5](https://github.com/user-attachments/assets/419e51a6-717d-45d9-826a-cb4408acc165)


Con el comando:
```bash
certutil -hashfile <archivo.sys> sha256 >> f:\hash.txt
```
obtengo su hash y lo almaceno.

![2 6](https://github.com/user-attachments/assets/5c4e9310-93dc-46f5-a0c2-b3a13f8430e1)

---

### Almacenar servicios en ejecución

Para recoger los servicios dentro de un archivo, ejecutaré con comandos la herramienta PsService64.exe. y le diré que redireccione el resultado de la ejecución a un archivo llamado procesos.txt.


![3 2](https://github.com/user-attachments/assets/394b5f25-b8dd-45b8-8293-fd5a6c006966)


Si abro el archivo veré todos los procesos:

![3 3](https://github.com/user-attachments/assets/f23e9852-c854-4e8b-95b2-ad8ad7e9d571)


Si dentro del archivo busco los servicios con la palabra “remote / remoto “y encuentro alguno que este “Running” (en ejecución) se podría encontrar alguna prueba de que hay una conexión remota en ejecución ahora mismo.


![3 5](https://github.com/user-attachments/assets/5325407d-4108-4536-a2a7-09bc0849b8d3)


Tan solo encuentro este servicio, el cual crea y mantiene conexiones de red de cliente con servidores remotos con el protocolo SMB. 

Sacaré el hash de este archivo de la misma forma que saque el del anterior apartado y lo almacenaré en el fichero hash.txt que es donde se almacenarán todos los hashes de todas las pruebas.

![3 6](https://github.com/user-attachments/assets/d4424eb2-e063-48d9-871a-a9abd91f5f18)

---

### Almacenar lista de procesos en ejecución

Para esto usaré la herramienta **pslist64.exe** y el resultado que me de lo pasaré a un archivo llamado **procesos_en_ejecución_en_memoria.txt**


![4 1](https://github.com/user-attachments/assets/c911070b-fb07-48c7-9a02-551408b832e7)


Veo el contenido del archivo:

![4 0 1](https://github.com/user-attachments/assets/051a7b10-21e7-4841-a136-dfc098e6cb33)


Y obtengo su hash, almacenándolo en el archivo hash.txt

![4 2](https://github.com/user-attachments/assets/0d4e791c-5009-486f-9a34-012b36d00bee)

---

### Almacenar usuarios logueados

Con la herramienta **psloggedon64.exe** puedo ver que usuarios han iniciado sesión en el sistema:


![5 0 1](https://github.com/user-attachments/assets/42dfa932-2b95-4be8-9cd5-baa80e80d23e)


Obtengo su hash y lo guardo.

![5 1](https://github.com/user-attachments/assets/09ba9f1a-19bb-4a8f-bf82-5aa99a23d64e)


![5 2](https://github.com/user-attachments/assets/2fcfb8ab-12bd-471e-99cc-ddb904846c1f)


Con el comando 
```bash
net user
```
puedo ver que usuarios hay en el sistema, comparándolos con la información del archivo generado:


![5 4](https://github.com/user-attachments/assets/a62c8e9c-42db-4894-9a60-6724c562a45f)


---

### Almacenar configuraciones de la tarjeta de red

Esto lo haré con la herramienta **promisdetect.exe.**

![6 1](https://github.com/user-attachments/assets/1753a54b-41c7-4cac-8e9c-5c39c18a1862)


Saco el hash del archivo generado y lo compruebo:

![6 2](https://github.com/user-attachments/assets/f92c84bb-388a-4cfd-a3d4-94bd87c284be)
![6 3](https://github.com/user-attachments/assets/7d369ab1-8603-46c1-9eb7-70c8bdcf841e)

--- 

### Almacenar tablas ARP

Para poder obtener las tablas ARP usaré el comando `arp -a` y el resultado lo pasaré a un archivo.

![7 1](https://github.com/user-attachments/assets/4a152617-7230-4401-a75b-34338a7ab6d1)


Y de este archivo generado, obtengo su hash, el cual compruebo.

![7 2](https://github.com/user-attachments/assets/84668fdf-3a3a-4f75-80ed-83ca88da02cc)
![7 3](https://github.com/user-attachments/assets/a40ffe4a-57d8-45ee-b9dd-2eaca2b91916)

---

### Almacenar estado de las tablas NetBIOS

Para esto usaré el comando `nbtstat -s, nbtstat -A 10.0.2.15 y nbtstat -c` y lo pasaré todo al mismo archivo.

![8 1](https://github.com/user-attachments/assets/914496b1-59c0-4a57-a6f9-f8b0c6efff25)


De este archivo genero un hash y lo compruebo.

![8 2](https://github.com/user-attachments/assets/80136846-5d26-4774-8eea-43568c7c4697)

![8 3](https://github.com/user-attachments/assets/0832ab93-07b0-46c2-b00e-34a7ac26406e)

---

### Almacenar configuraciones de las interfaces de red

Con un `ipconfig /all`  se pueden ver todas las interfaces de red.

![9 1](https://github.com/user-attachments/assets/3a78ae7b-40c0-4ed5-8ce5-5f2a1fa87ce9)


![9 2 1](https://github.com/user-attachments/assets/f51cd980-0c53-4f4d-bf08-a399c15940ff)


Obtengo el hash y lo guardo en el archivo hash.txt.

![9 2](https://github.com/user-attachments/assets/971a34d4-7b26-4d59-9b54-8f909264c3aa)


![9 3](https://github.com/user-attachments/assets/5a10fb64-028e-4a35-b1cf-de14c9d6bc46)


---

### Almacenar las consultas dns

Con un nslookup Google.com podemos ver las consultas dns que se han realizado en el equipo hacia el dominio de Google.com.


![10 1](https://github.com/user-attachments/assets/1e8a5914-ead0-4850-ae3d-61de765a50b9)


Obtengo su hash y lo almaceno.

![10 2](https://github.com/user-attachments/assets/a7f85b56-b9d1-441c-b194-ab873d462844)


![10 3](https://github.com/user-attachments/assets/07f90764-175b-448c-b622-85607735e080)


---

### Almacenar estado de las conexiones

Para ver el estado de todas las conexiones del equipo ejecuto un `netstat -an`.

![11 1](https://github.com/user-attachments/assets/f0712f73-7868-43a4-9fff-7117226eaa05)


Se pueden observar 2 conexiones que están **ESTABLISHED** las cuales apuntas a 1 sitio web. 

Obtengo el hash del archivo generado.

![11 3](https://github.com/user-attachments/assets/6c4d7a8f-c3ae-4fcc-aae6-3d6ed1357ea1)


![11 3](https://github.com/user-attachments/assets/3e624703-253b-49b7-8417-fc7da4bbc8a7)

---

### Almacenar las carpetas compartidas

Para terminar, debo recoger información sobre las carpetas compartidas en el equipo, lo cual se hace con el comando `net share`.

![12 1](https://github.com/user-attachments/assets/5871957a-1c1d-4179-b76c-6222540e6d64)


Obtengo el hash y lo almaceno:

![12 2](https://github.com/user-attachments/assets/d1d975cb-9b2b-4dd8-8f08-f703fd739c8f)


Y por último, vuelvo a obtener la hora y fecha.


![13 2](https://github.com/user-attachments/assets/8754b90d-838b-4657-b32e-0bf730c9ed33)


