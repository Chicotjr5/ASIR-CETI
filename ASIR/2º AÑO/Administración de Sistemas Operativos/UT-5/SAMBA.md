## Instalación y configuración del servidor Samba

### Instala los paquetes del servidor en Ubuntu Server 

En esta práctica, vamos a crear un servidor SAMBA. 
Para ello, primero habrá que instalarlo. 

```bash
apt install samba
```

![image](https://github.com/user-attachments/assets/7c478c37-ec48-494f-9acb-5f8f012d8f2a)

Este comando nos instala 2 servicios:

```bash
service smbd restart
service nmbd restart
```

![image](https://github.com/user-attachments/assets/c0d8968a-db9a-4625-9957-b6062c171021)

---

### Crea en el sistema dos usuarios nuevos llamados link y ganon. Deberás iniciar sesión local al menos una vez con estos usuarios para que se creen sus carpetas en /home.

Para poder probar este servicio, tenemos que crear 2 usuarios, que será los que utilizaremos a lo largo de esta práctica.

![image](https://github.com/user-attachments/assets/da9cb88f-d483-4245-ac22-c4dc3a4c8113)

Una vez creados, iniciamos sesión con ellos para que se creen sus directorios **/home.**

![image](https://github.com/user-attachments/assets/797c2518-1894-426b-bfd5-45cafd4bec93)

---

### Da de alta en samba a los usuarios que acabas de crear, utilizando la orden smbpasswd. 

Para dar de alta a estos usuarios, usaremos la orden:

```bash
smbpasswd -a usuario
```

Que quiere decir que damos de alta a un usuario? 
Los servicios proporcionados por Samba utilizan usuarios creados localmente en el equipo, pero con una peculiaridad, las contraseñas se almacenan en una ubicación distinta.  

En un equipo Linux, **las contraseñas de los usuarios se almacenan en el archivo /etc/shadow, sin embargo, para que un usuario del sistema se pueda utilizar con los servicios de Samba, es necesario generar una contraseña específica para Samba.  
**
A la operación de asignar a una cuenta de usuario su contraseña específica para Samba se la denomina **activación de la cuenta de usuario Samba**. 

Y eso es lo que hace esta orden (muy importante, no olvidarnos de que al acceder más adelante a las carpetas compartidas con Samba tendremos que poner esta contraseña y no la del proprio usuario ) 

![image](https://github.com/user-attachments/assets/1b773d8a-d269-4fbc-8893-5a84ab9c6919)

---

### Usa una orden para mostrar la lista de usuarios dados de alta en Samba. También consulta su información avanzada

Para comprobar que se han añadido, usaremos el comando 

```bash
pbedit -Lw.
```

![image](https://github.com/user-attachments/assets/ba851243-92d6-4785-85ff-55183c1789fc)

Y con pbedit -Lv vemos la información avanzada del usuario.

```bash
pbedit -Lv
```

![image](https://github.com/user-attachments/assets/f320b4dc-0859-4eae-a206-1a4a91bc552a)

---

### Configura los siguientes parámetros globales

Ahora vamos a realizar algunos cambios en la configuración del servidor, la cual se encuentra en **/etc/samba/smb.conf**

![image](https://github.com/user-attachments/assets/5d1a7d7c-6c6f-491f-a2b5-469855aaf1e5)

Estas configuraciones se hacen el **[global]** 
Lo primero, es definir el grupo de trabajo y que la seguridad del acceso, será con nombre y usuario, lo cual se establece con la opción **security = user**. 

![image](https://github.com/user-attachments/assets/55101b99-8cc4-4ace-b4df-e856a5878cf9)

---

### Configura las carpetas Home para que sean accesibles. Deben ser de lectura y escritura y no navegables. Además, cuando se cree un directorio nuevo, tendrá todos los permisos para el propietario, permiso de lectura y ejecución para el grupo y ningún permiso para los demás. Cuando se cree un archivo, tendrá permisos de lectura y escritura (no de ejecución) para el propietario, sólo de lectura para el grupo y ningún permiso para otros.

Estas configuraciones se hacen en **[homes]** 
Y habrá que establecer lo siguiente: 

- browseable = no
  - Indica si este recurso aparecerá en la lista de recursos compartidos o no
- read only = no
  - Indica que el recurso es de solo lectura o no
- create mask = 0640
  - Indica la máscara con la que se crearán los archivos dentro del recurso compartido
- directory mask = 0750
  - Indica la máscara con la que se crearán los directorios dentro del recurso compartido 

![image](https://github.com/user-attachments/assets/b42cb5ce-8462-4d3f-baf9-e37718e11832)

Guardaremos los cambio y reiniciaremos los servicios para que coga los cambios. 

---

### Configura tu equipo Windows en el mismo grupo de trabajo que el servidor Linux. Accede, desde Windows, a la navegación gráfica de la red.

Simplemente, tendremos que cambiar el grupo de trabajo del equipo y comprobar que ambos equipos se ven y tienen conexión.

![image](https://github.com/user-attachments/assets/28460d3b-38d7-4eb5-a01f-0a636d1d2072)

Para poder acceder al servidor Samba, lo ideal sería ir a Red y que ahí nos saliera el equipo, pero intentando varias veces, no ha funcionado, por lo que lo intentaremos de la siguiente forma.
Vamos al buscador y ponemos la IP del equipo junto unos de los directorios compartidos.

![image](https://github.com/user-attachments/assets/e4a17b2d-84d3-44e2-af18-b87084ab559d)

Nos pedirá poner las credenciales para esa carpeta, que son el nombre del usuario y la **contraseña samba**. 
Una vez dentro, vemos que accedemos al contenido y que de hecho, podemos crearlo. 

![image](https://github.com/user-attachments/assets/a122f82b-d696-41b5-93c2-a3579efbda7e)

Si vamos al servidor, veremos que se crearon ambos archivos y que tienen los permisos que hemos configurado.

![image](https://github.com/user-attachments/assets/02350690-4951-4b93-86a2-08fcaa21f050)

---

### Ahora, también desde Windows, accede al directorio home del usuario link directamente (\\equipo\link) 

Vamos al buscador de Windows, ponemos \\192.168.203.5\link y vemos que está visible el directorio. 

![image](https://github.com/user-attachments/assets/6e4553fb-fa80-4048-b501-41d2f6393736)

Y entramos:

![image](https://github.com/user-attachments/assets/37b3e558-8920-47a2-8852-139408566a41)

---

### En el cliente Linux: 

En Linux, tendremos que instalar antes el cliente de smb y cambiar el grupo de trabajo del equipo.

![image](https://github.com/user-attachments/assets/1b2fd560-5076-4a13-92dc-056761cb0c41)

↓

![image](https://github.com/user-attachments/assets/8e4b4655-7d27-4f39-976f-64566a924dbe)

Para poder acceder ahora al servidor samba, vamos a **red>Conexión con el servidor**  

![image](https://github.com/user-attachments/assets/c4d83eb3-d54d-4d7f-a5ef-a12387b7775d)

Nos pedirá credenciales.

![image](https://github.com/user-attachments/assets/0d8a0e79-80c0-4f90-bdbc-26e525a390e4)

Y podremos acceder al directorio e incluso, crear directorios y archivos

![image](https://github.com/user-attachments/assets/aa27afc2-241b-4b02-b475-ced79f79263e)

Para poder ver los recursos compartidos del servidor, hemos de instalar el paquete cifs-utils.

```bash
apt install cifs-utils
```

![image](https://github.com/user-attachments/assets/577742a6-efc5-4824-88b7-59216d77856e)

Y con el siguiente comando podremos ver los recursos compartidos de cada usuario en samba.

![image](https://github.com/user-attachments/assets/aec07098-427a-46b4-bef1-6e601a3ef875)

Y para poder conectarnos con un usuario, ejecutaremos: 

```bash
smbclient //192.168.203.5/link 
```

![image](https://github.com/user-attachments/assets/44877e85-a7a7-4ef1-8dba-6ce094fefde9)

Esto nos abrirá una **conexión-consola** con el directorio compartido, donde podemos ejecutar los siguientes comandos

![image](https://github.com/user-attachments/assets/60cf755f-c5a1-4ada-b216-4dece2445155)

Vamos a coger el archivo **dalezeldadale.txt** del directorio compartido y nos lo vamos a descargar. 
Es una operación tan sencilla como un:

```bash
get “nombre del archivo”
```

![image](https://github.com/user-attachments/assets/f14b7e35-0f33-467f-b673-82d72b50080d)

Si salimos de la conexión, veremos que se ha descargado el archivo.

![image](https://github.com/user-attachments/assets/e685c71e-2112-413e-8e24-86651f9ed347)

Y para subir un archivo, seguiremos el siguiente proceso:

- Crearlo
- Conexión

```bash
put <nombre del archivo>
```

![image](https://github.com/user-attachments/assets/f3bc2c6e-40ad-4bd0-902e-bdd16277943f)

---

### Supuestamente, al hacer las pruebas anteriores has ido creando en el directorio de link archivos y carpetas a través de samba.

Si ahora vamos al servidor, veremos que tenemos varios archivos/directorios creados en el directorio **/home** de nuestro usuario:

![image](https://github.com/user-attachments/assets/a4eca02b-8398-4098-b24b-559ad6ff66d0)

Pero algunos de estos archivos tienen unos permisos distintos 
Estos permisos se guardan en **/etc/samba/smb.conf** 
Y los archivos creados remotamente tienen los mismos permisos que los que hemos especificado en el archivo. 
Y los permisos de los archivos nuevos, que se crean de forma local se configuran con **umask**.

---

### En el servidor, crea una nueva carpeta en /usr llamada compartida_tuNombre (siendo tuNombre tu propio nombre).

Creamos el nuevo directorio y ponemos a root como usuario y grupo propietario. 
Además, le damos permisos totales a otros usuarios.

![image](https://github.com/user-attachments/assets/1021f87f-4c4a-4cc4-aa8b-ad8495b2f304)

Una vez creada, vamos a configurarla en Samba, para que los clientes puedan acceder a ella. 
Primero, pondremos que es encontrable y de solo lectura.

![image](https://github.com/user-attachments/assets/32ea57f9-8802-46cd-bd6b-0ea31bf13512)

Y reiniciamos los servicios para que se cojan los cambios. 

![image](https://github.com/user-attachments/assets/cbe9a2fa-67b7-4816-b90e-6f47cfbf6849)

---

### Conecta a la carpeta que acabas de compartir desde un cliente Windows y desde un cliente Linux, usando la interfaz gráfica de exploración de la red. Comprueba que esta vez sí que podemos ver la carpeta al explorar. 

Vamos a Windows para comprobar esto y vemos que efectivamente, podemos ver la carpeta desde el buscador de red.

![image](https://github.com/user-attachments/assets/9d481c6b-f728-4de5-9ce7-d955ce68cca3)

Lo mismo desde Linux.

![image](https://github.com/user-attachments/assets/5ae66e1d-1e9a-4148-8b75-4046883ff71d)

---

### Comprueba que tanto link como ganon pueden conectarse a la carpeta. También comprueba que ambos pueden ver el contenido, pero no crear archivos ni carpetas dentro, al estar en modo de solo lectura 

En Windows probaremos a conectarnos con Link

![image](https://github.com/user-attachments/assets/051e03b1-56a9-4171-a69a-c1f7cb6a066c)

Y si podemos ver el contenido del directorio, pero no crearlo. 

![image](https://github.com/user-attachments/assets/02221df3-ee03-4d84-a8cb-e5f9656c11d1)

Lo mismo desde Linux, pero con el usuario **ganon.** 

![image](https://github.com/user-attachments/assets/3afff969-8d2b-4bee-8ba6-8c154f1c526e)

Podemos ver el contenido, mas no podemos crear contenido.

![image](https://github.com/user-attachments/assets/51a4751d-cd6d-4b8f-92ff-b3b35c2faa74)

---

### En el servidor, cambia la configuración de samba de la carpeta compartida, de la siguiente manera: 

Pasamos al siguiente punto y es que ahora, vamos a hacer que solo **Link** pueda acceder a la carpeta compartida, sea **rw** y los archivos creados se creen con permisos de lectura y escritura para el propietario y ninguno para el resto.

![image](https://github.com/user-attachments/assets/09b4fffa-b3bf-49b4-a4ef-3ef9bb9d5e7e)

---

### Comprueba que se aplica lo del apartado anterior

Volvemos a Linux y conectamos con **Link**. 
Crearemos un nuevo archivo y veremos que tiene los permisos que hemos configurado.

![image](https://github.com/user-attachments/assets/c1aa090e-c319-450f-b4e4-daf1fdab7c87)

↓

![image](https://github.com/user-attachments/assets/cd55dc2b-b5e9-4e3e-8623-8475800e051e)

Y además, tambien veremos en el servidor que se creó el archivo y que tiene esos permisos. 

![image](https://github.com/user-attachments/assets/2a7e6995-7fa3-42a1-bad6-33911fd7e38e)

Si intentamos acceder con **ganon**, no podremos.

![image](https://github.com/user-attachments/assets/11adcd68-a9cc-4156-be9d-cb0020f398fa)

---

### Además de lo que se configura en samba, también se necesita tener permisos locales para acceder a los recursos compartidos. Comprobémoslo:

Si vemos los permisos de los directorios **/home** veremos que estos no tienen permisos para otros, así que se los vamos a añadir para hacer una prueba.

![image](https://github.com/user-attachments/assets/1a53b595-0bb9-48eb-98e2-4ac598b950ee)

Vamos a Linux y nos conectaremos al directorio **/link** con **ganon.**

![image](https://github.com/user-attachments/assets/185e917b-cbc0-453b-b12c-2b99e6310916)

Y podemos entrar al directorio (permisos de escritura)

![image](https://github.com/user-attachments/assets/dafab45a-5e64-4cd1-9916-8fb0fccda351)






























