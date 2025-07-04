### Crea un grupo de volúmenes (VG) llamado grupo_iaxx (xx es tu número de ordenador) que incluya la partición primaria del disco 1 que no hemos usado y todo el disco 2.

Iniciamos la instalación y tendremos que realizar un particionado, de la siguiente forma: 
En el primer disco duro vamos a crear 2 particiones primarias.

Una para el directorio /boot, con los datos de configuración siguientes

- Tamaño: 500 MB
- Tipo de partición: primaria
- Ubicación de la partición: principio
- Sistema de archivos: ext4
- Punto de montaje: /boot

La segunda partición quedará sin formatear y sin punto de montaje, la usaremos luego para usar LVM.

Cuando lleguemos a esta parte, tenemos 2 opciones:

- Usar todo el disco
- Almacenamiento personalizado – Elegiremos esta opción 

![image](https://github.com/user-attachments/assets/7b93730d-09c1-40f6-91cf-95d94730df91)

Nos saldrá la siguiente pantalla:

![image](https://github.com/user-attachments/assets/14b1223a-dc53-4901-8241-ae59420b1b53)


Dentro del disco de 75GB, haremos una partición de 0.5GB, la cual estará montada en **/boot**. 

Pero como queremos que este disco tambien sea parte del LVM, de momento solo vamos a crear la partición, sin formatearla y sin montarla, porque en mi caso, luego al crear el LVM no me dejaba seleccionar el disco. 

![image](https://github.com/user-attachments/assets/86cb0f19-14af-42c3-a042-36ec060dfa45)

Y en ese mismo disco, crearemos otra partición, con el resto del tamaño que nos ha sobrado.

![image](https://github.com/user-attachments/assets/7d0a030a-7220-4572-bd11-594b9ce3b8da)

Y ahora ya podemos crear el LVM.

En la pantalla anterior, vamos a esta opción y le damos a ADD 
Nos saldrá el siguiente menú, donde seleccionaremos el disco de 256GB y la partición de 74.5GB que acabamos de crear. 

Y por nombre, llevará **grupo_ia03**

![image](https://github.com/user-attachments/assets/b2d0f97f-8965-4745-9a6c-3cef8601aad7)

---

### Crea un grupo de volúmenes (VG) llamado grupo_iaxx (xx es tu número de ordenador) que incluya la partición primaria del disco 1 que no hemos usado y todo el disco 2.

Nos saldrá la siguiente pantalla

![image](https://github.com/user-attachments/assets/052bf779-d8eb-463e-9536-2faa8fff272d)

Dentro del disco de 75GB, haremos una partición de 0.5GB, la cual estará montada en **/boot**. 

Pero como queremos que este disco tambien sea parte del LVM, de momento solo vamos a crear la partición, sin formatearla y sin montarla, porque en mi caso, luego al crear el LVM no me dejaba seleccionar el disco

![image](https://github.com/user-attachments/assets/01025483-4eba-4263-93cc-1217171a1b2d)

Y en ese mismo disco, crearemos otra partición, con el resto del tamaño que nos ha sobrado.

![image](https://github.com/user-attachments/assets/83687908-46e4-4b79-8bf2-e9546df8361a)

Y ahora ya podemos crear el LVM. 

![image](https://github.com/user-attachments/assets/cfb1d658-e564-4e0b-acc0-edd1ea87fc68)

En la pantalla anterior, vamos a esta opción y le damos a ADD 

Nos saldrá el siguiente menú, donde seleccionaremos el disco de 256GB y la partición de 74.5GB que acabamos de crear. 
Y por nombre, llevará **grupo_ia03**

![image](https://github.com/user-attachments/assets/ede70b5f-e562-434b-8157-9e156c750122)

Ahora, dentro del LVM vamos a crear 4 volúmenes lógicos. 
El primero, el cual será para el directorio raíz y tendrá 25GB de tamaño.

![image](https://github.com/user-attachments/assets/2764f83a-e353-4bfe-9349-ea245390e32e)

El segundo, será usado como partición **swap** y tendrá un tamaño de 2GB.

![image](https://github.com/user-attachments/assets/2fe3d275-951f-4ffb-a7b5-34fbe16004c6)

Otra de 50GB que será para el directorio **/home**

![image](https://github.com/user-attachments/assets/c495e467-9adc-40a7-8e44-5c05d3400122)

Y, por último, la partición /var la cual tendrá el resto del espacio no usado. 

Y se nos queda el siguiente resumen. 

![image](https://github.com/user-attachments/assets/1a56db7b-aee7-4e9c-9fd4-44d8e3649db9)

---

### Datos para el servidor Ubuntu Server 

Una vez hemos acabado de configurar el LVM, Ubuntu nos pedirá que especifiquemos el nombre del servidor, del usuario y su contraseña.

![image](https://github.com/user-attachments/assets/7803705c-0bca-4c0d-b3b3-62e90678888a)

---

### En uno de los pasos se da la posibilidad de instalar un servidor ssh. Explica aquí qué es ssh y qué ventajas puede tener el instalarlo en un servidor. Márcalo para instalarlo

SSH, es un protocolo de administración remota, el cual, que permite a los usuarios controlar y modificar sus servidores remotos a través de Internet, mediante un mecanismo de autenticación.  

Proporciona un mecanismo para autenticar a un usuario remoto, transferir datos desde el cliente al host y retransmitir la salida de vuelta al cliente. 

Se creó como un reemplazo seguro para el Telnet sin cifrar y utiliza técnicas criptográficas para garantizar que todas las comunicaciones estén encriptadas. 

En Linux o macOS se puede usar SSH en su servidor remoto directamente desde la ventana del terminal.  

Los usuarios de Windows tienen que usar clientes SSH como Putty

**Ventajas**

- Autenticación de la estación remota
- Cifrado de la transferencia de datos
- Seguridad de la integridad de los datos
- Conexión segura y cifrada para la transferencia de datos
- Permite conexiones remotas seguras
- Conexión cifrada y segura para la administración del sistema

Después de especificar el usuario, nombre del servidor y su contraseña, se nos da la posibilidad de instalar el servidor **OpenSSH**

![image](https://github.com/user-attachments/assets/68bb6d6f-34f3-4a77-bdc8-4255fbb5dde2)

---

### También da la posibilidad de instalar “snaps”. Investiga qué son los snaps de Ubuntu y qué ventajas suponen. Explícalo aquí. Marca para instalar la snap de PowerShell. 

Los paquetes Snap de Ubuntu son una nueva forma de instalar aplicaciones que resuelve muchos problemas y simplifica la instalación para los usuarios. 

Tambien se puede describir como formato de paquete universal desarrollado por Canonical que permite empaquetar aplicaciones con todas sus dependencias y librerías, lo que facilita su instalación y ejecución en cualquier distribución de Linux. 

Dentro de la instalación, se nos da la elección de instalar unas cuantas, pero solo vamos a instalar la de **powershell**.

![image](https://github.com/user-attachments/assets/4787c30b-4c2a-420a-840c-27e145a568e1)

Después de esperar un buen rato, termina de instalarse el servidor y podemos entrar en él. 

![image](https://github.com/user-attachments/assets/4b9ebb02-1d91-423b-b46e-7e08a5f60bbf)

---

### Configura la red 

Ahora, vamos a realizar la configuración **TCP/IP** del adaptador puente. 
El adaptador NAT lo vamos a dejar tal y como está. 
Para poder realizar la configuración de red, tenemos que modificar el archivo **/etc/netplan/00-instaler/config.yaml**

![image](https://github.com/user-attachments/assets/b896ffab-4a8e-479c-9bb5-e20665b2d5ed)

↓

![image](https://github.com/user-attachments/assets/a1c32588-ad89-4b22-a342-1ebeddbf278f)

Aplicaremos la siguiente configuración. 
Una vez la tenemos, guardaremos la configuración, con el comando

```bash
netplan apply
```

Y usamos el comando 

```bash
ifconfig 
```
para ver que la IP realmente cambió. 

![image](https://github.com/user-attachments/assets/cfdc0560-82a3-46f4-96f0-d4aa060b12f3)

Ahora, vamos a hacer un ping entre un cliente Windows y hacia un cliente Ubuntu con el servidor, para comprobar que si funciona.

**Cliente Windows**

![image](https://github.com/user-attachments/assets/37fc932a-8ac2-4d92-b2ab-ae8751cc9a03)

**Ubuntu cliente**

![image](https://github.com/user-attachments/assets/6ce1ed39-17ac-407b-8950-c0930dcdcfda)

---

### Creación de usuario

Ahora, vamos a crear un usuario con nuestro nombre. 
Para ello, usaremos el comando 

```bash
useradd
```

Luego, le pondremos una contraseña con el comando 
```bash
passwd
```

Y ya tenemos nuestro usuario con una contraseña creado. 

![image](https://github.com/user-attachments/assets/46b6127f-c3db-47f7-8f52-eea0f518dd25)

---

### Instalar Guest Adittions

Instalar las Guest Adittions en un Ubuntu Server sin interfaz gráfica es un proceso muy tedioso, sinceramente. 
Lo que hay que hacer es primero insertar el disco con las Guest Adittions el cual se localiza en **/dev/cdrom**. 
Una vez insertado, montamos la carpeta **/dev/cdrom** en **/mnt**. 
Cuando se monte, tenemos que ir a **/mnt** y ejecutar el siguiente programa: 
**VBoxLinuxAdittions.run**

![image](https://github.com/user-attachments/assets/3184b617-b429-4167-b89e-c11399c39c2e)

---

## Instalar un servidor con un RAID 5

Ahora vamos a instalar un servidor Ubuntu en un RAID 5. 
Añadiremos 4 discos de 20GB cada uno y cuando lleguemos al momento donde elegiremos donde instalar el SO, crearemos un RAID5. 

![image](https://github.com/user-attachments/assets/b40f52e8-eb2f-45e3-accd-60a59dd79f41)

A la hora de crear el RAID, añadiremos todos los discos y el último lo dejaremos de reserva.

![image](https://github.com/user-attachments/assets/01394821-921e-4b80-81f8-d2dbfadeea6f)

↓

![image](https://github.com/user-attachments/assets/938c61b3-71cd-417e-9839-8931c4b15b2c)

Ahora, tenemos que montar ese RAID en el directorio /home. 

En un RAID 5, los datos se intercalan con bits de paridad en caso de que se produzca una falla en el disco duro.  

Los bits de paridad se insertan después de una secuencia de datos guardados y se distribuyen en todos los discos, RAID 4, que también utiliza los bits de paridad, los concentra en un solo disco duro.  

En el caso de una falla del disco duro, el riesgo de pérdida de datos es bajo.  

Si los datos están dañados, los bits anteriores y el bloque de paridad hacen posible recuperar los datos perdidos.  

Si el bit de paridad está dañado, los datos están intactos y, por lo tanto, accesibles sin problemas.

Y ahora 

**¿Qué es el Spare Disk?**

El “Spare Disk” en un RAID 5 es un disco duro que se mantiene inactivo hasta que uno de los discos activos falla.  

Este disco no forma parte del RAID, solo es una reserva que se mantiene a la mano para minimizar el tiempo de reconstrucción. 

En otras palabras, es un disco vacío que se utilizará para la reconstrucción de la paridad en un arreglo RAID. 

---

### Añade dos discos duros nuevos 

En esta parte, vamos a crear varios LVM con comandos en Ubuntu server. 
Lo primero que tenemos que hacer, es añadir los 2 discos nuevos. 
Uno de 6GB y otro de 2GB. 

![image](https://github.com/user-attachments/assets/b9c20557-4b49-413b-9052-a2bc09d9b585)

---

### Crea un nuevo grupo de volúmenes de 6 GB en total, cogiendo 4 de los 6 GB del primer disco y el segundo disco completo. Debes incluir todo el espacio de almacenamiento del VG en el proceso de creación, no añadirlos a posteriori

Una vez tenemos los discos duros, podemos crear nuestro grupo de volúmenes. 
Primero tendremos que crear 2 volúmenes físicos y como del disco de 6GB solo queremos 4 primero tendremos que hacer una partición de 4GB.

```bash
fdisk /dev/sdd
```

![image](https://github.com/user-attachments/assets/fde4593a-ce95-4bfb-a6d0-6e380fa142ff)

Y luego, formatearlo. 

```bash
mkfs.ext4 /dev/sdd1
```

![image](https://github.com/user-attachments/assets/229df64e-1a16-41c2-97ef-890906ed1d9f)

Una vez tenemos los 2 discos preparados, crearemos los volúmenes físicos. 

```bash
pvcreate /dev/sdd1 /dev/sdc 
```

![image](https://github.com/user-attachments/assets/a423833f-3ca7-4677-9b6c-dbfa33389600)

Con el comando 
```bash
pvdisplay 
```
podemos ver que se han creado ambos volúmenes físicos. 

![image](https://github.com/user-attachments/assets/be1463bf-ad01-4cd5-869c-bfb21937ba6d)

Y como ya tenemos los volúmenes físicos creados, ya podemos crear el grupo de volúmenes.

```bash
vgcreate vgMarcos /dev/sdd1 dev/sdc 
```

![image](https://github.com/user-attachments/assets/8b002a09-debf-4aec-b744-5bfad090d0ad)

Y con el comando 
```bash
vgdisplay 
```
podemos ver el grupo de volúmenes que acabamos de crear. 

![image](https://github.com/user-attachments/assets/008f6ffc-5f14-46e8-a4d5-895459b04763)

↓

![image](https://github.com/user-attachments/assets/58b7db08-9cd1-4c51-b03a-b369df854243)

---

### Crea dos volúmenes lógicos, uno de 3 GB y otro de 2 GB, tomando el espacio del VG que acabas de crear. Ponles de nombre lvtunombre1 y lvtunombre2 (usando tu nombre, claro). Una vez creados, usa una orden en la que se muestre que se han creado correctamente con el tamaño correcto. 

Ahora nos toca crear 2 volúmenes lógicos a partir del grupo de volúmenes que acabamos de crear.

Usaremos la orden

```bash
lvcreate –L 3G –n lvMarcos1 vgMarcos 
```

Una vez creados, usaremos el comando 
```bash
lvdisplay
```
para poder ver que se han creado correctamente. 

![image](https://github.com/user-attachments/assets/d31ca32b-9f06-40f6-9dd4-1eec428e00b5)

↓

![image](https://github.com/user-attachments/assets/52539404-9c81-4518-bef9-b76002a7de66)

---

### Haz lo necesario para poder usar y crear archivos y carpetas dentro de esos LV

Ahora queremos usar esos volúmenes lógicos para crear archivos/carpetas etc. 
Lo que haremos será formatear cada volumen lógico.

![image](https://github.com/user-attachments/assets/4805b296-549c-4cfc-8a8e-853f7d4a83cd)

↓

![image](https://github.com/user-attachments/assets/0e2cc68c-e508-4f20-9be2-a9e5c182fd30)

Y a cada volumen lógico, lo vamos a montar en un directorio. 

![image](https://github.com/user-attachments/assets/31492f20-2469-4cf3-9082-9aa30ec9a313)

Y creamos un directorio dentro de ellas para comprobar su funcionamiento.

```bash
mkdir /mnt/lvMarcos1/Prueba
```

![image](https://github.com/user-attachments/assets/ec0a3444-308f-4dc8-9593-d3bcc9a97932)

---

### Añade al VG que creaste antes los 2GB que quedaron libres del disco de 6GB. Vuelve a visualizar las propiedades del VG para comprobar que todo está correcto.

Para poder añadir tamaño a un volumen lógico ya creado, tendremos que expandir el grupo de volúmenes con otro volumen físico. 
Así que crearemos una partición de 2GB en el disco de 6GB.

![image](https://github.com/user-attachments/assets/29168f9b-ca75-4c92-885b-22bc54714428)

Nos sale un mensaje de que está ya en uso y podría ocurrir algún error, pero yo hago caso omiso y prosigo creando la partición sin ningún problema. 

![image](https://github.com/user-attachments/assets/069b7fdf-591f-4c2d-acc1-4d1bec44b8d0)

Con el comando 
```bash
fdisk –L 
```
podemos ver que se creó la partición sin ningún problema.

![image](https://github.com/user-attachments/assets/224752cb-57d8-4774-ad8a-67778d7d24e8)

Obviamente, después de crear la partición, tenemos que formatearla. 

![image](https://github.com/user-attachments/assets/fc0105ef-44a2-4bc3-a64b-97a7894cd5cb)

Una vez formateada, crearemos el volumen físico.

```bash
pvcreate /dev/sdd2
```

![image](https://github.com/user-attachments/assets/4441974d-c3dc-49b4-a413-4c299c16e167)

Y extenderemos el grupo de volúmenes creado anteriormente con este volumen físico creado.

```bash
vgextend vgMarcos /dev/sdd2 
```

![image](https://github.com/user-attachments/assets/bfca2763-c4cc-42bd-a12b-99b765b9944d)

Y si usamos el comando 
```bash
vgdisplay
```
veremos que el tamaño de este grupo de volúmenes es mayor. 

![image](https://github.com/user-attachments/assets/ad1a58bd-b923-4d06-9b73-67a2f471dc68)

---

### Crea otro LV con el resto de espacio que queda en tu LV (llámalo lvtunombre3) y también haz lo necesario para poder usarlo. Debe tener exactamente todo el espacio que queda en el VG. Comprueba que se ha creado correctamente con el tamaño y nombre adecuados. 

Ahora, con ese espacio de 2GB, crearemos otro volumen lógico.

```bash
lvcreate –L 2G –n lvMarcos3 vgMarcos
```

![image](https://github.com/user-attachments/assets/2c623ae2-65e8-4333-9742-870a498face1)

Si consultamos la lista de volúmenes lógicos (lvdisplay) veremos que se ha creado perfectamente.

![image](https://github.com/user-attachments/assets/13432a87-0725-4a54-9331-f5f50fd09ca6)

Y para poder usarlo, haremos lo mismo que hicimos con los otros 2 volúmenes lógicos, formatearlo en ext4.

![image](https://github.com/user-attachments/assets/50559818-b9eb-47a5-9583-3c3fa5eee056)

Creamos el directorio donde montaremos el volumen lógico. 

```bash
mkdir /mnt/lvMarcos3 
```
Montaremos el volumen lógico

```bash
mount /dev/vgMarcos/lvMarcos3 /mnt/lvMarcos3 
```

Crearemos una carpeta

```bash
mkdir /mnt/lvMarcos3/Prueba3
```
Comprobamos la creación de la carpeta

```bash
ls –l /mnt/lvMarcos3
```

![image](https://github.com/user-attachments/assets/28ee3048-6f32-42e3-9cf1-f1a7b460bc2e)

---

### Elimina de la configuración todos los elementos de LVM (LV, VG y PV) que has creado. Utiliza las órdenes de visualización de elementos de LVM para comprobar que se han eliminado efectivamente.

Como ya hemos creado todos los volúmenes, ahora los vamos a eliminar. 
Primero tenemos que desmontarlos de las carpetas donde están montadas. 

```bash
umount dev/vgMarcos/lvMarcos1 
```

![image](https://github.com/user-attachments/assets/c7edf3b8-3e39-4105-b70a-a547573d3731)

Proseguiremos desactivando los volúmenes lógicos. 

```bash
lvchange –activate n /dev/vgMarcos/lvMarcos1 
```

![image](https://github.com/user-attachments/assets/a4c75292-e701-4b76-9809-c0d3c60ede4c)

Y ya podemos eliminarlos. 

```bash
lvremove /dev/vgMarcos/LvMarcos1
```

![image](https://github.com/user-attachments/assets/55709e9d-506f-4792-83e8-4b4e64ce64c6)

Con los volúmenes lógicos eliminados, ya podemos eliminar el grupo de los volúmenes.

```bash
vgremove vgMarcos 
```

![image](https://github.com/user-attachments/assets/1149b2ff-1820-498a-af78-7bac114c6dbb)

Y con ello, los volúmenes físicos

![image](https://github.com/user-attachments/assets/c8915ba5-48c7-4f04-8c39-b473ecdc7eed)

Comprobamos con 
```bash
pvdisplay 
```
que se han eliminado los volúmenes físicos

![image](https://github.com/user-attachments/assets/45ae7d24-2eee-483a-b82f-e12170461529)
































