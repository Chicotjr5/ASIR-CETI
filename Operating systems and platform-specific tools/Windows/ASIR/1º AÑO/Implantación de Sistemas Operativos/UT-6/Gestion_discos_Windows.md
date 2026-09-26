### Configura en primer lugar el disco para que se gestione mediante un MBR

Añadimos 3 discos nuevos a la máquina:

![image](https://github.com/user-attachments/assets/5fc420dc-bbb5-44c3-a3b8-a43c686a9a07)

Ya con ellos instalados, vamos al Administrador de discos e inicializamos el disco, como MBR.

![image](https://github.com/user-attachments/assets/c758df57-d217-4e50-8c7f-6dfaf34954b3)

Y ya lo tenemos

![image](https://github.com/user-attachments/assets/0cea1c52-522f-407a-94ef-6825786a3fd9)

---

### Crea 6 volúmenes simples de 200 MB cada una. Asígnales a todos letras de unidad.

Ahora, crearemos 6 volúmenes simples en el disco. 

Para crearlas, damos **clic derecho>Nuevo Volumen Simple** y nos saldrá un menú para asignarle una letra de unidad, elegir el sistema de archivos, el tamaño de la unidad de asignación (tamaño del bloque) y la etiqueta del volumen. 

![image](https://github.com/user-attachments/assets/43de0589-8266-4ec6-b4b0-36d5896bd533)

Y creamos todos los volúmenes. 

![image](https://github.com/user-attachments/assets/ebf614f8-359c-48d3-be5c-dc61c06cca29)

Como podemos ver, tenemos 3 particiones primarias y una extendida, esto es debido a las limitaciones de MBR. 
Al crear más de 4 particiones, creara una extendida, donde se crearán el resto de particiones. 

---

### Crea, dentro de Mis Documentos una carpeta nueva que se llame Unidad

Ahora, vamos a crear una carpeta, sobre la que haremos una serie de configuraciones

![image](https://github.com/user-attachments/assets/2b0d30fa-2e26-44c5-bdd3-e1760abea709)

---

### Crea un nuevo volumen simple, también de 200 MB, pero esta vez, en lugar de asignarle una letra de unidad, seleccionamos la opción Montar en la siguiente carpeta NTFS vacía, seleccionando la carpeta Unidad que acabas de crear.

Ahora, volveremos a crear un volumen simple, como los que acabamos de crear, pero esta vez, en vez de asignar una letra de Unidad, montaremos el volumen sobre la carpeta recién creada.

![image](https://github.com/user-attachments/assets/c11365d3-1cd6-4208-913d-3b0349caa3e8)

#### Comprueba el icono de la carpeta Unidad

Una vez hemos asignado el volumen a la carpeta, al volver a ver la carpeta, veremos que ha cambiado el icono de esta y que ahora es igual al icono de una Unidad de disco.

![image](https://github.com/user-attachments/assets/91d3e143-1698-452b-8940-93d30c7b3374)

#### Mira las propiedades de la carpeta y fíjate en los apartados Tipo y Destino 

Si vemos las propiedades de la carpeta, el apartado **Tipo** nos dirá que es un **Volumen montado** y si vemos las propiedades de este volumen montado, veremos las mismas propiedades de una unidad de disco. 

Y destino nos dice la ubicación de ese volumen. 

![image](https://github.com/user-attachments/assets/1a93007b-7dd3-4514-add2-224773004dfe)

#### Copia o crea, dentro de la carpeta Unidad algunos archivos

Copia o crea, dentro de la carpeta Unidad algunos archivos

![image](https://github.com/user-attachments/assets/32146db1-4d7e-4265-ba33-5445cd8ae917)

#### Cambiar la letra y rutas de acceso de unidad. Dale a agregar y asígnale una letra a la partición

Lo que haremos ahora, será al volumen que esta montado sobre la carpeta, le daremos una letra de Unidad, para que sea como una unidad normal, quitándola de la carpeta Unidad.

Vamos al Administrador de Discos>Cambiar la letra y ruta de acceso a la Unidad>Agregar>Asignar letra de Unidad 

![image](https://github.com/user-attachments/assets/597d9876-a459-4513-b538-0d280a666d93)

↓

![image](https://github.com/user-attachments/assets/9e1cc495-5928-48ed-84c1-214aac4ed82b)

↓

![image](https://github.com/user-attachments/assets/84e50578-2e36-41fd-b5d4-d89f79313671)

Ahora, si vamos al volumen, veremos que están los archivos anteriormente creados, e igual si vamos a la carpeta Unidad.

![image](https://github.com/user-attachments/assets/290031ae-fb5e-444c-8394-c977869cac38)

↓

![image](https://github.com/user-attachments/assets/0e5341f4-5764-4abe-8e29-84f07cb2cba4)

#### Selecciona la ruta a la carpeta Unidad y dale al botón Quitar

Antes, dejamos el acceso a la carpeta Unidad, pero ahora se lo quitaremos. 

Volvemos a **Administrador de Discos>Cambiar la letra y ruta de acceso a la Unidad>Quitar** 

![image](https://github.com/user-attachments/assets/4845a7ad-e9ee-496c-9aaa-4ba3a54c4df3)

↓

![image](https://github.com/user-attachments/assets/9a9fc489-b712-4a7a-acb3-ee0a02ea934f)

Si vamos a la carpeta Unidad, no quedará ningún archivo. 

![image](https://github.com/user-attachments/assets/6904f440-d560-4842-9bad-050be27ec358)

Pero si vamos a la Unidad con la letra de Unidad, veremos que aún tiene 
los archivos. 

![image](https://github.com/user-attachments/assets/eedd66ae-11bc-4fcb-8256-90bc2632f0ae)

---

### Elimina todos los volúmenes del disco y cambia el MBR por una GPT

Ahora, eliminamos todos los volúmenes creados y convertimos el disco en GPT.

![image](https://github.com/user-attachments/assets/bcc1e78c-8188-4f2d-bde9-452953b1917b)

---

### Crea ahora de nuevo 6 volúmenes simples y describe las diferencias en el tipo de particiones con lo que hiciste en la segunda pregunta y las razones de ello

Y volveremos a crear 6 volúmenes simples, con la diferencia, de que ya no se creará una partición extendida, si no que podemos tener los 6 volúmenes simples sin ningún problema, debido a que GPT soporta hasta 127 particiones, mientras que MBR solo soportaba 4. 

![image](https://github.com/user-attachments/assets/b7175783-0973-47ac-897e-e3762739d907)

---

### Configura todos los discos como discos dinámicos y que utilicen un MBR 

Ahora, convertiremos todos los discos en dinámicos MBR.

![image](https://github.com/user-attachments/assets/492b9bf9-ce1b-4ddd-a536-f15cfef2b319)

Y ya los tenemos listos, para realizar todo tipo de configuraciones sobre ellos. 

![image](https://github.com/user-attachments/assets/544379e9-fcea-4940-8f30-02c4c7db1323)

### Crea un volumen simple de 500 MB en uno de los discos 

#### Extiéndelo para que ocupe en total 800 MB

Crearemos un volumen simple de 500 MB en el primer disco, para extenderlo 300 MB más.

![image](https://github.com/user-attachments/assets/db0dcdff-11a6-4be7-9947-2a9a7b3c568a)

![image](https://github.com/user-attachments/assets/b7033252-556e-4996-824c-edb1ed79f968)

↓

![image](https://github.com/user-attachments/assets/51c7e3bb-af87-491e-ab58-9c8b29b2fb0c)

↓

![image](https://github.com/user-attachments/assets/cf9be5d4-0f3c-481d-9b56-11e6cdfa45c4)


#### Redúcelo para que ocupe 600 MB 

Ahora, en vez de extenderlo, lo reduciremos 200MB.
Volveremos a hacer el mismo procedimiento, pero en vez de darle a la opción **Extender Volumen**, seleccionaremos la opción **Reducir Volumen**.

![image](https://github.com/user-attachments/assets/ebc2d3be-a9b7-497e-b570-d71e616603e1)

Y especificaremos que vamos a reducir el tamaño 200MB

![image](https://github.com/user-attachments/assets/4e7edb30-57e2-4bcc-a60f-d03d4af21ecd)

Y ya tendremos nuestro volumen de 600MB. 

![image](https://github.com/user-attachments/assets/d5915032-a5b2-4e14-88d2-d6849419e78b)

---

### Crea un volumen distribuido que ocupe 200 MB del primer disco y 500 MB del segundo

Ahora, vamos a crear un volumen distribuido, que tomará 200MB del primer disco y 500MB del segundo. 

Para ello, seleccionaremos la opción **Nuevo volumen distribuido** y especificaremos que para el primer disco, queremos usar 200MB y para el segundo 500MB. 

![image](https://github.com/user-attachments/assets/52f7c0da-54ff-4112-bf26-4625b8424497)

Y el volumen quedaría así:

![image](https://github.com/user-attachments/assets/12053a28-5918-48a2-8e72-d8ee0eca6fa7)

#### Observa el tamaño total del que dispones en la unidad que le hayas asignado

Si vamos a ver las propiedades del volumen, veremos que disponemos de 700MB.

![image](https://github.com/user-attachments/assets/020e3f81-743d-4173-9a5f-cd97251a47f7)

Y esta es la característica de los volúmenes distribuidos, permite crear un volumen que abarque varios discos y tendremos disponible, todo el espacio total y el espacio que asignemos no tiene por qué ser el mismo en cada disco, cosa que no pasará con el resto de volúmenes.

---

### Borra el volumen e intenta crear un volumen seccionado, también tomando 200 MB del primer disco y 500 MB del segundo 

### ¿Te permite establecer esos tamaños? Explica por qué
### Crea ahora el volumen seccionado con un tamaño apropiado. 

Borraremos el volumen distribuido e intentaremos crear un volumen seccionado, con los mismos tamaños en cada disco. 
Pero al intentar hacerlo, no podemos, debido a que un volumen seccionado es como un RAID 0, así que tenemos que tener el mismo espacio en cada uno de los discos

![image](https://github.com/user-attachments/assets/b6dc055f-870a-4de9-be07-9019838bd5da)

Al crearlo, queda así

![image](https://github.com/user-attachments/assets/d71e4f50-a902-4dbb-9016-aa8ca2ff17b5)

#### Observa el tamaño total del que dispones en la unidad que le hayas asignado 

Si vamos a las propiedades del volumen, veremos que tenemos disponibles los 700MB totales del volumen. 

![image](https://github.com/user-attachments/assets/347fccc2-f1d1-4ca8-be92-82a61a00a708)

Los volúmenes seccionados son iguales a un RAID 0, así que tenemos que tener el mismo espacio en cada uno de los discos en los que se extienda el volumen, además de que tenemos todo el espacio total disponible

---

### Crea, en el disco 2, un reflejo del volumen simple que tienes en el disco 1 

Ahora, vamos a agregar un reflejo al volumen simple que teníamos en el disco 1. 

![image](https://github.com/user-attachments/assets/23582abc-ea91-402e-8472-4463759eb94e)

↓

![image](https://github.com/user-attachments/assets/ebda1dc7-63f8-457a-a9ff-be086adb1ea1)

Nos quedaría así:

![image](https://github.com/user-attachments/assets/79f943ff-1e56-428c-8429-63328f3c3498)

#### Observa el tamaño total del que dispones en la unidad que le hayas asignado. ¿Por qué es así?

Si vamos a las propiedades del volumen, veremos que tan solo tenemos 200MB de espacio. 

![image](https://github.com/user-attachments/assets/6f460977-5b02-4828-bb8b-ca0732e95428)

Esto es debido, a que un reflejo, es como un RAID 1, así que solo tendremos la mitad de espacio disponible. 

Además de que los archivos que agreguemos, en el volumen, se copiaran en ambos discos.

---

### Crea algunos archivos dentro del volumen reflejado que has creado y, después, rompe el reflejo, haciendo que queden dos volúmenes simples.  
### Observa que ambos volúmenes simples tengan una copia del contenido del antiguo volumen reflejado.

Creamos los archivos. 

![image](https://github.com/user-attachments/assets/f0271279-3d7a-4c60-b20a-3f59898706a9)

Y ahora, rompemos el reflejo

![image](https://github.com/user-attachments/assets/4cc4b8b5-4a6c-4ce4-a9a9-d2abd6568d3f)

Ahora, se nos han quedado 2 volúmenes simples, y ambos contienes los archivos creados. 

![image](https://github.com/user-attachments/assets/25965879-dad3-491d-a681-5811f5590796)

↓

![image](https://github.com/user-attachments/assets/bdeae16f-2216-4c51-8645-dbffe775347e)

---

### El disco debe ser básico, si lo convertiste antes a dinámico, conviértelo en básico con diskpart

Ahora, usaremos la interfaz de órdenes de Diskpart. 
Primero, vamos a convertir los discos que teníamos a de dinámico a básico. 

![image](https://github.com/user-attachments/assets/dcaedd39-7d46-41f3-9f1b-1adda8956ec6)

---

### Crea en un disco una partición primaria de 512 MB

Ahora, seleccionamos un disco y le creamos una partición primaria de 512MB. 

![image](https://github.com/user-attachments/assets/b8e8a128-ca77-47ed-a18d-44442a6754c1)

---

### Visualiza la partición creada

Y ahora, visualizaremos la partición que acabamos de crear.

![image](https://github.com/user-attachments/assets/bb0017b6-bcd9-4283-9ce5-5e2e6bbc3f13)

---

### Extiende la partición para que ocupe en total 1GB. 
### Lista de nuevo las particiones para comprobar que tiene el tamaño adecuado 

Ahora extenderemos la partición que acabamos de crear, para que llegue al GB. 

Y haremos un **list partition** para ver que hemos realizado correctamente la operación. 

![image](https://github.com/user-attachments/assets/2598cea6-7da8-4b54-b849-fe2e3bc1c92a)

---

### Formatea la unidad en NTFS, de forma rápida y con una etiqueta, y asígnale una letra de unidad

Ahora, esta a esta unidad le haremos un formateo en NTFS rápido

![image](https://github.com/user-attachments/assets/638e25d7-f377-42c9-81d1-372527560c57)

Y la letra de Unidad se la añadiremos con otra orden. 

![image](https://github.com/user-attachments/assets/ebb57c59-c910-41d6-b2dd-40a56a720ef2)

Si vamos al entorno gráfico, veremos cómo se creó la Unidad NTFS. 

![image](https://github.com/user-attachments/assets/e48d2e8e-2ad8-4903-bc4f-d6e8660321dc)

---

### Crea una partición extendida que ocupe todo el espacio libre y dentro una lógica que ocupe toda la extendida

Dentro de esta unidad, crearemos una partición extendida y dentro de esta, otra lógica.

![image](https://github.com/user-attachments/assets/3564d870-edfe-46d5-9e53-8cdf4ee7b8e8)

↓

![image](https://github.com/user-attachments/assets/affd5956-57e5-441a-a21e-46b69e6e92f7)

Si vamos al entorno gráfico, se verá así: 

![image](https://github.com/user-attachments/assets/ed26b11b-12fa-4059-bea1-f982dfa447a7)

---

### Reduce la partición lógica para que ocupe 512 MB

Ahora, reduciremos el tamaño de la partición lógica, hasta los 512MB

![image](https://github.com/user-attachments/assets/6290512f-6d04-4115-928b-b5825876fb6e)

Si vamos al entorno gráfico, quedará así: 

![image](https://github.com/user-attachments/assets/40205932-ae86-40fa-80a3-f7d99189ee7f)

---

### Elimina todas las particiones y convierte el disco en dinámico. Haz lo mismo con otro de los discos 

Ahora, eliminamos todas las particiones y convertiremos el disco en dinámico

![image](https://github.com/user-attachments/assets/17168f31-61a2-4037-92d3-541ee43b1674)

Y ahora, lo convertimos a dinámico

![image](https://github.com/user-attachments/assets/61be6e5c-1741-49af-885f-e0aa19f80633)

---

### Crea un volumen simple en el primer disco de 512 MB

Ahora creamos un volumen simple en el primer disco.

![image](https://github.com/user-attachments/assets/43478761-dd2f-4f0e-a4b9-df7663e192b2)

---

### Crea un volumen reflejado de 1024 MB utilizando el segundo disco 

Ahora, vamos a crear un volumen reflejado de 1024 MB (no tiene quehacer reflejo del volumen que acabamos de hacer).

![image](https://github.com/user-attachments/assets/36dfd22f-4554-49ad-bc0d-33ca05e7baf7)

Y queda de la siguiente manera:

![image](https://github.com/user-attachments/assets/d74cca30-bb73-4e05-a4f9-b29c992d7a15)

---

### Crea un volumen seccionado de 512 MB 

Ahora, crearemos un volumen seccionado de 512 MB

![image](https://github.com/user-attachments/assets/38484f77-51a1-4434-b555-3765e01c13de)

Y quedaría así:

![image](https://github.com/user-attachments/assets/eb1ef3c6-64c7-4e2c-9775-eb7fc7506a9d)

---

### Haz que el volumen simple que creaste ahora sea un volumen distribuido que, además de los 512 MB, coja otros 512 MB del segundo disco 

Para extender un volumen, hacia otro disco, es tan sencillo como:

![image](https://github.com/user-attachments/assets/a8063aad-6548-4d92-9cae-e9494feeb2d2)

Y quedaría así:

![image](https://github.com/user-attachments/assets/c0acd501-5efa-4d7d-8fa1-6516139a5a7e)

---

### Comprueba que con el administrador de discos gráfico todos los volúmenes son correctos. 

![image](https://github.com/user-attachments/assets/d6e27716-99e1-4de6-a858-3b7e3e36ba34)

---

### Formatea, mediante la interfaz gráfica, el disco duro o partición con el sistema de archivos FAT32, con unidad de asignación de 1024 bytes y poniendo como etiqueta ape1_ape2, como siempre, siendo los apellidos de los integrantes del grupo 

Ahora, formatearemos un disco con FAT32 y con unidad de asignación (tamaño del bloque) de 1024KB

![image](https://github.com/user-attachments/assets/dc605a51-23ea-4de1-8a67-3511081a167c)

---

### Crea un archivo de texto en la unidad C: (por ejemplo, dentro de mis documentos) y escribe en él una sola letra (después guárdalo).  
### Haz ahora lo mismo pero en la unidad que has formateado. 
### Una vez hecho esto, comprueba las propiedades de ambos archivos  
### ¿Cuál es el tamaño en disco de cada uno de ellos?  
###¿A qué se debe la diferencia?

Si creamos un archivo en una unidad FAT 32, a la mínima que añadamos contenido, este guardará un bloque entero para ese archivo (FAT32 usa una asignación enlazada eficiente). 

En cambio, NTFS, hasta que el archivo no ocupa x cantidad de B y se hace No residente (no cabe en la MFT), no ocupará espacio en el disco 

![image](https://github.com/user-attachments/assets/1211a87d-a2d3-43ed-9edb-1d85491be126)

↓

![image](https://github.com/user-attachments/assets/7c515358-e697-46ba-8bdc-a8c4568f7e34)

---

### Crea o copia otros archivos y carpetas en la unidad que has formateado

Ahora creamos unos cuantos archivos. 

![image](https://github.com/user-attachments/assets/fa3b12df-d892-4c89-9801-884d45b480c9)

---

### Utilizando una orden, convierte (no formatea, sino convierte) la unidad a NTFS.  
### Después comprueba que los archivos creados siguen estando allí

Ahora, esa partición FAT32, la convertiremos en NTFS.

![image](https://github.com/user-attachments/assets/be07753a-7a58-4a41-9c35-40deb86b6e2d)

Y vemos que es NTFS:

![image](https://github.com/user-attachments/assets/185c0b18-3fb7-4fde-afc5-de59b3d05655)

---

### Utilizando una orden, convierte (no formatea, sino convierte) la unidad a NTFS.  
### Después comprueba que los archivos creados siguen estando allí 

Y vemos que los archivos siguen en la Unidad. 

![image](https://github.com/user-attachments/assets/1fce0585-c0c3-4c95-8272-a938f78169ef)

---

### Utilizando una orden, formatea la unidad a NTFS con unidad de asignación de 2048 bytes y poniendo como etiqueta nombre1_nombre2, siendo los nombres de los integrantes del grupo.  
### Además, deberá realizarse un formateo rápido y se comprimirán automáticamente los archivos.  
### Comprueba ahora que la unidad no tiene los archivos y carpetas que creaste.

Ahora formatearemos la unidad a NTFS. 

Obviamente, los archivos que tengamos se van a eliminar, debido a que estamos formateando, no convirtiendo.

![image](https://github.com/user-attachments/assets/8bfec27b-3e1b-4683-b8ac-19eb869130db)

Y vemos que los archivos no están.

![image](https://github.com/user-attachments/assets/d259d0a1-47d1-4500-a998-546e86dde9d9)

---

### Comprueba que los archivos que creas en la unidad están comprimidos 

Si creamos archivos en la Unidad, veremos que se comprimirán debido a que especificamos en la anterior orden, que los archivos que se fueran a crear, se comprimieran (/C). 

Podemos verlo, gracias al icono que se pone sobre el archivo. 

![image](https://github.com/user-attachments/assets/13d10d05-845a-494c-987f-83f8546071ae)

---

### Crea o copia algunos archivos a la unidad formateada

Vemos que si creamos archivos o copiamos de otro sitio, se comprimirán.

![image](https://github.com/user-attachments/assets/f432c9a8-c736-408a-944a-35a871110390)

---

### ¿Qué diferencia observas en ellos? ¿A qué se debe? 

Podemos ver que los archivos se comprimen al estar en la unidad, debido a que formateamos la Unidad con, especificando el parámetro /C 

Y que el tamaño que ocupan es menor con respecto a sus versiones sin comprimir. 

---

### ¿Podríamos tener los archivos de la misma manera formateando en FAT32? ¿Por qué?

No, debido a que FAT 32 no permite la compresión de archivos ni carpetas.

![image](https://github.com/user-attachments/assets/9f2986dc-db1e-446b-bd9b-d620157f2cee)

---

### Mediante una orden, crea una carpeta cifrada en la unidad (aplicando los cambios a los archivos que contiene también). Crea algunos archivos dentro

La orden para cifrar una carpeta, es **cipher **
Primero, creamos la carpeta y luego con una tubería, haremos que se cifre. 

![image](https://github.com/user-attachments/assets/a36531cc-7814-41d1-a54c-00add24d3af5)

La carpeta nos saldrá como cifrada y todos los archivos que creemos dentro, aparecerán como cifrados.

![image](https://github.com/user-attachments/assets/12d953d7-245b-497f-b8c7-922c6d56f959)

↓

![image](https://github.com/user-attachments/assets/6c296553-fb6c-4405-b777-136f1c5372f3)

---

### Configura los permisos para que otro usuario, en principio, tenga permiso para ver los archivos

Vamos a darle al usuario Zeus los permisos necesarios para que pueda ver el contenido de estos archivos. 

![image](https://github.com/user-attachments/assets/c4792599-5a3e-4061-89b2-dc6e49bf51a9)

---

### Entra con ese usuario y comprueba si puedes acceder al contenido de los archivos. 

Pero, al intentar ver su contenido, no podremos, debido a que la autenticación se basa en los usuarios de Windows, para el usuario que ha encriptado los archivos el acceso es totalmente transparente, pero el resto no podrán. 

![image](https://github.com/user-attachments/assets/02cdcb89-e8b1-48f1-a473-16eb00b4584e)

---

### Mediante una orden, comprueba la unidad buscando y reparando errores en el sistema de archivos y buscando sectores defectuosos. 

Usaremos la orden:

```BASH
CHKDSK /F /R F:

# /F - Repara los errores
# /R - Busca y repara sectores defectuosos
# F: - Para desfragmentar la unidad
```

![image](https://github.com/user-attachments/assets/557c201a-1252-4766-a47a-c93ad01eccf2)

### Mediante una orden, desfragmenta la unidad

```bash
defrag F:
```

![image](https://github.com/user-attachments/assets/07e7fd9f-d5b0-49d4-97d6-f60aa3612223)
