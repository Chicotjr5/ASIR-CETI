### Crea un nuevo archivo llamado pruebapermisos

Para comenzar, crearemos un nuevo archivo llamada pruebapermisos

![image](https://github.com/user-attachments/assets/4b2e151a-8144-403e-9d8d-d8f7fafa2b8e)

---

### Establece los siguientes permisos sobre el archivo pruebapermisos usando la sintaxis de texto

**Establece para todos los tipos de usuario que no tengan ningún permiso.**

Para poder **establecer** un permiso con sintaxis de texto, usaremos el símbolo = y como queremos que no tengan ningún permiso, no pondremos ningún permiso, usando la siguiente orden: 

```bash
chmod u=,g=,o= pruebapermisos 
```

![image](https://github.com/user-attachments/assets/9f921fec-2184-4f55-8330-ff23fe2dd20d)

**Añádele todos los permisos al usuario, establece lectura y ejecución para el grupo y añade lectura para otros**

```bash
chmod u+rwx,g+rx,o+r pruebapermisos
```

![image](https://github.com/user-attachments/assets/d4cc483e-e573-4952-b10e-11065b0fab82)

**Quita el permiso de ejecución para el usuario y el grupo. **

```bash
chmod u-x,g-x pruebapermisos 
```

![image](https://github.com/user-attachments/assets/2ab05244-8419-4027-acc8-2e7aff515bae)

---

### Usando la sintaxis numérica, establece permisos para el archivo pruebapermisos para que el usuario tenga lectura y escritura, el grupo lectura y ejecución y los otros solo lectura. 

Ahora usaremos una sintaxis numérica, así que calcularemos el nº a establecer.

|             | R   | W   | X   | Resultado |
| ----------- | --- | --- | --- | --------- |
| Propietario | 1   | 1   |     | 6         |
| Grupos      | 1   |     | 1   | 5         |
| Otros       | 1   |     |     | 4         |


El nº que deberemos de poner en la orden es el 654.
Usaremos la siguiente orden:

![image](https://github.com/user-attachments/assets/cf0b0a73-ccb4-4eb3-b1b8-6a3831d2c683)

Para poder ver la máscara, usaremos la orden:

```bash
umask
```

![image](https://github.com/user-attachments/assets/6ee45894-d38c-4890-bf71-d24cefe7d4fb)

Para poder cambiarla, usaremos la orden umask estableciéndole como parámetro el nuevo valor que debe tomar. 

Si creamos un nuevo archivo, veremos que sus permisos establecidos de forma predeterminada son: 

- Propietario - rw
- Grupo - r
- Otros - r

![image](https://github.com/user-attachments/assets/0d25a008-1156-4c64-a9f8-68b2e8450d46)

---

### Créate una copia del ejecutable de la orden cat (/bin/cat) a tu directorio de usuario para trabajar ahora sobre ella. 

Para poder hacer una copia del ejecutable catm, usaremos la orden:

```bash
cp /bin/cat cat2
```

![image](https://github.com/user-attachments/assets/5f364bdd-53ff-46ad-bd45-723d28560780)

---

### Intenta utilizar cat2 para visualizar el contenido de /etc/shadow con permisos de usuario normal (sin ser root ni usar sudo)

Si intentamos hacer un cat sobre /etc/shadow con la copia recientemente creada, nos dirá que no podemos

![image](https://github.com/user-attachments/assets/6b0f581f-d2aa-4d75-b078-f678161def2d)

**¿Qué permisos y propietario tiene el archivo /etc/shadow?**

```bash
ls –l /etc/shadow
```

![image](https://github.com/user-attachments/assets/c7407ce8-2bff-490f-ac12-28aa7e6d0ac3)

Tiene de propietario al usuario root, que tiene permisos de escritura y lectura. 
Para el grupo, solo tiene de lectura y para el resto de usuarios, no tenemos ningún permiso.

**¿Qué propietario y grupo tiene el archivo cat2?**
**¿Qué permisos tiene el archivo cat2?**

```bash
ls -l cat2
```

Vemos que su propietario y grupo son root y que tiene permisos de **lectura**, **escritura y lectura** para **root**, **lectura y ejecución para su grupo y otros usuarios**.

![image](https://github.com/user-attachments/assets/15d978f7-8136-4a14-accb-89fdcbec19f4)

---

### Realiza lo siguiente sobre el archivo cat2 

**Cambia el propietario y el grupo a root**

Para poder cambiarle el propietario y el grupo, usaremos la orden

```bash
chown root ./cat2
chgrp root ./cat2 
```

![image](https://github.com/user-attachments/assets/3c36e3f9-448f-41cc-a9dc-ddc70570d155)

**Asegúrate de que los usuarios clasificados como “otros” tengan permisos de lectura y ejecución *

```bash
ls -l cat2
```

![image](https://github.com/user-attachments/assets/e5c022a0-2bc9-4046-86f4-4bb46c9371a4)

**Utiliza el bit SUID para que todos los usuarios puedan utilizar cat2 para visualizar el contenido de /etc/shadow**

Para poder establecer el bit SUID, usaremos la orden:

```bash
sudo chmod 4755 cat2
```

| SUID | SGID | Sticky B | Resultado |
| ---- | ---- | -------- | --------- |
| 1    | 0    | 0        | 4         |
| 0    | 1    | 0        | 2         |
| 0    | 0    | 1        | 1         |


![image](https://github.com/user-attachments/assets/7f1b2c7c-1339-4cfd-b79f-0dcf730adffe)

**Comprueba, sin utilizar permisos de root (sin ser root ni usar sudo) que un usuario normal puede ver el contenido de /etc/shadow usando cat2**

Ahora, si que podemos ver el contenido del fichero **/etc/shadow**


![image](https://github.com/user-attachments/assets/a1bb14fe-912d-4ae0-bfcc-1142dd02d367)

---

### Crea el directorio /tmp/pruebasgid. Dale permisos de escritura a todos los usuarios. Comprueba el usuario y grupo propietarios del directorio

Primero, crearemos el directorio **/tmp/pruebasgid**, dándole permisos de escritura a todos los usuarios. 

Posteriormente, veremos su propietario y grupo propietario, el cuál es el usuario que lo creó y el grupo principal del usuario que lo creó.

![image](https://github.com/user-attachments/assets/42ab6bbe-c017-4d2f-8259-f706c22104c7)

---

### Cambia a un usuario diferente y crea un archivo dentro de /tmp/pruebasgid

Si cambiamos a otro usuario e intentamos crear un archivo, veremos que podemos crearlo, puesto tenemos permiso de escritura para todos los usuarios. 

![image](https://github.com/user-attachments/assets/8488d698-3a41-41cf-b230-d2a8e3084a9e)

---

### Comprueba que el usuario y grupo propietarios son los del usuario que has utilizado

![image](https://github.com/user-attachments/assets/676e3a20-d296-426f-b652-cbd51ea34257)

---

### Activa el bit sgid a /tmp/pruebasgid. Crea un nuevo archivo con el mismo usuario que antes. El usuario será el mismo pero conservará el mismo grupo que el directorio

Para poder activar el bit SGID, usaremos la misma orden que para activar el bit SUID, pero en vez de poner un 4, pondremos un 2 

| SUID | SGID | Sticky B | Resultado |
| ---- | ---- | -------- | --------- |
| 1    | 0    | 0        | 4         |
| 0    | 1    | 0        | 2         |
| 0    | 0    | 1        | 1         |

La orden será:

```bash
chmod 2777 /tmp/pruebasgid
```

![image](https://github.com/user-attachments/assets/b97615d5-232e-4c92-bc30-a9a0ab5f4327)

Si creamos un nuevo archivo, el grupo del archivo será el grupo del directorio. 

![image](https://github.com/user-attachments/assets/2a900458-f2d9-499f-b85d-9c55ca3efc80)

---

### Crea el directorio /tmp/pruebasticky. Dale permisos de escritura a todos los usuarios. 

Volveremos a crear otro directorio dentro de **TMP**, este lo usaremos para poder **activar el Sticky B** y poder ver su funcionalidad. 

Volveremos a dar permisos de escritura a todos los usuarios.


![image](https://github.com/user-attachments/assets/5eff4275-e345-4131-ac4f-01e3cddcec0e)

---

### Con un usuario, crea un archivo dentro. Cambia a otro usuario y borra el archivo que había creado el primer usuario. Te debería dejar sin problemas. 

Cambiaremos de usuario y crearemos dentro un archivo. 
Como vemos, su usuario y grupo propietarios, son los del usuario creador.

![image](https://github.com/user-attachments/assets/20512f41-d06f-497b-a8fa-f780487d5cb1)

Volveremos a entrar con otro usuario y borraremos el archivo.

![image](https://github.com/user-attachments/assets/73388ae8-5aea-4eed-98cc-8f81ac1467a2)

---

### Activa el sticky bit en el directorio /tmp/pruebasticky. 

```bash
sudo chmod 1777 tmp/pruebasticky
```

| SUID | SGID | Sticky B | Resultado |
| ---- | ---- | -------- | --------- |
| 1    | 0    | 0        | 4         |
| 0    | 1    | 0        | 2         |
| 0    | 0    | 1        | 1         |


![image](https://github.com/user-attachments/assets/a54c84d2-0578-43e6-991e-6f4a3d25fc26)

---

### Vuelve a hacer lo mismo que en el paso 13. En esta ocasión no debería dejarte eliminar los archivos de otros usuarios 

Una vez tenemos el sticky b activado, procederemos a crear otro archivo.

![image](https://github.com/user-attachments/assets/dd11cf63-9e95-4d23-80ad-ca2a4071c0fa)

Procederemos a cambiar de usuario e intentar borrar el archivo. 
Pero veremos que no podemos. 

![image](https://github.com/user-attachments/assets/8555e8d6-f729-4b5e-b544-9a3a2daaf7d0)

Esta es la función principal del Sticky B, la cual no permite que un usuario pueda borrar archivos que no le pertenecen (siempre y cuando el archivo este dentro de un directorio con este permiso activado.) 

---

### Crea el directorio /tmp/pruebaacl

```bash
mkdir /tmp/pruebaacl 
```


![image](https://github.com/user-attachments/assets/954158f5-706a-4463-a9e6-48c6cdef75ae)

---

### Deja todos los permisos para el usuario propietario y ninguno tanto para el grupo como para otros 

Ahora, daremos todos los permisos al usuario propietario, pero no daremos ninguno al grupo ni al resto de usuarios.

```bash
sudo chmod 700 /tmp/pruebaacl 
```

![image](https://github.com/user-attachments/assets/ed241e13-c329-4d19-a6e3-8999bdc079ab)

---

### Con otro usuario, intenta entrar en el directorio y/o crear un archivo dentro. Dado que no tiene permisos, no te lo permitirá 

Entraremos con otro usuario e intentaremos crear un archivo dentro del directorio, sin éxito. 

![image](https://github.com/user-attachments/assets/aea8db15-fe5f-4560-8595-2741db6dad05)

---

### Crea una entrada en la ACL del directorio, dale permisos de lectura, escritura y ejecución para ese usuario.

```bash
getfacl /tmp/pruebaacl 
```

Podemos observar, que los usuarios y el grupo no tienen ningún tipo de permiso


![image](https://github.com/user-attachments/assets/6c2755a8-589f-4d18-b110-1880de2a5566)

Ahora, procederemos a crear una entrada para a ACL, en la cual, daremos todos los permisos al usuario **marcos_estandar**.

Para ello, usaremos la orden setfacl con la opción -m, la cual nos permite modificar/añadir una entrada

```bash
setfacl -m marcos_estandar:rwx /tmp/pruebaacl
```

![image](https://github.com/user-attachments/assets/8c1d6f2b-980a-4e1d-97c0-d411388e2311)

---

### Consulta la ACL del archivo, comprueba que está el usuario que has especificado y con esos permisos 

Volveremos a usar la orden **getfacl** para consultar los cambios realizados. 

![image](https://github.com/user-attachments/assets/c55f4a14-d4a9-47fa-a397-f9ec15b91ce5)

**Comprueba, además, que al hacer ls –l aparece un símbolo + tras los permisos**

![image](https://github.com/user-attachments/assets/e98de600-b485-4c48-b8fb-b291b49b4cb9)

---

### Comprueba que el usuario puede entrar en el directorio y crear archivos dentro

Entramos como el usuario y creamos un nuevo archivo, obviamente, nos deja crearlo. 

![image](https://github.com/user-attachments/assets/1f8cf2c0-b889-4cf0-9d56-099e3d2d8b24)

---

### Comprueba, con un tercer usuario (ni el propietario ni el usuario al que has metido en la ACL) que no tiene permisos. 

Si entramos con otro usuario e intentamos crear otro archivo, veremos que no podemos, puesto que no tenemos permisos para este usuario

![image](https://github.com/user-attachments/assets/77491658-0e32-49a0-9368-d4bb890d493c)
