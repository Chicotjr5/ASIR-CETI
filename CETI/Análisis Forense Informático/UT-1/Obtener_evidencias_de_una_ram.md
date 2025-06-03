## Índice

- [Introducción](#introducción)
- [Capturar la RAM](#capturar-la-ram)
- [Extraer los procesos](#extraer-los-procesos)
- [Extraer las conexiones de red](#extraer-las-conexiones-de-red)
- [Extraer información sobre los ficheros abiertos](#extraer-información-sobre-los-ficheros-abiertos)
- [Extraer información sobre los últimos inicios de sesión](#extraer-información-sobre-los-ultimos-inicios-de-sesion)
- [Extraer el área de paginación](#extraer-el-área-de-paginación)
- [Extraer la contraseña de usuario](#extraer-la-contraseña-de-usuario)
- [Obtener hash del kernel](#obtener-hash-del-kernel)
- [Extraer procesos de inicialización del sistema](#extraer-procesos-de-inicialización-del-sistema)
- [Extraer los cambios en los niveles de ejecución](#extraer-los-cambios-en-los-niveles-de-ejecución)
- [Extraer la información de las tarjetas de red en modo promiscuo](#extraer-la-información-de-las-tarjetas-de-red-en-modo-promiscuo)
- [Extraer información de logs de autenticación](#extraer-información-de-logs-de-autenticación)
- [Extraer información de las aplicaciones](#extraer-información-de-las-aplicaciones)
- [Extraer información de los usuarios sudoers](#extraer-información-de-los-usuarios-sudoers)

## Introducción

En esta práctica se va a recopilar información de un equipo Ubuntu 24.04 mediante el uso de diferentes herramientas y con el uso de comandos del mismo sistema.

Antes de nada, paso la fecha actual al fichero inicio.txt.
![1 1](https://github.com/user-attachments/assets/fb19ebb1-d77d-473a-8c6c-afbce503b262)


Obtengo el hash de este archivo y se lo paso al archivo hash.txt

![1 2](https://github.com/user-attachments/assets/fd53893c-0622-40a0-b1b1-104758ce4421)


![1 3](https://github.com/user-attachments/assets/089e1acc-b310-4411-a445-9b49bd440f74)


---
### Capturar la RAM
Para poder capturar la RAM uso la herramienta **LiME** que la tengo instalada en mi USB forense. 
La obtengo con el comando:

`insmod lime-6.8.0-51-generic.ko Path=/media/usuario/AF/Guardar_informacion/memdump.raw format=raw`

![2 1](https://github.com/user-attachments/assets/93c76ce6-ed23-46aa-978b-184dbc7bcf68)


Ya con la memoria extraída, obtengo su hash y se lo paso al archivo hash.txt.
`sha256sum memdump.raw >> /media/usuario/AF/hash.txt`

![2 3](https://github.com/user-attachments/assets/94a350ba-b951-4a56-98b3-6b68da019290)


![2 4](https://github.com/user-attachments/assets/82aa3a1e-9181-4d61-8a72-fe799c36705a)



Esta es una forma de obtener una captura de la memoria RAM, pero también se puede usando la herramienta avml que también tengo instalada en mi USB forense.

`sudo ./target/release/avml /media/usuario/AF/Guardar_informacion/memdump2.raw`

![3 1](https://github.com/user-attachments/assets/9b77b125-2635-4829-96a5-b568120c935c)


Obtengo el hash de memdump2.raw y se lo paso al archivo hash.txt:
![3 3](https://github.com/user-attachments/assets/3542d682-849c-4ade-a19d-436bef400b9f)

![3 4](https://github.com/user-attachments/assets/021fedda-52a3-4445-8fb9-4db0b82f06ab)


---
### Extraer los procesos

Para poder obtener los procesos paso el resultado de la ejecución de los comandos **ps** y **top** al archivo **procesos.txt**.

`ps > procesos.txt`
`top >> procesos.txt`

![4 1](https://github.com/user-attachments/assets/b52e1e10-cfa0-4013-b967-37732e6a925c)


Y procedo a visualizar el contenido de **procesos.txt** 

![4 2](https://github.com/user-attachments/assets/0e97a81e-7d1b-45da-8ff4-15b098ed2022)



Obtengo el hash y lo paso a hash.txt.

![4 3](https://github.com/user-attachments/assets/c7bbee78-d3e1-4761-ac1c-aa86dccae12d)

![4 4](https://github.com/user-attachments/assets/bbaa4ef7-cdca-4d9b-9166-94f1617505be)


---
### Extraer las conexiones de red

Para extraer las conexiones de red ejecuto el comando **netstat** y el resultado lo paso al archivo **ConexionesdeRed.txt** y compruebo su contenido.

`netstat > ConexionesRed.txt`

![5 1](https://github.com/user-attachments/assets/063556de-616e-4e3e-818c-a36c038d3510)


Obtengo su hash y lo paso a hash.txt

![5 2](https://github.com/user-attachments/assets/5979e1b6-f561-445c-b907-e8129eff2b5f)

![5 3](https://github.com/user-attachments/assets/38b02918-2055-4b8c-93b0-88b5c75f2370)


---
### Extraer información sobre los ficheros abiertos

Para obtener esta información, ejecuto el comando **losf -i** y le paso el resultado al archivo **FicherosAbiertos.txt**

`lsof -i > FicherosAbiertos.txt`

![6 1](https://github.com/user-attachments/assets/243814a6-56c6-420a-8d06-9a48285db15e)


Obtengo su hash y lo paso a hash.txt
![6 2](https://github.com/user-attachments/assets/e0431115-1cc4-4e9e-8e80-4ae6edb7cb48)

![6 3](https://github.com/user-attachments/assets/89aae118-d3bb-4b82-93ae-38662875d8d4)


---
### Extraer información sobre los últimos inicios de sesión

Con el comando **lastlog** se puede ver cuando accedió por última vez cada usuario, así que le paso el resultado de este comando al archivo **ÚltimosLogs.txt.**

`lastlog > UltimosLogs.txt`

![7 1](https://github.com/user-attachments/assets/7c88e833-7e79-482d-b187-3d55c289a7a2)


Obtengo su hash y lo paso a hash.txt

![7 2](https://github.com/user-attachments/assets/9f3fe941-d8d1-4324-bff8-11a2075a914d)

![7 3](https://github.com/user-attachments/assets/e4ba5ec4-d1a6-48aa-a188-e906aa8825ee)

---

### Extraer el área de paginación

El área de paginación se suele encontrar en **/proc/swap** y con un cat compruebo su existe o no:

`cat /proc/swap`

Como existe, uso el siguiente comando para extraerlo:

`Dd if=/swap.img of=/media/usuario/AF/Guardar_informacion/paginación.img bs=1M`

![8 1](https://github.com/user-attachments/assets/be164cf1-d071-4371-b05f-decb56c284e8)


Obtengo su hash y lo paso a hash.txt

![8 2](https://github.com/user-attachments/assets/83d7feeb-af0a-4261-a30c-624d475b5bd6)

![8 3](https://github.com/user-attachments/assets/280bf896-2889-4bbc-a0e0-69abc88e0c16)

---
### Extraer la contraseña del usuario

Para poder obtener la contraseña de usuario, voy a obtener el hash de la contraseña que se encuentra en **/etc/shadow** y buscar ese hash en el archivo **memdump.raw.**

Obtengo el hash de la contraseña del usuario:

`grep <nombre del usuario> /etc/shadow`

![9 1](https://github.com/user-attachments/assets/2d90f1ef-430d-4a71-9864-138c79300691)


Busco esa cadena en **memdump.raw** y le paso el resultado al archivo **Contraseñas.txt**.

`strings memdump.raw | grep -i "<hash de la contraseña>"`

![9 2](https://github.com/user-attachments/assets/48d73aa1-8a2f-4169-9008-de96eac173b9)

Obtengo su hash y lo paso a hash.txt

![9 4](https://github.com/user-attachments/assets/13e0ced8-1c4c-4348-898a-74734ff57869)

![9 5](https://github.com/user-attachments/assets/788ee653-36d2-42fa-a8c5-edf307f741e3)

---
### Obtener hash del kernel

El kernel de Linux se encuentra en **/boot/vmlinuz-6.8.0-51-generic** así que saco su hash y se lo paso al archivo hash.txt.

![11 1](https://github.com/user-attachments/assets/315a5c91-c729-4494-b86b-7162956c3a13)

![11 2](https://github.com/user-attachments/assets/b1c420b6-6ba7-4677-9d2c-6690781dd491)


---
### Extraer procesos de inicialización del sistema

Para ver estos procesos uso el comando **dmesg** y paso su resultado al fichero **ProcesosInicio.txt**

`dmesg > ProcesosInicio.txt`

![12 1](https://github.com/user-attachments/assets/ca0a63ad-cb1f-45a4-a271-039b5116c935)


Para comprobar la información de este archivo y ver que no hay nada fuera de lo normal, uso el comando:

`grep -iE “eth|wlan |net|network|link|mac” ProcesosInicio.txt`

![12 2 1](https://github.com/user-attachments/assets/dd6ef6e4-ec16-47de-b0d3-1f89551c8de1)


Obtengo su hash y lo paso al archivo hash.txt

![12 2](https://github.com/user-attachments/assets/2e218e9e-5d3f-4b44-b23f-59ef1e55a969)


![12 3](https://github.com/user-attachments/assets/64923cad-9f18-47bc-b7f8-0ca2c9385eec)

---

### Extraer los cambios en los niveles de ejecución

Para ver los cambios en los niveles de ejecución hay que filtrar el contenido del archivo **/var/log/syslog** por **“state level”** y el resultado lo paso al archivo **NivelesEjecucion.txt**.

`grep "state level" /var/log/syslog > NivelesEjecucion.txt`

![13 1](https://github.com/user-attachments/assets/ca59a82b-1a1d-479c-99df-0cf0a0799107)


Obtengo su hash y lo paso al archivo hash.txt

![13 2](https://github.com/user-attachments/assets/1799ab85-0c9c-4008-95d9-7df04c6c4cf0)

![13 3](https://github.com/user-attachments/assets/ca48cfe1-26ea-4c6f-825b-7c3672bfb600)

---

### Extraer la información de las tarjetas de red en modo promiscuo

Esta información también se encuentra en **/var/log/syslog** solo que ahora voy a filtrar la información y pasando el resultado al archivo **TarjetasRed.txt**.

Para poder filtrar la información, uso el comando:

`grep -iE “(eth|wlan|enp|ens).*promisc”`

![14 1](https://github.com/user-attachments/assets/3cf12b32-57d5-44c4-9985-6345e6527686)

Esta vez no ha sacado nada de información.

---

### Extraer información de logs de autenticación

Esta información se encuentra en **/var/log/auth.log** y filtraré y almacenaré el resultado en el fichero **LogsAutentica.txt**

Uso el comando: 
`grep -a -i “sudo” /var/log/auth.log | grep -i "pts" > LogsAutentica.txt`

![15 1](https://github.com/user-attachments/assets/71951fa3-c394-40c5-bf63-1a4659e4ae21)

Obtengo el hash y lo almaceno en hash.txt

![15 2](https://github.com/user-attachments/assets/04d9f750-2f42-4bde-91a0-055f50c778dc)

![15 3](https://github.com/user-attachments/assets/fc3e67af-5e89-4a08-804d-55bb99a89977)

---

### Extraer información de las aplicaciones

Ahora he de obtener información sobre las aplicaciones que se han instalado, ejecutado, eliminado, actualizado etc. 
Para ello tengo que filtrar la salida del archivo **/var/log/dpkg.log** con el comando:

`grep -iE “install|remove|upgrade” /var/log/dpkg.log > AplicacionesEstado.txt`

![16 1](https://github.com/user-attachments/assets/640eddf2-380a-4c64-b969-f8f9da6386d4)


Obtengo el hash y lo almaceno en hash.txt

![16 1](https://github.com/user-attachments/assets/ea23fc35-15c6-4193-b114-804ef373adb9)

![16 3](https://github.com/user-attachments/assets/f31d4997-6fee-4393-916f-d8f611ea46e7)

---

### Extraer información de los usuarios sudoers

Esta información se encuentra en **/etc/sudoers** voy a filtrarla y  almacenarla en el archivo **UserSudoers.txt**

Uso el comando: 

`cat /etc/sudoers | grep -i "sudo > UserSudoers.txt"`

![17 1](https://github.com/user-attachments/assets/c0ef1b0d-32a7-4faa-a3d5-bb0167a15b9c)


Calculo el hash del archivo y lo almaceno en hash.txt

![17 2](https://github.com/user-attachments/assets/9bd8ec3d-abf6-4f15-bb96-a1d1b31fe5ad)


![17 3](https://github.com/user-attachments/assets/3f655857-2b3e-428c-851d-070b69d6665a)


