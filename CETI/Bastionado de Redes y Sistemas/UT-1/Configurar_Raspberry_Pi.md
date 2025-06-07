## Índice

- [Introducción](#introducción)
- [Instalar y configurar Raspberry Pi](#instalar-y-configurar-raspberry-pi)
- [Conexión a la Raspberry Pi](#conexión-a-la-raspberry-pi)
- [Crear copia de seguridad](#crear-copia-de-seguridad)
- [Configurar IP estática](#configurar-ip-estática)
- [Firewall](#firewall)
  - [Permitir únicamente el acceso al puerto 22 desde una IP](#permitir-únicamente-el-acceso-al-puerto-22-desde-una-ip)
  - [Bloquear todo el tráfico saliente hacia internet, menos por el puerto 80 y 443](#bloquear-todo-el-tráfico-saliente-hacia-internet-menos-por-el-puerto-80-y-443)
  - [Registrar intentos fallidos de conexión SSH](#registrar-intentos-fallidos-de-conexión-ssh)
  - [Configurar una política por defecto que bloquee todo el tráfico no especificado en las reglas](#configurar-una-política-por-defecto-que-bloquee-todo-el-tráfico-no-especificado-en-las-reglas)
  - [Permitir el acceso a un servicio adicional en el puerto 8080 desde toda la red interna](#permitir-el-acceso-a-un-servicio-adicional-en-el-puerto-8080-desde-toda-la-red-interna)
- [Servidor FTP](#servidor-ftp)
  - [Permitir conexiones FTP desde una red específica](#permitir-conexiones-ftp-desde-una-red-específica)
  - [Permitir conexiones pasivas, desde el puerto 50000-51000](#permitir-conexiones-pasivas-desde-el-puerto-50000-51000)
  - [Permitir el tráfico saliente necesario para actualizaciones de software y DNS](#permitir-el-tráfico-saliente-necesario-para-actualizaciones-de-software-y-dns)


## Introducción

En esta práctica se va a hacer uso de una Raspberry PI 4 para realizar diferentes tareas:

- Automatizar copias de seguridad
- Instalar un Firewall y crear diferentes reglas
- Crear un servidor FTP

---

### Instalar y configurar Raspberry Pi

El primer paso de esta práctica es poner en marcha una **Raspberry Pi 4**, para hacerlo deberemos de preconfigurarla con una serie de opciones, la primera siendo su sistema operativo, que en este caso va a ser **Raspberry PI OS LITE**.

Para poder obtener el programa de instalación, lo descargamos de la siguiente [web](https://www.raspberrypi.com/software/)

![[1.1 3 1.png]]

Y marcaremos la como lugar de almacenamiento a la propia Raspberry Pi.

![[1.2 2 1.png]]

Ya están los parámetros iniciales preparados, pasamos al siguiente paso.

![[1.3 1 1.png]]

Ahora editaremos los ajustes de personalización del sistema operativo de la Raspberry Pi.

![[1.4 2 1.png]]

En estos ajustes se incluyen:

- Nombre del equipo
	- padOS-1
- Credenciales
	- padOS:padOS
- Red
	- CETI_JC_5G - babieca2024
- Ajustes regionales
	- ES
- Usar SSH
	- Si

![[1.5 1 1.png]]

↓

![[1.6 3.png]]

Ya con todo listo, se instalará el sistema operativo con la configuración que hemos realizado.

![[1.7 2.png]]

Esperamos unos pocos minutos y listo, ya tenemos nuestra Raspberry Pi 4 lista para ser usada.

![[1.8 2.png]]

---

### Conexión a la Raspberry Pi

Conectaremos nuestro equipo anfitrión a la red donde está conectada la Raspberry Pi para poder comunicarnos con la misma.

![[2.1 2 1.png]]

Ya conectados a la red comprobaremos la conexión con la Raspberry Pi realizando un ping.

`ping padOS-1`

![[2.2 4 1.png]]

Para poder trabajar con la Raspberry Pi realizaremos una conexión ssh con el usuario que configuramos anteriormente.

`ssh padOS-1@padOS-1`

![[2.3 1 1.png]]

---

### Crear copia de seguridad

Antes de hacer nada, se realiza una actualización del sistema con la siguiente orden:

`sudo apt update -y && sudo apt full-upgrade -y`

![[3.1 3 1.png]]


La copia de seguridad se hará de todo el **directorio /home** y se guardará en el directorio **/backup**.

![[3.3 4.png]]

El comando para realizar la copia será el siguiente:

`rsync -avh /home /backup`

![[3.4 4.png]]

En la imagen se ve la opción **--dry-run** la cual saca por pantalla el resultado de la ejecución del comando, permitiéndonos saber si se ha realizado de forma correcta o no.

Ya funcionando, creamos un script:

![[3.5 3.png]]

Lo que hace este script es mostrar la fecha de realización de la copia de seguridad, además de ejecutar la copia de seguridad, pasando toda esta información a un archivo log llamado log_backup.txt.


Para poder automatizar la copia de seguridad, editamos el archivo **/etc/crontab** y ponemos la siguiente línea:

`0 */12 * * * root test -x /root/scripts/backup.sh`

Con esta línea la copia de seguridad se ejecutará cada 2 horas, todos los días de la semana, todos los días del mes, todos los meses.

![[3.6 2 1.png]]

---

### Configurar IP estática

Ahora configuraremos una IP estática en la Raspberry Pi 4 con el comando **nmtui**

![[4.1.png]]

Este comando abre una interfaz, con la cual podemos configurar diferentes parámetros de la Raspberry Pi 4, pero en este caso solo se va a configurar una IP estática. 
Para hacerlo vamos a **Edit a connection>Wifi preconfigured** y ya dentro configuramos la IP de forma manual.

![[4.2.png]]

↓

![[4.3 1.png]]

↓

![[4.4.png]]

---

### Firewall

El firewall que usaremos para esta práctica es ufw (Uncompicated Firewall)

`apt install ufw`

![[5.1.png]]

#### Permitir únicamente el acceso al puerto 22 desde una IP.

Las reglas que se han de crear son las siguientes:

`sudo ufw allow from 192.168.1.103 to any port 22`

![[5.2.png]]

`sudo ufw deny from any to any port 22`

![[5.3.png]]

Con la primera regla permitimos la conexión ssh al equipo con la IP 192.168.1.103 (es mi equipo personal). 
Con la segunda, denegamos todo el tráfico a ese puerto, así, tan solo mi equipo personal podrá conectarse. 
En la siguiente captura se puede ver que la regla funciona.

![[5.4.png]]


#### Bloquear todo el tráfico saliente hacia internet, menos por el puerto 80 y 443

Creamos una regla que deniega todo el tráfico saliente

`sudo ufw default deny outgoing`

![[5.5.png]]

Y luego creamos otras 2, que permiten el tráfico saliente hacia los puertos 80 y 443.

`sudo ufw allow out to any port 80`
`sudo ufw allow out to any port 443`

![[5.6.png]]

#### Registrar intentos fallidos de conexión SSH

Para poder ver el registro del servicio ssh y observar cualquier evento usamos el comando

`sudo journalctl -u ssh -o verbose | tail -n 24`

![[5.7.png]]

#### Configurar una política por defecto que bloquee todo el tráfico no especificado en las reglas.

Para realizar este objetivo, configuramos las 2 siguientes reglas.

`sudo ufw default deny incoming`
`sudo ufw default deny outgoing`

![[5.8.png]]

#### Permitir el acceso a un servicio adicional en el puerto 8080 desde toda la red interna

Para este objetivo, hemos de crear una nueva regla en el firewall

`sudo ufw allow from 192.168.1.0/24 to any port 8080`

![[5.9.png]]


Pero no solo es añadir la regla anterior, si no que además, hay que modificar las **iptables** las cuales  son un programa que permite a los usuarios configurar reglas para el filtro de paquetes.

`sudo iptables -t nat -A PREROUTING -p tcp --dport 3389 -j REDIRECT --to-port 8080`

![[5.10.png]]

- -t nat
	- Selecciona la tabla NAT para manejar el redireccionamiento
- -A PREROUTING
	- Aplica la regla antes de que los paquetes sean procesador por el sistema
- -p tcp
	- Aplica la regla solo al tráfico TCP
- --dport 3389
	- Filtra le tráfico dirigido al puerto 3389
- -j REDIRECT --to-port 8080
	- Redirige el tráfico al puerto 8080

Con este último comando ya tenemos todo el firewall configurado. Para ver las reglas de UFW, uso el comando:

`sudo ufw status verbose`

![[5.11.png]]

Y para ver las de iptables:

`sudo iptables -t nat -L -n -v

![[5.12.png]]

---

### Servidor FTP

Ahora pasaremos a instalar un servidor FTP. 
Usaremos **vsftpd** para crearlo, un servidor FTP para sistemas Unix y Linux, diseñado para ser rápido, seguro y con una configuración sencilla, así que lo instalamos con un **apt install vsftpd**.

`sudo apt install vsftpd`

![[5.13.png]]

Una vez instalado pasamos a ver su estado, para comprobar que se ha instalado e iniciado de manera correcta.

`systemctl status vsftpd`

![[6.2.png]]


Para poder crear este servidor, previamente hemos de tener unos requisitos previos. 
El primero de todos es tener UFW instalado y funcional, como ya lo tenemos pasamos al siguiente punto. 
Este consiste en definir el rango de puertos pasivos. Para configurarlo editamos el archivo **/etc/vsftpd.conf** y añadimos las siguientes líneas: 
- **pasv_min_port=50000** 
- **pasv_max_port=51000**

![[6.3.png]]


El siguiente punto es conocer desde que redes se permitirá el acceso a FTP, que en nuestro caso será la será la 192.168.1.0/24.

![[6.4.png]]

#### Permitir conexiones FTP desde una red específica

Para cumplir este objetivo, debemos de añadir las siguientes reglas a ufw:

`sudo ufw allow proto tcp from 192.168.1.0/24 to any port 21`

![[6.5.png]]

`sudo ufw deny 21/tcp`

![[6.6.png]]

#### Permitir conexiones pasivas, desde el puerto 50000-51000

Para poder hacer esto hay que modificar el archivo **/etc/vsftpd.conf** y poner las siguientes líneas.

![[6.7.png]]

Además, hemos configurado las siguientes reglas en el firewall:

`sudo ufw allow in 50000:51000/tcp`
`sudo ufw allow out 50000:51000/tcp`

![[6.8.png]]

#### Permitir el tráfico saliente necesario para actualizaciones de software y DNS.

Crearemos las 3 siguientes reglas:

`sudo ufw allow out 53`
`sudo ufw allow out 80`
`sudo ufw allow out 443`


Con un **ufw status verbose** visualizamos las reglas que hemos ido creando:

![[6.14.png]]

