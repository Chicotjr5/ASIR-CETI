## Instalación y configuración de NFS

### Instala los paquetes necesarios para el servidor y los clientes NFS 

En esta práctica vamos a instalar NFS, el cual es un protocolo, que se utiliza en redes de área local para crear un sistema de archivos distribuido. 
Primero vamos a instalarlo en el servidor con el siguiente comando:

![image](https://github.com/user-attachments/assets/d5c77350-6809-4724-983d-f492dcb87847)

Al instalarlo, nos pedirá que servicios debemos reiniciar, dejamos los que vienen por defecto y finalizamos la instalación

![image](https://github.com/user-attachments/assets/604fd7ce-4164-499e-b8a2-19e363699bd8)

Para comprobar que los paquetes se han instalado, usaremos el comando:

```bash
grep nfs /proc/filesystems
```

![image](https://github.com/user-attachments/assets/be6bb08d-fde7-45a4-8449-52361eca45f0)

Para instalarlo en los clientes:

```bash
apt install nfs-common rpcbind
```

![image](https://github.com/user-attachments/assets/bc1919e5-2ff9-4d59-9823-7716665d8157)

---

### Crea dos usuarios en el cliente y en el servidor

Seguiremos, teniendo que crear 2 usuarios en cada equipo que vamos a usar. 
Pero estos usuarios tienen una particularidad, pues deberán de ser configurados de la siguiente forma: 

**En el servidor**
  - Usuario1 → Nombre: ryu. UID: 1050
  - Usuario2 → Nombre: ken. UID: 1051 
**En el cliente 1**
  - Usuario1 → Nombre: ryu. UID: 1050
  - Usuario2 → Nombre: ken. UID: 1051 
**En el cliente 2**
  - Usuario1 → Nombre: ryu. UID: 1050
  - Usuario2 → Nombre: ken. UID: 1081

Usaremos los siguientes comandos para crear a los usuarios:

**En el Servidor**

![image](https://github.com/user-attachments/assets/53b2b4f1-b69a-4b23-aace-e147b53db7d5)

↓

![image](https://github.com/user-attachments/assets/10b120df-604a-407f-99c5-24f2ddb39927)

**En el cliente 1**

![image](https://github.com/user-attachments/assets/329e37b4-2cc5-49ce-ac9c-d81ada2957a4)

↓

![image](https://github.com/user-attachments/assets/114650f6-b056-4201-b151-cf430791955e)

**En el cliente 2**

![image](https://github.com/user-attachments/assets/1fe2f5df-5a29-4c30-b173-858cf4f308dc)

↓

![image](https://github.com/user-attachments/assets/dc9ab3e0-a226-42fb-90d0-d44068859995)

---

### Crea un directorio llamado ryu_stage

Proseguiremos teniendo que crear una carpeta en el servidor, la cual será la que utilizaremos para hacer esta práctica. 
Dentro de esta carpeta vamos a crear algunos archivos/directorios.

![image](https://github.com/user-attachments/assets/aee99a32-85b3-4794-b9dc-9856e1d3934c)

#### Establece como usuario propietario a ryu y como grupo propietario al grupo ryu 

Para poder cambiar el usuario y grupo propietarios del directorio, vamos a ejecutar el comando:

```bash
sudo chown ryu:ryu /ryu_stage 
```

![image](https://github.com/user-attachments/assets/39d38b8e-955d-4200-b576-3d12f4018d60)

Haciendo un **ls -l** vemos que se han aplicado los cambios.

![image](https://github.com/user-attachments/assets/e23506e4-0829-46b5-839c-9043d63baaa4)

#### Establece permisos totales para el usuario ryu y ninguno para el grupo ni para otros 

Para ello, usaremos el comando: 

```bash
sudo chmod 700 /ryu_stage 
```

![image](https://github.com/user-attachments/assets/f90516b2-8f3d-47ef-baac-372631219879)

Con **ls -l** vemos los cambios efectuados. 

![image](https://github.com/user-attachments/assets/d052928d-8485-4520-8d0d-3eec8d3c2b05)

---

### Configura NFS para compartir el directorio. Debe compartirse en modo sólo lectura y solamente debe poder accederse desde el equipo cliente 1. No olvides iniciar o reiniciar el servicio 

Para poder hacer que NFS funcione, tenemos que compartir el directorio, lo haremos a través del archivo **/etc/exports.**

![image](https://github.com/user-attachments/assets/7a1a44e6-55dd-4fa0-a0bb-0f84b83e4d8c)

Dentro de este archivo, tenemos que poner la ruta del archivo, la IP del equipo al que podrá acceder y las opciones (si es solo lectura, lectura y escritura etc).

![image](https://github.com/user-attachments/assets/1295b96c-1d8f-414a-ba6a-6d1f538bbb5b)

**RO**
- El directorio se monta como solo lectura 
**Sync**
- El servidor responderá a los clientes NFS solo cuando los datos se hayan escrito en un almacenamiento estable. 
**No_subtree_check**
- Para que no revise el árbol de directorios.
- Después, guardamos el archivo y ejecutamos el comando: 
**Exportfs -a**
- Este comando, exporta todos los directorios del archivo **/etc/exports**

![image](https://github.com/user-attachments/assets/02ecd76f-02cc-436a-a7ba-865d8d82f0e4)

Aún así, tendremos que reiniciar el servicio.

#### En cada uno de los clientes crea una carpeta llamada ryu_stage dentro de /mnt. Da permisos totales sobre esa carpeta a todos los usuarios. 

Ahora en los clientes hemos de crear un nuevo directorio **/mnt/ryu_stage** y proporcionarle los permisos requeridos.

![image](https://github.com/user-attachments/assets/6e33a600-4c56-4692-9762-23c783110727)

---

#### Monta a mano los directorios de ambos clientes, para que apunten al directorio compartido y comprueba lo siguiente: 

Antes de hacer nada, tendremos que instalar el paquete NFS para los clientes: 

![image](https://github.com/user-attachments/assets/599b9f83-2b88-45bf-9cff-9beed7dc7de6)

Una vez instalado, podemos montar el directorio compartido sobre el que acabamos de crear. 

**Cliente1**

![image](https://github.com/user-attachments/assets/a0fba8d9-ce9e-4d23-afc5-47c0350686c1)

↓

![image](https://github.com/user-attachments/assets/4ec63b3d-999f-4613-a11c-2fd657271db8)

↓

![image](https://github.com/user-attachments/assets/544d7530-98fa-4f18-9533-67fee62cc1dc)

↓

![image](https://github.com/user-attachments/assets/3ea8184a-b8b4-4659-9a2f-90b4e356ff0a)

**Cliente2**

![image](https://github.com/user-attachments/assets/ac1f8306-eeca-45f3-8ab5-03250e349498)

En el cliente 1 hemos podido montar la carpeta y ver su contenido, pero como es de solo lectura, no podemos crear nada. 

Además de que no hemos podido acceder con el usuario Ken, como es obvio.

Mientras que en el cliente 2, no se ha podido montar la carpeta. 

Esto se debe a que en el archivo **/etc/exports** hemos especificado, que solo se comparta al equipo con la IP 192.168.203.15. 

El cliente 1 tiene esa IP mientras que el cliente 2 no.

#### En el cliente 1, desmonta el directorio ryu_stage

Para montarla, ejecutamos el mismo comando, pero en vez de mount, Umount

![image](https://github.com/user-attachments/assets/b89b81e9-7b0c-4512-a311-6b6de81a614f)

#### Configura el cliente 1 para que se monte el directorio automáticamente al arrancar el equipo. En el apartado de opciones, indica solamente defaults. 

Editaremos el archivo **/etc/fstab** poniendo lo siguiente: 
- La dirección del directorio a montar 
- Punto de montaje 
- Formato del Sistema de Archivo 
- Opciones

![image](https://github.com/user-attachments/assets/ef5650a9-ff96-4b78-a121-a57f954ff821)


Ejecutaremos los comandos:

```bash
mount -a
df -h
```
para ver que se ha montado correctamente.

![image](https://github.com/user-attachments/assets/b18776b4-2b9b-40a8-993c-3ca86023e336)

Hacemos un reinicio y comprobamos de nuevo.

![image](https://github.com/user-attachments/assets/603de6dd-1956-4d4a-97ab-6cef833ed281)

---

### Crea un directorio llamado ken_stage. Crea en él algunas carpetas y archivos. Haz sobre él lo siguiente: 

Primero creamos el directorio **ken_stage** junto con algunos archivos.

![image](https://github.com/user-attachments/assets/fc087926-3668-4310-9c21-1bc0c4385889)

#### Establece como usuario propietario a ken y como grupo propietario al grupo ken 

```bash
chown ken:ken /ken_stage 
```

![image](https://github.com/user-attachments/assets/9d5be428-65f1-455f-829a-463bebc446ce)

#### Establece permisos totales para el usuario ken y ninguno para el grupo ni para otros 

```bash
chmod 700 /ken_stage
```

![image](https://github.com/user-attachments/assets/ab3558b1-309f-4e05-8f04-3bc1bcd42efa)

---

#### Configura NFS para compartir el directorio. Debe compartirse en modo lectura y escritura para los dos clientes (tienes que poner explícitamente la opción de lectura y escritura). No olvides reiniciar el servici

Volvemos al archivo **/etc/exports** y ponemos las IP de ambos clientes, junto con la opción de **rw**. 

![image](https://github.com/user-attachments/assets/eb02593e-bbb7-4a48-b56b-c31ec39b8a0b)

```bash
exportfs -a 
```

![image](https://github.com/user-attachments/assets/81b54151-1af7-4bbb-8e94-bccf09a43f55)

#### En cada uno de los clientes, crea una carpeta llamada ken_stage dentro de /mnt. Da permisos totales a todos los usuarios

Otra vez, el mismo procedimiento, crear carpeta, dar permisos

![image](https://github.com/user-attachments/assets/5651a999-6564-4e57-8d4a-0261ac623ed3)

#### Monta a mano los directorios de ambos clientes, para que apunten al directorio compartido y comprueba lo siguiente

**Cliente2**

![image](https://github.com/user-attachments/assets/8451c559-35db-45eb-8d20-5ca36a0086f7)

Vemos que no hemos podido esto se debe, a que el UID del usuario ken del cliente 2, no corresponde al UID que tiene el usuario Ken en el servidor. 
Si lo intentamos con el usuario ryu, obviamente no dejará hacer nada.

![image](https://github.com/user-attachments/assets/27232fc6-9de7-4e0a-8d4e-ed09cac0ef0d)

**Cliente 1**

![image](https://github.com/user-attachments/assets/a504a62e-22a5-46b0-8784-b3d0629d6daa)

En cambio, en el cliente 1 si hemos podido, tenemos el **fichero bien configurado**, la **carpeta bien creada** y configurada y **el usuario ken con el mismo UID** que en el servidor. 
Hasta hemos podido crear un directorio. 

![image](https://github.com/user-attachments/assets/00bbdbf5-2793-4789-8b8b-c4a405b3db41)

Pero si intentamos entrar / crear un archivo con el usuario ryu, obviamente no podemos.

![image](https://github.com/user-attachments/assets/a34035a2-29b0-46e6-a863-e308ea33ee70)

---

### Por último, vamos a comprobar el comportamiento de las opciones de NFS root_squash y no_root_squash. Vamos a hacerlo sobre el directorio ken_stage

Para terminar con esta parte de la práctica, vamos a ver como funciona la opción **no_root_squash** del fichero **/etc/exports**. 

Pero antes de eso, vamos a usar el usuario root y vamos a intentar entrar con ambos clientes al directorio que hemos montado antes.

![image](https://github.com/user-attachments/assets/b4b10e7b-c451-4a1f-88c8-c982bfc56b05)

Vemos que no hemos podido, esto se debe a que en el servidor hemos establecido que **solo el usuario ken tiene permisos** sobre este directorio, además de que es el propietario del mismo, el resto de usuarios no puede realizar ninguna acción sobre él.

![image](https://github.com/user-attachments/assets/f983d175-b09c-428b-877e-c7afa7a7aa79)

Y volvemos a desmontar el directorio.

![image](https://github.com/user-attachments/assets/58cc3a23-33b1-4d1c-a647-7177095840ab)

Seguidamente, nos vamos al servidor, donde para el cliente2, pondremos la opción **no_root_squash**. 

![image](https://github.com/user-attachments/assets/031e956d-e470-40bb-a80d-3ebd9fc45fa6)

#### Por último, vamos a comprobar el comportamiento de las opciones de NFS root_squash y no_root_squash. Vamos a hacerlo sobre el directorio ken_stage 

Reiniciamos el servicio, volvemos a montar el directorio en ambos clientes y lo comprobamos.

**Cliente 2**

![image](https://github.com/user-attachments/assets/d528f01e-66d0-4b4a-b9fa-d6a0dd88b392)

Hemos podido acceder, e incluso crear un nuevo directorio

**Cliente 1**

![image](https://github.com/user-attachments/assets/4593a0af-882c-4633-9e3b-fa7bcce3f145)

No hemos podido acceder a ella. 

¿Por qué pasa esto? 
Esto es provocado por la opción **no_root_squash**. 
Esta opción lo que hace es deshabilitar la característica **root_squash** la cual evita que los usuarios con privilegios administrativos los mantengan,  sobre la carpeta compartida, cuando se conectan remotamente. Cuando un usuario root de  otra máquina (UID=0) accede al recurso compartido, lo hará como si fuera el usuario nobody 
Y como es la opción por defecto, se deshabilita.

---

## Perfiles móviles en OpenLDAP usando NFS

### Crear carpeta para guardar perfiles móviles. 

Para realizar esta parte de la práctica, empezaremos creando un directorio para guardar los perfiles móviles de los usuarios. 
Al cual, le cambiaremos su propietario y grupo. 

![image](https://github.com/user-attachments/assets/17cf8756-6a29-4564-9df5-aae3d0e02072)

Seguidamente, la compartiremos con NFS, agregando una línea al archivo **/etc/exports.** 

![image](https://github.com/user-attachments/assets/846263b6-ed0e-4aec-922b-31449bb63aed)

Para que estos cambios se hagan efectivos, reiniciaremos el servicio.

![image](https://github.com/user-attachments/assets/82aace36-5503-4ef8-8d9c-fbf880ff6daf)

---

### Crear una carpeta para guardar los perfiles móviles en cada cliente

Vamos a los clientes y crearemos un directorio, para guardar los perfiles móviles, los cuales tendrán permisos totales.

![image](https://github.com/user-attachments/assets/19a2338d-858f-4eeb-8dd7-8b650fe2ca48)

---

### Montar la carpeta en el arranque 

Ahora, editaremos el archivo **/etc/fstab** para que el directorio del servidor se monte en cada arranque del equipo.
Pondremos la siguiente línea:

![image](https://github.com/user-attachments/assets/b908b710-fe0d-40e0-b48f-dbec1ad4b59e)

Comprobamos que el directorio se monta correctamente. 

![image](https://github.com/user-attachments/assets/4a5d6cd4-86de-4a6f-bf6e-9fb4c2a97037)

---

### Indicar en el usuario ldap la carpeta donde tendrá su perfil en el cliente 

Ahora, vamos a decir en los ficheros de los usuarios de OPENLDAP que su directorio /home es **/mnt/nfs/home/p_moviles/jefex**

![image](https://github.com/user-attachments/assets/68ab2d34-f7df-493e-991a-803158475997)

Actualizamos/agregamos esta información dentro del dominio. 

![image](https://github.com/user-attachments/assets/d24287eb-04e1-4954-bd43-0955d7436aa9)

---

### Comprobar configuración 

Ahora solo tendremos que comprobar que esta configuración es correcta. 
Iniciamos sesión con el **jefe3** y vemos que sale el mensaje de creación del directorio **/home**. 

![image](https://github.com/user-attachments/assets/d3564440-f38b-49af-8827-b0ab31d1fd45)

Si iniciamos sesión con el usuario **jefe4** de forma gráfica también veremos que sale el mensaje de creación de directorio (al que no hice captura en la práctica anterior). 

![image](https://github.com/user-attachments/assets/6942d1fd-e275-4b5f-b23f-630db30042e2)

Si vamos al directorio en el servidor, veremos que se han creado ambos directorios correctamente.

![image](https://github.com/user-attachments/assets/4aa56895-ed48-407b-bc0a-6ddea01171ab)























