## Índice

- [Introducción](#introducción)
- [Extraer el conjunto de ficheros log](#extraer-el-conjunto-de-ficheros-log)
- [Obtenemos la información básica del sistema, distribución](#obtenemos-la-información-básica-del-sistema-distribución)
- [Adquirimos el nombre del equipo (/etc/hostname), el cual será leído durante el arranque del sistema](#adquirimos-el-nombre-del-equipo-etchostname-el-cual-será-leído-durante-el-arranque-del-sistema)
- [Adquirimos el fichero hosts que asocia direcciones IP en nombres de dominio (/etc/hosts)](#adquirimos-el-fichero-hosts-que-asocia-direcciones-ip-en-nombres-de-dominio-etchosts)
- [Adquirimos los atributos contraseñas de los usuarios e información de los grupos](#adquirimos-los-atributos-contraseñas-de-los-usuarios-e-información-de-los-grupos)
- [Adquirimos la información sobre el acceso de usuarios, equipo que usó, eventos del sistema, estado actual a partir de la copia del fichero wtmp](#adquirimos-la-información-sobre-el-acceso-de-usuarios-equipo-que-usó-eventos-del-sistema-estado-actual-a-partir-de-la-copia-del-fichero-wtmp)
- [Para poder ver el contenido puedo usar utmpdump](#para-poder-ver-el-contenido-puedo-usar-utmpdump)
- [Adquirimos el histórico de comandos](#adquirimos-el-histórico-de-comandos)
- [Adquirimos las conexiones remotas mediante ssh](#adquirimos-las-conexiones-remotas-mediante-ssh)
- [Extraemos scripts de inicio](#extraemos-scripts-de-inicio)
- [Extraemos las tareas programadas](#extraemos-las-tareas-programadas)
- [Adquirimos los ficheros recientes de los usuarios con nautilus desde la home del usuario](#adquirimos-los-ficheros-recientes-de-los-usuarios-con-nautilus-desde-la-home-del-usuario)
- [Adquirimos los ficheros recientes abiertos en LibreOffice](#adquirimos-los-ficheros-recientes-abiertos-en-libreoffice)
- [Adquirimos los thumnails, que son las imágenes en miniatura que hay o ha visitado el usuario](#adquirimos-los-thumnails-que-son-las-imágenes-en-miniatura-que-hay-o-ha-visitado-el-usuario)
- [Adquirimos las localizaciones del usuario, si tiene GPS](#adquirimos-las-localizaciones-del-usuario-si-tiene-gps)
- [Adquirimos las conexiones de red incluidas las WIFI](#adquirimos-las-conexiones-de-red-incluidas-las-wifi)
- [Adquirimos la configuración de las cuentas en línea que GNOME proporciona](#adquirimos-la-configuración-de-las-cuentas-en-línea-que-gnome-proporciona)
- [Adquirimos información del sistema mediante el comando uptime](#adquirimos-información-del-sistema-mediante-el-comando-uptime)
- [La versión del sistema operativo](#la-versión-del-sistema-operativo)
- [Obtenemos las particiones del sistema](#obtenemos-las-particiones-del-sistema)
- [Obtenemos la lista de sistemas de archivos actualmente montados en el sistema](#obtenemos-la-lista-de-sistemas-de-archivos-actualmente-montados-en-el-sistema)
- [CAINE](#caine)
- [En la máquina de Ubuntu cogemos la fecha y hora de cuando terminamos la adquisición](#en-la-máquina-de-ubuntu-cogemos-la-fecha-y-hora-de-cuando-terminamos-la-adquisición)
- [Conclusiones](#conclusiones)
- [Tabla de incidencias](#tabla-de-incidencias)


## Introducción

En esta práctica se van a obtener datos no volátiles de la máquina Ubuntu 24.10.

---

### Extraer el conjunto de ficheros log

Los ficheros log se almacenan en el directorio /var/log. 
Para verlos ejecuto el comando:

`ls -lh /var/log`

![[1.1.png]]

Para obtener todos los logs ejecuto el comando:

`rsync -a /var/log`

![[Pasted image 20250603233211.png]]

Y visualizo su contenido:

![[1.4.png]]

`tar -cvzf logs.tar.gz logs`

![[1.7.1.png]]

---

### Obtenemos la información básica del sistema, distribución

La información del sistema se encuentra los directorios **/etc/os-release /etc/lsb-release /etc/issue**

`cat /etc/os-release & /etc/lsb-release & /etc/issue`

![[2.1.png]]

Además de que con el comando **hostnamectl** también se puede ver información relacionada con el sistema.

`hostnamectl`

![[2.3.png]]

---

### Adquirimos el nombre del equipo (/etc/hostname), el cual será leído durante el arranque del sistema

Esta información es muy sencilla de obtener, puesto que se encuentra en el archivo **/etc/hostname**.

`cat /etc/hostname`

![[3.1 1.png]]

---

### Adquirimos el fichero hosts que asocia direcciones IP en nombres de dominio (/etc/hosts)

Esta información también es fácil de obtener, debido a que se encuentra en el archivo **/etc/hosts**.

`cat /etc/hosts`

![[4.1.png]]

---

### Adquirimos los atributos contraseñas de los usuarios e información de los grupos

Esto son 3 puntos diferentes, pero yo los hice a la vez (obtuve todo pensando sin saber que las contraseñas y los grupos eran los siguientes puntos), así que los voy a documentar en el mismo punto. 

Toda la información de los usuarios se encuentra en el archivo **/etc/passwd.**

![[5.1.png]]


Sus contraseñas se encuentran cifradas en el archivo **/etc/shadow**

`cat /etc/shadow`

![[5.2.1.png]]

Y la información de los grupos se encuentran en el archivo **/etc/groups**

`cat /etc/group`

![[5.2.png]]


---

### Adquirimos la información sobre el acceso de usuarios, equipo que usó, eventos del sistema, estado actual a partir de la copia del fichero wtmp

Esta información se encuentra en el archivo **/var/log/wtmp** pero la información de este archivo no es legible con un simple cat.
Para obtenerla de forma legible hay que usar el comando **last -f** pasándole como parámetro el archivo wtmp.

`last -f /var/log/wtmp`

![[8.1 1.png]]

Redirijo la salida de este comando a un archivo para guardar la información pero en vez de usar un simple cat uso el comando:

`cp –preserve=timestamps /var/log/wtmp wtmp.txt`

![[8.3.png]]

Así se mantienen la fecha y hora originales de modificación y acceso del archivo copiado.

Otra forma de visualizar el contenido de este archivo es con el comando **utmpdump**.

`utmpdump wtmp.txt`

![[9.1 1.png]]

Este comando se usa para convertir archivos binarios de logs de sesiones a un formato más legible, así que podría ser otra forma de obtener esta información (para almacenarla en un archivo).

---

### Adquirimos el histórico de comandos

El historial de comandos se encuentra dentro del directorio personal de cada usuario, más específicamente en el archivo **.bash_history**

`cat /home/usuario/.bash_history`

![[11.2 1.png]]

---

### Adquirimos las conexiones remotas mediante ssh. Se puede obtener los host que se han conectado, las claves públicas con las que han accedido y claves privadas

Dentro del archivo **/var/log/auth.log** se encuentran todos los intentos de autenticación que se han intentado hacer al equipo, incluyendo las conexiones externas. 
Así que para ver las conexiones remotas ssh uso el comando:

`cat /var/log/auth.log | grep “sshd”`

![[12.1.png]]

Observo que se han intentado 2 conexiones por SSH desde un equipo externo hacia este equipo. 


Si el caso fuera al revés (un usuario de este equipo se ha conectado a otro equipo por SSH) se podrían obtener las claves públicas que ha usado.

Estas se encuentran en el directorio **/~.ssh/authorized_keys**.

![[12.4.1.png]]

Aunque no hay nada dentro del archivo

---

### Extraemos scripts de inicio

Actualmente en Ubuntu se usa **systemd** para el inicio del equipo y se **dejó de usar init.d a partir de la versión 15.04**, pero como muchas aplicaciones se desarrollaron para init.d incluso hoy en día existen scripts de inicio init.d. 
Yo obtendré ambos. 

Los scripts de inicio de init.d se encuentran en **/etc/init.d**

`ls -la /etc/init.d/`

![[12.4.png]]


Y los de **systemd** de encuentran en **/etc/systemd/system**

`ls -la /etc/systemd/system`

![[13.2 1.png]]

Obtengo todos estos scripts con el comando:

`tar –preserve-permissions -cvzf inicio_backup.tar.gz /etc/init.d /etc/systemd/system /lib/systemd/system`

![[13.3.png]]

---

### Extraemos las tareas programadas

Las tareas programadas se encuentran en el archivo **/etc/crontab**.

`cat /etc/crontab`

![[14.1.png]]

Pero estas no son todas las tareas programadas del sistema, estas se encuentran en el directorio **/etc/cron.d**

`ls -la /etc/cron.d`

![[14.3 1.png]]

Para poder obtener el contenido de estos directorios ejecuto el comando:

`tar -cvzf tareas_programadas.tar.gz /etc/cron.d /etc/cron.daily /etc/cron.weekly /etc/cron.hourly /etc/cron.monthly`

![[14.4.1.png]]

---

### Adquirimos los ficheros recientes de los usuarios con nautilus desde la home del usuario

La información sobre los archivos/programas que se han creado, abierto recientemente se encuentran en el archivo **~/.local/share/recently-used.xbel.** 

La información de este archivo está en formato XML.

![[15.1 1.png]]

Para ver los ficheros que han sido abiertos recientemente por el usuario puedo f iltrar la información del fichero por bookmark

`grep "<bookmark href=" ~/.local/share/recently.used.xbeled.xbel>"`

![[15.2.png]]

---

### Adquirimos los ficheros recientes abiertos en LibreOffice

Para poder ver los ficheros recientes abiertos con LibreOffice hay que ver el contenido del fichero **/home/usuario/snap/libreoffice/334/.config/libreoffice/4/user/registry/modifications.xcu** y filtrar la información por **“HistoryItem”**

`cat /home/usuario/snap/libreoffice/334/.config/libreoffice/4/user/registry/modifications.xcu | grep "HistoryItem"`

![[16.1 1.png]]

---

### Adquirimos los thumnails, que son las imágenes en miniatura que hay o ha visitado el usuario

Estas imágenes se almacenan en el directorio **/home/usuario/.cache/thumbnails**.
Copio el directorio con el comando **tar** donde se puede ver todos los archivos que estoy obteniendo.

`tar -cvzf thumbnails.tar.gz /home/usuario/.cache/thumbnails`

![[17.2.1.png]]

---

### Adquirimos las localizaciones del usuario, si tiene GPS

Para poder encontrar estas localizaciones, navego hasta el directorio **/home/usuario/.cache/tracer3/files/errors** y observo el siguiente contenido:

![[18.1 1.png]]

---

### Adquirimos las conexiones de red incluidas las WIFI

Se deberían de encontrar en la ubicación **/etc/NetworkManager/system-connections** pero en mi caso, está vacío:

![[19.1 1.png]]

---

### Adquirimos la configuración de las cuentas en línea que GNOME proporciona, como por ejemplo de google drive.

Al igual que en el apartado anterior, esta información se debería de encontrar en **/home/usuario/.config/goa-1.0** pero al ver el contenido del directorio, no hay nada.

![[20.1 1.png]]


---

### Adquirimos información del sistema mediante el comando uptime, extrayendo cuánto tiempo lleva en marcha el sistema, usuarios conectados

Para obtener información sobre el tiempo de uso del equipo, usuarios conectados etc se usa el comando **uptime.**

`uptime`

![[21.1 1.png]]

Pero quedarse solo con este comando sería quedarse corto, así que también usaré los comandos who y w.

`uptime & who & w`

![[21.2.png]]

---

### La versión del sistema operativo

El comando que más información nos proporciona para ver la versión del sistema operativo es el comando **uname -a.**
Otros parámetros para usar con este comando, con los que sacar otro tipo de información son:

-  -r
-  -m
-  -s
-  -n

![[22.1 1.png]]

---

### Obtenemos las particiones del sistema

Para ver todas las particiones del sistema, se pueden usar varios comandos:

`fdisk -l`

![[23.1 1.png]]


`blkid`

![[23.2.png]]

`lsblk`

![[23.3.png]]

---

### Obtenemos la lista de sistemas de archivos actualmente montados en el sistema. Contendrá información sobre los puntos de montaje y los dispositivos asociados

Con el comando **mount -l** se puede ver información sobre los sistemas de archivos del equipo:

`mount -l`

![[24.1 1.png]]


Otro comando con el que ver los sistemas de archivos es el comando **df -h**

`df -h`

![[24.2 1.png]]

---

### CAINE

En caso de que el disco de la maquina este cifrado, deberemos de hacer una clonación en vivo, porque si el equipo se apaga, ya no podremos acceder a los datos. 
Para obtener esa copia voy a usar la herramienta **CAINE.** 
Preparo las 2 máquinas virtuales para que estén dentro de la misma red interna.

![[25.1 1.png]]

↓

![[25.2 1.png]]

Arranco la máquina virtual de CAINE

![[25.3 1.png]]

Una vez accedo al SO realizo su configuración de red para que se pueda conectar al equipo Ubuntu:

![[25.4.png]]

Pruebo que hay conexión entre ambas máquinas:

![[25.5.png]]

Antes de hacer la copia debo de desbloquear el disco, debido a que este está en estado “Solo lectura”

![[25.6.1.png]]

↓

![[25.6.2.png]]

Abro una terminal y con el comando **lsblk** veo los discos de la máquina Ubuntu:

![[25.6 1.png]]

Antes de copiarlo, he de hacer otra cosa, que es crear una partición en el disco del equipo CAINE. En mi caso he usado fdisk.

`fdisk /dev/sda`

![[25.7.png]]


Las opciones que he configurado han sido: 
- Partición nueva - N 
- Tipo de partición: primaria - P 
- Numero de partición: 1 - 1 
- Primer y último sector – Default

Y con **w** guardo los cambios realizados:

![[25.9 1.png]]

Para formatear esa partición uso el comando: 

`mkfs.ntfs /dev/sda1`

![[25.10.png]]

El último paso para preparar la copia del disco es abrir el puerto 12000 para que desde Ubuntu mandemos la copia a la máquina CAINE.

`nc -l -p 12000 > marcos_ubuntu.img`

![[25.11.png]]

En Ubuntu ejecuto el comando:

`dd if=/dev/sda conv=sync,noerror | nc 192.168.1.101 12000`

![[25.11.1.png]]

Con un **ls -lh** veo que se ha creado la imagen del disco:

`ls -lh`

![[25.13.png]]
