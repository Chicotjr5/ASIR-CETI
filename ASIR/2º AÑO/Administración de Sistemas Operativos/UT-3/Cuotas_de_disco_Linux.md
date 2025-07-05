## Instalación y configuración de cuotas de disco 

### Instalar los paquetes adecuados en el servidor para utilizar cuotas de disco y activar las cuotas para la partición /home. 

Para poder hacer cuotas de disco, tenemos que instalar el paquete **quota quotatool.** 

```bash
apt install quota quotatool
```

![image](https://github.com/user-attachments/assets/b1050d89-3c04-4010-a1d2-5088c5acbba7)

Y después de instalarlo, tenemos que activarlas, para ello, vamos al archivo **/etc/fstab** y como queremos aplicar las cuotas de disco sobre el directorio /home, buscamos la línea donde se encuentre la partición y añadimos en el campo <options>: **usrquota y grpquota**

Con estos argumentos, informamos al sistema de que el volumen indicado podrá tener 
cuotas para los usuarios y para los grupos.

![image](https://github.com/user-attachments/assets/1787005d-2caf-44fc-a82e-099714f7514c)

↓

![image](https://github.com/user-attachments/assets/6d248519-4de5-4dd9-af4a-7d7195eaf7dc)

↓

![image](https://github.com/user-attachments/assets/0991c1a3-e084-4dd9-a16b-cc9385512cc4)

Para que se hagan efectivas las cuotas, tendremos que volver a montar el directorio **/home**. 

![image](https://github.com/user-attachments/assets/a768f89a-00e1-4083-9acb-2c8e92a1afa2)

Para comprobar si se ha hecho efecto, ejecutaremos el comando **mount** sin parámetros.

![image](https://github.com/user-attachments/assets/5ce7cc45-3fcd-4fad-b1c0-6996cf3daf7c)

---

### Vamos a configurar las cuotas para los usuarios locales. Deberemos crear los siguientes usuarios y grupos: 

**A:**
- Un grupo de usuarios llamado streetfighter. Crea dos usuarios llamados ryu y ken que deben tener el grupo streetfighter como grupo principal.  

**B:**
- Un grupo de usuarios llamado tekken. Crea dos usuarios nuevos llamados jin y kazuya y mételos en tekken (como grupo principal) 

Ahora, tan solo tenemos que añadir usuarios y grupos, los cuales nos servirán para configurar cuotas de disco. 
Para crear los usuarios, usaremnos el comando:

```bash
adduser <nombre_del_usuario>
```

![image](https://github.com/user-attachments/assets/0e501378-414c-4c36-b392-eb84bc0a2d63)

Para añadir grupos, el comando`:

```bash
addgroup
```

![image](https://github.com/user-attachments/assets/fa5f70e3-5aee-4857-94ca-59d7c57a7844)


Para añadir los usuarios a los grupos, usaremos el comando adduser y el comando usermod:

```bash
usermod -g <nombre_del_grupo> <nombre_del_usuario>
```

![image](https://github.com/user-attachments/assets/a9263759-72f4-4d50-9132-a578076b1054)


```bash
adduser <nombre_del_usuario> <nombre_del_grupo>
```

![image](https://github.com/user-attachments/assets/c8acd019-be84-4a73-8526-bc5242d301fc)

---

### Configurar el sistema de cuotas para establecer un límite máximo de ocupación en disco con las siguientes características (establece el límite blando un 10% por debajo del límite máximo)

**A**
- Los usuarios del grupo de streetfighter - 1 GB  

**B**
-  El usuario jin - 500 MB

**C**
- El usuario kazuya - 250 MB

Una vez tenemos las cuotas activadas y los usuarios creados, ya podemos configurarlas. 
Para configurarlas, primero hay que verificar si están, para ellos, ejecutamos el comando:

```bash
quotacheck -cgu /home
```

Este comando comprueba si existen o no las cuotas, creando los nuevos archivos de cuota 
si no existen y verificando las cuotas de usuario y grupo.

Este comando comprueba si existen o no las cuotas, creando los nuevos archivos de cuota 
si no existen y verificando las cuotas de usuario y grupo.

```bash
quotacheck -cgu /home
```

![image](https://github.com/user-attachments/assets/85ad390b-8d4e-4005-aeb4-9b4d1bc8b10a)

Si hacemos **ls -l** /home podemos ver que los archivos de cuota de disco están creados, ya podemos configurarlas. 

![image](https://github.com/user-attachments/assets/4159122b-047a-4c86-95fd-4ec0cb54b5b7)

Primero configuramos la cuota del grupo. 

```bash
edquota -g streetfigther
```

Como pone en el enunciado tenemos que darle 1GB de límite duro y el 90% de 1GB de límite blando, pero en estos ficheros no podemos poner medidas de GB o MB, si no de bloques e inodos, así que habrá que hacer la conversión. 
Un bloque en estos archivos son 1KB, así que para pasarlo a GB hacemos la multiplicación 1024x1024=1048576  
Y para hacer el 90% : 1048576x0.9=943718

![image](https://github.com/user-attachments/assets/acba1946-7168-4187-8052-12f38d32000d)

Para los usuarios, seguimos el mismo procedimiento.

![image](https://github.com/user-attachments/assets/2c362a30-ad8e-4c94-9dbb-bf5b3fe76733)

↓

![image](https://github.com/user-attachments/assets/d6fba3d2-664d-4d88-b77d-92e4a19f8139)

↓

![image](https://github.com/user-attachments/assets/c175d467-512a-40b7-873f-c5b8ca0c19e3)

↓

![image](https://github.com/user-attachments/assets/b39dc380-652a-4dbe-b153-d19ab784d69d)

Después de configurar las cuotas, reiniciamos el equipo, para que se guarden los cambios y las cuotas se hagan efectivas.

![image](https://github.com/user-attachments/assets/68a473ab-9ab6-410e-a8f8-cce791e7c199)

---

### Comprobar que el sistema de cuotas funciona provocando la superación del límite establecido en alguno de los usuarios 

#### Que si no se alcanza el límite de la cuota los usuarios pueden crear archivos sin problemas 

Iniciamos sesión con el usuario Kazuya y creamos un archivo con el comando **dd**. 
Este archivo tendrá un tamaño de 236KB.

```bash
dd if=/dev/zero of=prueba bs=235390 count=1
```

![image](https://github.com/user-attachments/assets/92bf0956-905c-4087-98d0-97c547ded370)

Este usuario tenía un limite de cuota de 250MB, así que aun puedo seguir creando archivos

#### Que al crear archivos sube el número de bloques usados (tanto en edquota como en repquota) 

Si creamos muchos archivos/archivos muy grandes, esto se verá reflejado en la cuota del usuario. 
Aquí he creado un archivo con el usuario Jin 

![image](https://github.com/user-attachments/assets/2098eefb-aa9d-43d6-b88d-13fb1c34884a)

Si voy a ver la cuota del usuario **edquota -u jin** veré que el nº de bloques usados ha subido. 

![image](https://github.com/user-attachments/assets/e5510e07-f067-42ae-9c1f-fdbb0d45c489)

#### Que, si se alcanza el límite flexible, con repquota se puede observar el “+” indicándolo y se activan los días de periodo de gracia. Tanto para las cuotas de grupo como de usuario 

Para ver las cuotas de los usuarios, ejecutamos:

```bash
repquota /home.
```

![image](https://github.com/user-attachments/assets/18b04a72-e0a4-4785-bac4-d21c9cd1a10c)

Y para ver la de los grupos 

```bash
repquota -g /home. 
```

![image](https://github.com/user-attachments/assets/d7026f21-8f9d-438c-95e8-d8bf5be9dd21)

Y vemos como después de superar el limite blando, ha aparecido el periodo de gracia. 

---

### En las cuotas de grupo (para streetfighter)

#### Que, si se alcanza el límite flexible, con repquota se puede observar el “+” indicándolo y se activan los días de periodo de gracia.

Para poder ver las cuotas de los grupos (anda que no cuesta) tenemos que usar el comando repquota con la opción -g. 
Y vemos como al superar el límite flexible, ha aparecido el periodo de gracia, que por defecto con 7 días. 

![image](https://github.com/user-attachments/assets/8cebd926-f459-43a0-836d-b524f53824b6)

#### Que si se alcanza el límite duro no se pueden crear archivos con contenido (sí se podrían crear archivos vacíos puesto que no hemos limitado el número de inodos) 

Una vez hemos alcanzado el límite duro, no podremos crear más archivos, pues la cuota nos lo impide. 

![image](https://github.com/user-attachments/assets/328a6edc-9123-4ef5-897d-87c19ed2644c)

Si intentamos crear archivos que ocupen espacio, veremos que no podremos. 
Pero si intentamos crear un archivo vacío, el cual no ocupe espacio, si podremos. 

![image](https://github.com/user-attachments/assets/8516122a-e54f-48d3-9797-711e6ad1421d)

#### Que los bloques ocupados afectan a todos los miembros del grupo: llega con un usuario del grupo al límite y comprueba que con el otro usuario tampoco puedes crear archivos

El usuario Ken ha creado tantos archivos que ha ocupado completamente la cuota de disco, así que si iniciamos sesión con otro usuario, no podremos crear archivos (solo archivos vacíos). 

![image](https://github.com/user-attachments/assets/69321b09-4d12-4352-972c-10b719ffdc3d)

↓

![image](https://github.com/user-attachments/assets/20f9993f-d282-4e45-a940-aa4980f28936)

#### Que si se cambia el grupo propietario de un archivo baja el número de bloques ocupados 

Creamos un archivo con el usuario Ken, este tendrá como grupo principal, el grupo Streetfighter. 

![image](https://github.com/user-attachments/assets/2a2e5726-898d-4453-9629-39d4bfc6e3db)

Si usamos el comando:

```bash
chown root:tekken /home/ken/prueba
```
cambiaremos el grupo (y usuario) principal del archivo, provocando que baje el nº de bloques usados por Ken

![image](https://github.com/user-attachments/assets/ce6511ec-345f-4b2d-ad71-ed219c622ae0)

---

### En las cuotas de usuario (tanto para jin como para kazuya): 

Que, si se alcanza el límite flexible, con repquota se puede observar el “+” indicándolo y se activan los días de periodo de gracia. 

Con el usuario Kazuya vamos a crear un archivo que supere el límite blando (aunque en esta captura solo vemos que no podemos crear más archivos, porque me pase y cree uno muy grande.

![image](https://github.com/user-attachments/assets/1a5f208b-493f-4271-ad1d-ba61950b72e9)

Si vemos las cuotas con 
```bash
repquota /home
```
vemos que en el usuario Kazuya tenemos el + y el periodo de gracia ya activado. 

![image](https://github.com/user-attachments/assets/33e6da60-5a20-4099-b87b-5b74bfe5a315)

#### Que si se alcanza el límite duro no se pueden crear archivos con contenido (sí se podrían crear archivos vacíos puesto que no hemos limitado el número de inodos)

Una vez alcanzado el límite duro, no podremos crear más archivos que ocupen espacio, pero si podremos crear archivos vacíos, pues estos no ocupan espacio.

![image](https://github.com/user-attachments/assets/1693b8c2-c906-4e28-bef7-36b61475f3c5)

#### Que si se cambia el usuario propietario de un archivo baja el número de bloques ocupados

Si cogemos el archivo que hemos creado antes con el usuario jin y le cambiamos el propietario, veremos que en la cuota del usuario, el nº de bloques ha disminuido drásticamente.

![image](https://github.com/user-attachments/assets/08e585d9-dd5b-46e1-8272-edb56402b035)

↓

![image](https://github.com/user-attachments/assets/2da3cb7a-6c02-4027-be6a-cb12cf7db340)

---

## Configuraciones adicionales de cuotas

### Haz lo siguiente para el usuario jin

#### Elimina todos sus archivos y comprueba que los valores de uso de su cuota están como al principio. 

Con el comando 
```bash
rm -rf /home/jin/*
```
eliminamos todos los archivos que haya creado el usuario jin. 
Pero si revisamos las cuotas, veremos que usa 24 bloques y 7 inodos. 

![image](https://github.com/user-attachments/assets/cc0362d3-a129-410a-98e7-62cf468fe844)

Esto se debe a que cuando creamos un usuario, se crean con él una serie de archivos (que no podemos borrar, porque son importantes).

![image](https://github.com/user-attachments/assets/95060c5c-ee6c-47c8-835b-4f01fab617d2)

#### Configura cuotas para ese usuario, pero esta vez de inodos: pon de límite blando 6 y de límite duro 10

Para editar las cuotas del usuario jin

```bash
edquota -u jin
```

Entramos y ponemos en el límite blando 6 inodos y en el duro 10 días.

![image](https://github.com/user-attachments/assets/1aaaa6b5-d391-4d45-9697-9875c5443f64)

Aunque como ya tenemos 7 inodos usados, el limite blando ya se ve superado, por lo que se activa el periodo de gracia, por lo que al configurarlo más adelante a 2 días, veremos que salen 6 días con repquota, así que para arreglarlo habrá que poner un límite blandomayor,que es lo que hago

---

### Cambia el periodo de gracia para los inodos. Establécelo a dos días 

Para cambiar el periodo de gracia, usaremos el comando:

```bash
edquota -t
```

![image](https://github.com/user-attachments/assets/4afc37b0-7c1c-40a9-9c7f-835fd34f1189)

Y en el periodo de gracia de los inodos, pondremos 2 días.

![image](https://github.com/user-attachments/assets/d2d1a5ce-23d0-494a-b27d-f1c7ced8f170)

---

### Haz comprobaciones alcanzando los dos límites con el usuario jin. Para ello, crea archivos vacíos utilizando touch. Comprueba lo siguiente 

Creamos varios archivos con el usuario Jin. 

![image](https://github.com/user-attachments/assets/0ac60fb5-6586-4a34-9c9f-d009277b1eef)

Y realizaremos las siguientes comprobaciones. 

#### El valor de ocupación de inodos sube según creas archivos 
#### Al estar vacíos, el nivel de ocupación de bloques no sube 
#### Al alcanzar el límite blando se marca con el carácter + 
#### El periodo de gracia que aparece es el que habías establecido 

Literalmente puedo comprobar los 4 puntos anteriores con 1 sola captura

![image](https://github.com/user-attachments/assets/3bfba148-b4a5-46f5-9a75-2c6cc11afc19)

El nº de inodos ha subido 
Pero el de bloques no 
Podemos ver el -+ porque hemos alcanzado el límite blando. 
Se ha establecido el periodo de gracia (con los 6 días por la explicación anterior). 
Si cambio el límite blando, y volvemos a comprobar las cuotas, veremos que ya se pone el periodo que he puesto antes. 

![image](https://github.com/user-attachments/assets/5811da35-351b-4673-8466-a8df877e6849)

---

### Al alcanzar el límite duro no deja crear más archivos, incluso estando vacíos

Si alcanzamos el límite duro, ya no podremos crear más archivos.

![image](https://github.com/user-attachments/assets/af03a723-bace-4fa8-a613-d5cb84eb2de3)
















