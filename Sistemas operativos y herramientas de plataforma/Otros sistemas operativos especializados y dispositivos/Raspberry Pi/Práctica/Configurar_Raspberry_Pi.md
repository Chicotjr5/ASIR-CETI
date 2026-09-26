<details>
  <summary><h2>Índice</h2></summary>

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

</details>

## Introducción

En esta práctica se va a hacer uso de una Raspberry PI 4 para realizar diferentes tareas:

- Automatizar copias de seguridad
- Instalar un Firewall y crear diferentes reglas
- Crear un servidor FTP

---

### Instalar y configurar Raspberry Pi

El primer paso de esta práctica es poner en marcha una **Raspberry Pi 4**, para hacerlo deberemos de preconfigurarla con una serie de opciones, la primera siendo su sistema operativo, que en este caso va a ser **Raspberry PI OS LITE**.

Para poder obtener el programa de instalación, lo descargamos de la siguiente [web](https://www.raspberrypi.com/software/)

![1 1](https://github.com/user-attachments/assets/e50aff80-01ea-4975-a4c7-b4d4da89016a)


Y marcaremos la como lugar de almacenamiento a la propia Raspberry Pi.

![1 2](https://github.com/user-attachments/assets/655963b1-9284-43bc-b831-de3669504ab6)


Ya están los parámetros iniciales preparados, pasamos al siguiente paso.

![1 3](https://github.com/user-attachments/assets/4f46a6bf-980e-48ad-8f3b-79f04dce43aa)


Ahora editaremos los ajustes de personalización del sistema operativo de la Raspberry Pi.

![1 4](https://github.com/user-attachments/assets/d4022351-08fd-4cf5-963c-dcb2695fe95c)


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

![1 5](https://github.com/user-attachments/assets/f59baf16-5f4d-4f11-bca0-4f7ba63ebc72)


↓

![1 6](https://github.com/user-attachments/assets/0c291868-3969-4b31-a62b-486408069f7f)


Ya con todo listo, se instalará el sistema operativo con la configuración que hemos realizado.

![1 7](https://github.com/user-attachments/assets/06f768ab-c0a1-4a1f-a131-37fa58128648)


Esperamos unos pocos minutos y listo, ya tenemos nuestra Raspberry Pi 4 lista para ser usada.

![1 8](https://github.com/user-attachments/assets/3570174b-1625-44b2-958f-906023dcf79b)


---

### Conexión a la Raspberry Pi

Conectaremos nuestro equipo anfitrión a la red donde está conectada la Raspberry Pi para poder comunicarnos con la misma.

![2 1](https://github.com/user-attachments/assets/75ef0f20-362f-44e2-aa93-794fe7621127)


Ya conectados a la red comprobaremos la conexión con la Raspberry Pi realizando un ping.

```bash
ping padOS-1
```

![2 2](https://github.com/user-attachments/assets/20c4c8c3-eed3-4fd9-8a6e-cbcfa765e181)


Para poder trabajar con la Raspberry Pi realizaremos una conexión ssh con el usuario que configuramos anteriormente.

```bash
ssh padOS-1@padOS-1
```

![2 3](https://github.com/user-attachments/assets/db5f4fa0-d6bf-4979-afba-15e2b093a681)


---

### Crear copia de seguridad

Antes de hacer nada, se realiza una actualización del sistema con la siguiente orden:

```bash
sudo apt update -y && sudo apt full-upgrade -y
```

![3 1](https://github.com/user-attachments/assets/16385156-1aa4-4d23-8bb8-bcdffa1ab8f6)



La copia de seguridad se hará de todo el **directorio /home** y se guardará en el directorio **/backup**.

![3 3](https://github.com/user-attachments/assets/40119e0c-23a5-45ef-b0fd-64d1a4e19a91)


El comando para realizar la copia será el siguiente:

```bash
rsync -avh /home /backup
```

![3 4](https://github.com/user-attachments/assets/68ea7e37-902c-4132-beba-08a8d13f3a75)


En la imagen se ve la opción **--dry-run** la cual saca por pantalla el resultado de la ejecución del comando, permitiéndonos saber si se ha realizado de forma correcta o no.

Ya funcionando, creamos un script:

![3 5](https://github.com/user-attachments/assets/1031f41b-e2c0-42c9-96be-65059f140980)


Lo que hace este script es mostrar la fecha de realización de la copia de seguridad, además de ejecutar la copia de seguridad, pasando toda esta información a un archivo log llamado log_backup.txt.


Para poder automatizar la copia de seguridad, editamos el archivo **/etc/crontab** y ponemos la siguiente línea:

```bash
0 */12 * * * root test -x /root/scripts/backup.sh
```

Con esta línea la copia de seguridad se ejecutará cada 2 horas, todos los días de la semana, todos los días del mes, todos los meses.

![3 6](https://github.com/user-attachments/assets/efa728a5-c4b9-4dd2-90cb-868739a1a260)


---

### Configurar IP estática

Ahora configuraremos una IP estática en la Raspberry Pi 4 con el comando **nmtui**

![4 1](https://github.com/user-attachments/assets/3daa842b-5e6f-4457-8fba-31f89784d77a)


Este comando abre una interfaz, con la cual podemos configurar diferentes parámetros de la Raspberry Pi 4, pero en este caso solo se va a configurar una IP estática. 
Para hacerlo vamos a **Edit a connection>Wifi preconfigured** y ya dentro configuramos la IP de forma manual.

![4 2](https://github.com/user-attachments/assets/7b908df9-b67f-4139-b70a-655f27009d96)


↓

![4 3](https://github.com/user-attachments/assets/4fdb33a5-a125-4438-a4f4-f1d80d3cdb60)


↓

![4 4](https://github.com/user-attachments/assets/4e9c5fc3-3d99-4e5c-b5dc-05375612e836)


---

### Firewall

El firewall que usaremos para esta práctica es ufw (Uncompicated Firewall)

```bash
apt install ufw
```

![5 1](https://github.com/user-attachments/assets/58d6127a-7dca-46a3-82bf-5320fe9b560c)


#### Permitir únicamente el acceso al puerto 22 desde una IP.

Las reglas que se han de crear son las siguientes:

```bash
sudo ufw allow from 192.168.1.103 to any port 22
```

![5 2](https://github.com/user-attachments/assets/ad18ed0e-854a-4fb2-a420-89d54b5e61ce)


```bash
sudo ufw deny from any to any port 22
```

![5 3](https://github.com/user-attachments/assets/fbf4f90c-3112-4b2c-9ed1-96c0d2fd86b2)


Con la primera regla permitimos la conexión ssh al equipo con la IP 192.168.1.103 (es mi equipo personal). 
Con la segunda, denegamos todo el tráfico a ese puerto, así, tan solo mi equipo personal podrá conectarse. 
En la siguiente captura se puede ver que la regla funciona.

![5 4](https://github.com/user-attachments/assets/90c74b39-e073-4004-a72c-d80457100c1a)



#### Bloquear todo el tráfico saliente hacia internet, menos por el puerto 80 y 443

Creamos una regla que deniega todo el tráfico saliente

```bash
sudo ufw default deny outgoing
```

![5 5](https://github.com/user-attachments/assets/9d0afe94-6c8e-4d11-988b-849c0ffb065c)


Y luego creamos otras 2, que permiten el tráfico saliente hacia los puertos 80 y 443.

```bash
sudo ufw allow out to any port 80
```
```bash
sudo ufw allow out to any port 443
```


![5 6](https://github.com/user-attachments/assets/d79fec40-6349-44a7-9ed4-4709a6a99921)


#### Registrar intentos fallidos de conexión SSH

Para poder ver el registro del servicio ssh y observar cualquier evento usamos el comando

```bash
sudo journalctl -u ssh -o verbose | tail -n 24
```

![5 7](https://github.com/user-attachments/assets/ed30e41c-314a-4d41-be6a-cebe3f6df71e)


#### Configurar una política por defecto que bloquee todo el tráfico no especificado en las reglas.

Para realizar este objetivo, configuramos las 2 siguientes reglas.

```bash
sudo ufw default deny incoming
```
```bash
sudo ufw default deny outgoing
```

![5 8](https://github.com/user-attachments/assets/55af9a3d-2169-4166-bbd2-ff80449bcaa2)


#### Permitir el acceso a un servicio adicional en el puerto 8080 desde toda la red interna

Para este objetivo, hemos de crear una nueva regla en el firewall

```bash
sudo ufw allow from 192.168.1.0/24 to any port 8080
```

![5 9](https://github.com/user-attachments/assets/4dcaab46-489f-47d7-ac04-90ea831205d3)



Pero no solo es añadir la regla anterior, si no que además, hay que modificar las **iptables** las cuales  son un programa que permite a los usuarios configurar reglas para el filtro de paquetes.

```bash
sudo iptables -t nat -A PREROUTING -p tcp --dport 3389 -j REDIRECT --to-port 8080
```

![5 10](https://github.com/user-attachments/assets/def2cbb1-791f-47e3-bffa-d6136ff12f67)


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

```bash
sudo ufw status verbose
```

![5 11](https://github.com/user-attachments/assets/d049bcb3-7894-4aaa-baa5-dc66e00d4e77)


Y para ver las de iptables:

```bash
sudo iptables -t nat -L -n -v
```

![5 12](https://github.com/user-attachments/assets/6591e9ef-6e02-4c9b-a5a4-65bccb217fc7)


---

### Servidor FTP

Ahora pasaremos a instalar un servidor FTP. 
Usaremos **vsftpd** para crearlo, un servidor FTP para sistemas Unix y Linux, diseñado para ser rápido, seguro y con una configuración sencilla, así que lo instalamos con un **apt install vsftpd**.

```bash
sudo apt install vsftpd
```

![5 13](https://github.com/user-attachments/assets/6dcead1c-fe93-4dfa-829c-7c8dde547007)


Una vez instalado pasamos a ver su estado, para comprobar que se ha instalado e iniciado de manera correcta.

```bash
systemctl status vsftpd
```

![6 2](https://github.com/user-attachments/assets/019b2948-6239-487f-97b2-03f992bc5ead)



Para poder crear este servidor, previamente hemos de tener unos requisitos previos. 
El primero de todos es tener UFW instalado y funcional, como ya lo tenemos pasamos al siguiente punto. 
Este consiste en definir el rango de puertos pasivos. Para configurarlo editamos el archivo **/etc/vsftpd.conf** y añadimos las siguientes líneas: 
- **pasv_min_port=50000** 
- **pasv_max_port=51000**

![6 3](https://github.com/user-attachments/assets/0c20c14b-4eaf-427e-8610-4b2a2fe96819)



El siguiente punto es conocer desde que redes se permitirá el acceso a FTP, que en nuestro caso será la será la 192.168.1.0/24.

![6 4](https://github.com/user-attachments/assets/972d5ede-02c2-4282-b7ea-b246dced5f71)


#### Permitir conexiones FTP desde una red específica

Para cumplir este objetivo, debemos de añadir las siguientes reglas a ufw:

```bash
sudo ufw allow proto tcp from 192.168.1.0/24 to any port 21
```

![6 5](https://github.com/user-attachments/assets/10152234-754b-4378-b26d-ee60fb3896d3)


```bash
sudo ufw deny 21/tcp
```

![6 6](https://github.com/user-attachments/assets/9d814414-c9e0-490e-93f8-fbe29c556dde)


#### Permitir conexiones pasivas, desde el puerto 50000-51000

Para poder hacer esto hay que modificar el archivo **/etc/vsftpd.conf** y poner las siguientes líneas.

![6 7](https://github.com/user-attachments/assets/da7eec04-b56c-442f-b8d8-67ec70bb005d)


Además, hemos configurado las siguientes reglas en el firewall:

```bash
sudo ufw allow in 50000:51000/tcp
```
```bash
sudo ufw allow out 50000:51000/tcp
```

![6 8](https://github.com/user-attachments/assets/f31101c1-c704-4e62-aa88-ce9ade3e2ce1)


#### Permitir el tráfico saliente necesario para actualizaciones de software y DNS.

Crearemos las 3 siguientes reglas:

```bash
sudo ufw allow out 53
```
```bash
sudo ufw allow out 80
```
```bash
sudo ufw allow out 443
```

Con un **ufw status verbose** visualizamos las reglas que hemos ido creando:

![6 14](https://github.com/user-attachments/assets/ad8112d0-f9ef-42af-9795-8d2dd550414d)


