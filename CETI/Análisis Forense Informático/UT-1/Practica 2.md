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


Con el comando `certutil -hashfile <archivo.sys> sha256 >> f:\hash.txt` obtengo su hash y lo almaceno.

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





