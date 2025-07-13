## Autentificate en un cliente con profesor1 

En este primer caso práctico, vamos a autentificarnos al dominio con un cliente, usando el usuario **profesor1**. 
Para ello, tenemos que unir el cliente al **Dominio** con el usuario **profesor1**.

<img width="737" height="260" alt="image" src="https://github.com/user-attachments/assets/7bcd509a-b10b-4d61-889c-db196b2c20af" />

Y como vemos, se ha unido perfectamente.

<img width="321" height="144" alt="image" src="https://github.com/user-attachments/assets/3ed6662f-cc02-415f-8ec6-8f6c22ae1eba" />

Reiniciamos e iniciamos sesión con el usuario.

<img width="355" height="294" alt="image" src="https://github.com/user-attachments/assets/918d1762-8dbb-41d3-bde1-1402f7b68b54" />

Y vemos que se ha creado el perfil local

<img width="807" height="405" alt="image" src="https://github.com/user-attachments/assets/20be7f70-db6f-4f80-b52d-cfda96e5dfb6" />

---

## En el servidor Windows Server 2016

### Crear una carpeta para almacenar a los perfiles móviles 

Ahora vamos a crear perfiles móviles. 
Lo primero que vamos a hacer, será crear un directorio donde se encontrarán los perfiles móviles de cada usuario que se autentique en el servidor (y tenga asignado el perfil móvil).

<img width="262" height="148" alt="image" src="https://github.com/user-attachments/assets/f6f52a56-7f6f-4a8c-b603-064fe7f2bb97" />

Una vez creado, tenemos que compartirlo y darle permisos.

<img width="530" height="267" alt="image" src="https://github.com/user-attachments/assets/7ae008af-84a0-419e-8a76-bfe6e15c3e7f" />

↓

<img width="335" height="305" alt="image" src="https://github.com/user-attachments/assets/db5ecd59-f7d1-4d14-ab5c-b464d961b667" />

Para asignar un perfil móvil a un usuario, vamos a Usuario>Perfil>Ruta de acceso al perfil poniendo la siguiente ruta:

<img width="512" height="244" alt="image" src="https://github.com/user-attachments/assets/c9cbae0e-7d86-428b-ba83-08b90225e29b" />

---

### Arranca el cliente Windows 10 y autentifícate con cuenta de un usuario local (nombre_equipo\usuario_local) 

Al iniciar sesión con un usuario local y crear cualquier archivo, estos archivos no se crearán dentro del perfil del profesor1. 
Para ello, iniciamos sesión con el usuario local y creamos algún archivos:

<img width="279" height="122" alt="image" src="https://github.com/user-attachments/assets/f94dd8ef-d504-41c6-8e36-516a7b2fe79a" />

Después de crearlos, cerramos sesión e iniciamos con el profesor1. Observamos que no hay ningún archivo. 

<img width="349" height="213" alt="image" src="https://github.com/user-attachments/assets/5a3b2ad0-34eb-4cb4-95c6-51463fbb5905" />

---

### Cierra la sesión en el cliente Windows 10 y autentifícate en el dominio como el usuario “profesor01”. 

Ahora vamos a probar esto de los perfiles móviles. 
Crearemos varios archivos con el usuario **profesor1** y cambiaremos el fondo de pantalla.

<img width="876" height="309" alt="image" src="https://github.com/user-attachments/assets/8084b251-c131-4d1b-8877-92483b6d24a1" />

Ahora, si cerramos sesión y vamos al servidor, observaremos que se ha creado un directorio en **C:\PerfilesMoviles\Profe1.V6**.

<img width="375" height="146" alt="image" src="https://github.com/user-attachments/assets/6932ad52-e62f-48aa-a5b3-fd30ff478ff9" />

---

### Une una segunda máquina con Windows 10 al dominio. Entra con el usuario “profesor01” 

De hecho, si iniciamos sesión en el servidor/otra máquina con el usuario profesor1, el fondo de pantalla también cambiara (ya sé que es otro fondo de pantalla, pero estuve haciéndolo varias veces y pues al final me funciono y tenía este fondo de pantalla.)

<img width="704" height="698" alt="image" src="https://github.com/user-attachments/assets/c64d5825-66d1-40dc-9adc-d6f5b080b086" />

---

### Asigna al usuario “profesor02” un perfil móvil 

Ahora, vamos a hacer que el usuario **profesor2** tenga un perfil móvil. 
Así que hacemos lo mismo que con el **profesor1** que es asignarle una **Ruta de acceso al perfil**. 

<img width="521" height="97" alt="image" src="https://github.com/user-attachments/assets/a75f0a47-d19d-47b8-bd89-041ebd85ffbf" />

---

### Arranca el cliente Windows 10 y autentifícate en el dominio como el usuario “profesor02”. Observa en el servidor que en la carpeta para los perfiles móviles se ha creado una carpeta de nombre “profesor02.V5”

E iniciamos sesión con el usuario **profesor2.**

<img width="443" height="182" alt="image" src="https://github.com/user-attachments/assets/3ab0756e-84c0-4e8b-bf6f-2fc9e28250e3" />

Al iniciar sesión, se creará un directorio **profe2.V6.**

<img width="392" height="147" alt="image" src="https://github.com/user-attachments/assets/e6e940c4-647b-4195-8336-63f38821f6d5" />

---

### Pausa la máquina del servidor para que el cliente quede fuera de línea. Crea un fichero en Documentos en el cliente. Cierra sesión. Observa el mensaje de error que indica que no se ha podido sincronizar el perfil. 

El siguiente paso será comprobar, que si el servidor no esta en funcionamiento, no se pueden sincronizar los perfiles móviles de los usuarios, por lo que todo lo que hagamos, no se guardará, debido a que el servidor no está en funcionamiento. 
Paramos el servidor. 

<img width="342" height="84" alt="image" src="https://github.com/user-attachments/assets/69e0c490-9abd-446d-8646-0528829ceceb" />

Y creamos varios archivos en el cliente:

<img width="666" height="133" alt="image" src="https://github.com/user-attachments/assets/a657bb39-fd73-4dfd-bafd-d8986994827e" />

En específico el archivo lacabralacabra – copia (4), el resto son de intentos fallidos 


Si cerramos sesión en el cliente, nos saldrá un error, de que no se ha sincronizado el perfil móvil del usuario

<img width="583" height="212" alt="image" src="https://github.com/user-attachments/assets/bf273cc3-2705-4c9e-be5c-7ec14b96a83c" />

---

### Abre sesión de nuevo con la cuenta “profesor02”. ¿Qué ha pasado con el fichero que creaste en el apartado anterior?

Si volvemos a iniciar sesión, a parte de que nos sale un mensaje informático sobre la sincronización fallida del perfil móvil, también veremos que el archivo creado, no está. 

<img width="316" height="131" alt="image" src="https://github.com/user-attachments/assets/450ce816-5813-41a4-95ff-2c09bb3e9753" />

↓

<img width="667" height="132" alt="image" src="https://github.com/user-attachments/assets/b5deabdb-cb8d-466b-9caf-593bd5da7921" />

---

## Visualiza los perfiles de usuario 

Para poder ver los perfiles de usuario que hay en un equipo, vamos a **Configuración avanzada del sistema>Opciones avanzadas>perfiles de usuario** y vemos que tanto el perfil de **profesor1 y profesor2** son perfiles móviles. 

<img width="519" height="372" alt="image" src="https://github.com/user-attachments/assets/e35d55ec-b2c4-4e4a-9e33-9ac034ae4a96" />

---

## Perfiles obligatorios 

### Crea un perfil móvil de nombre “obligatorio01”

Creamos un nuevo usuario y un nuevo perfil móvil para probar este perfil obligatorio. 

<img width="879" height="282" alt="image" src="https://github.com/user-attachments/assets/5530f9ae-0d9c-485c-9fcf-5f2f5782d273" />

---

### Inicia sesión en el cliente Windows 10 con la cuenta “obligatorio01” y crea una carpeta y un fichero en el escritorio 

Ahora iniciaremos sesión con este usuario en el cliente para que se cree el directorio del perfil móvil. 

<img width="889" height="214" alt="image" src="https://github.com/user-attachments/assets/fda26d79-f118-494b-b921-883057f3c7e3" />

Creando 2 archivos en el escritorio. 

<img width="118" height="227" alt="image" src="https://github.com/user-attachments/assets/9a051cdb-acd4-4665-882e-a6125645e1bf" />

---

### Convierte el perfil móvil “obligatorio01” en perfil obligatorio.

El perfil móvil que acabamos de crear lo vamos a convertir en un perfil obligatorio. 
Hacerlo es un poco enrevesado, pero bueno, se intentará explicar. 
En el servidor, vamos a las **Propiedades>Seguridad>Opciones Avanzadas** del perfil móvil. 

<img width="265" height="323" alt="image" src="https://github.com/user-attachments/assets/50aa7ff0-aa13-462a-973b-977bec78979e" />

Deberemos de cambiar el propietario del directorio, haciendo que sea el Administrador del servidor, aplicando lo mismo para los subdirectorios y archivos que haya dentro de este perfil móvil. 

<img width="506" height="162" alt="image" src="https://github.com/user-attachments/assets/cd64f463-ae1b-4f65-a5ed-04a0790cf874" />

Además de cambiar el propietario, deberemos de dar permisos al Administrador de control total sobre el directorio. 

<img width="529" height="263" alt="image" src="https://github.com/user-attachments/assets/51a64949-0ad0-4b8d-bc66-ea2e016c62c8" />

Todo esto lo hacemos para poder tener permisos sobre el directorio y poder realizar una modificación. 
Esta modificación se hará sobre el fichero oculto **NTUSER.DAT**. 

<img width="486" height="295" alt="image" src="https://github.com/user-attachments/assets/10c4d833-9aec-413b-88cc-bc6dbea6653d" />

Sobre este archivo, volveremos a hacer lo mismo que hemos hecho sobre el directorio **ob1.V6** que es hacer propietario al **Administrador** y darle permisos.

<img width="568" height="302" alt="image" src="https://github.com/user-attachments/assets/3cc9b208-3f0a-41c7-9046-8463c886da0f" />

Además, cambiaremos el nombre del archivo a **NTUSER.MAN.**

<img width="164" height="33" alt="image" src="https://github.com/user-attachments/assets/1aefab9b-83d3-4999-93d8-f8daafea05e1" />

Una vez realizados estos cambios, volvemos a cambiar el propietario del directorio. 

<img width="494" height="150" alt="image" src="https://github.com/user-attachments/assets/b2a8f037-65fb-41af-846b-958a7a11d55c" />

A lo que nos saldrá el siguiente mensaje:

<img width="427" height="149" alt="image" src="https://github.com/user-attachments/assets/08cc9520-ddb5-4d56-abf3-5dbb8afd9dc6" />

---

### Arranca el cliente Windows 10 e inicia sesión con la cuenta “obligatorio01”. Elimina el fichero que creaste en el escritorio. Haz una captura de la ventana Perfiles de usuario donde se vea claramente qué usuarios tienen un perfil obligatorio. Cierra sesión. 

Volveremos a inicar sesión y borraremos uno de los archivos que hemos creado antes, además de visualizar los perfiles de usuario del equipo, observando que el perfil del usuario obligatorio1 es un perfil obligatorio.  

<img width="779" height="292" alt="image" src="https://github.com/user-attachments/assets/d793d452-a237-427f-aa20-0954bc5544c1" />

---

### Inicia sesión de nuevo con la cuenta “obligatorio01” y observa que el fichero que borraste está de nuevo en el escritorio. 

Si volvemos a iniciar sesión después de haber borrado el archivo, veremos que este, no se ha borrado y sigue en el escritorio

<img width="89" height="264" alt="image" src="https://github.com/user-attachments/assets/5527b799-fc26-40cf-808d-21b9a85aa09b" />

---

## Utilizar el mismo perfil obligatorio para varios usuarios

Ahora, vamos a hacer que un perfil obligatorio sirva para varios usuarios. 
Crearemos 2 usuarios nuevos, los cuales serán miembros del **grupo de operadores de copia de seguridad. **

<img width="380" height="83" alt="image" src="https://github.com/user-attachments/assets/5247f8bb-4b8b-4770-9317-3167f361158a" />

↓

<img width="526" height="155" alt="image" src="https://github.com/user-attachments/assets/a1c66612-448f-42b6-bf5d-f00023ba6cd9" />

Asignamos al usuario **usu1** un perfil móvil e iniciamos sesión con el usuario, poniendo en el escritorio un acceso directo al Paint y un directorio con un archivo. 

<img width="461" height="245" alt="image" src="https://github.com/user-attachments/assets/de6b2b92-4089-4440-98c1-4e493274bb02" />

Después de esto, vemos que se ha creado el directorio con el perfil local del usuario **usu1**. 

<img width="332" height="182" alt="image" src="https://github.com/user-attachments/assets/7a3ebde7-be55-483f-b70d-f0692601dca1" />

Bueno, pues copiaremos ese perfil local y lo pegaremos en el directorio de los perfiles móviles, cambiándole el nombre a **usu1.V6. **

<img width="354" height="154" alt="image" src="https://github.com/user-attachments/assets/f04a0574-e6f7-44d8-bc76-c924059f11b5" />

Ahora se viene lo más díficil, que es editar una serie de claves en el registro. 
Iremos al **Registro>HKEY_USERS** y cargaremos un subárbol con el contenido del fichero **NTUSER.DAT** cuyo nombre en clave, será alexby

<img width="726" height="448" alt="image" src="https://github.com/user-attachments/assets/1640fcc9-7be8-40c6-be0a-3f8d4efb9119" />

Y antes de editar nada, vamos a cambiar los permisos de este subárbol.

<img width="240" height="215" alt="image" src="https://github.com/user-attachments/assets/b0c1aba8-e894-4d80-af5a-1422508b80df" />

Dándole permiso a todos los usuarios autentificados


<img width="489" height="248" alt="image" src="https://github.com/user-attachments/assets/af2f7d62-e5b2-4d26-bf34-3cf87288ac92" />

↓

<img width="803" height="43" alt="image" src="https://github.com/user-attachments/assets/037ddf89-4189-4601-9d64-9d9a0d5183a9" />

Después de eso, tendremos que ir editando todos los registros que tengan como valor el nombre del usuario **usu1** para cambiarlo por la variable **%username%**. 
Obviamente, son muchos valores, así que solo voy a poner uno. 

<img width="456" height="227" alt="image" src="https://github.com/user-attachments/assets/7031f4c9-37ed-4a8c-be10-b8a0f79a5a46" />

Después de hacer todos los cambios, deberemos de descargarnos el subárbol.

<img width="296" height="135" alt="image" src="https://github.com/user-attachments/assets/ac582aa1-76fb-4c0f-85a2-a4e8931ce742" />

El siguiente paso, es eliminar los directorios **Local y LocalLow** del directorio **usu1.V6**.

<img width="493" height="127" alt="image" src="https://github.com/user-attachments/assets/c9aa2f25-db2a-4e6d-a43c-23e3be3add68" />

El siguiente cambio por realizar es cambiar la extensión del archivo **NTUSER.DAT a NTUSER.MAN**. 
Ahora, asignaremos al usuario **usu2** el perfil móvil de **usu1**

<img width="525" height="200" alt="image" src="https://github.com/user-attachments/assets/6488a773-454f-4bfd-bbcc-9fbd0b001028" />

Iniciaremos sesión en el cliente. 

<img width="417" height="251" alt="image" src="https://github.com/user-attachments/assets/d9e5d1d8-b924-4278-ab12-5fc8325ac52f" />

Y veremos que tenemos exactamente lo mismo que tenía el usuario **usu1.**

<img width="444" height="267" alt="image" src="https://github.com/user-attachments/assets/76588c34-25ab-4805-a1b3-d07b9fd99ca3" />

---

### Perfiles super obligatorios 

Para acabar con esta práctica, vamos a probar los perfiles super obligatorios. 
Creamos un nuevo usuario **obligatorio2** al cual le asignamos el perfil de **usu1.** 

<img width="565" height="222" alt="image" src="https://github.com/user-attachments/assets/d9b0057f-0471-44eb-b24d-6952689540f1" />

E iniciaremos sesión con el usuario **ob2** en el cliente.

<img width="409" height="259" alt="image" src="https://github.com/user-attachments/assets/794dda5f-0090-4a78-b8f2-4fd82cadf078" />

Para convertir este perfil en super obligatorio, tenemos que cambiar el nombre del directorio del perfil obligatorio que pasará a llamarse **usu1.man.V6**  

<img width="133" height="40" alt="image" src="https://github.com/user-attachments/assets/dbb3dbc2-4133-402f-8a51-4cb9a914fb0f" />

↓

<img width="431" height="120" alt="image" src="https://github.com/user-attachments/assets/5f484150-7b9d-4b30-9bf1-d5534adfdbc4" />

Y dentro de la máquina cliente, veremos los diferentes tipos de perfiles que tiene cada usuario. 
Por desgracia, aunque sea super obligatorio, el perfil se muestra como obligatorio, pero ahora lo pondremos a prueba. 

<img width="515" height="388" alt="image" src="https://github.com/user-attachments/assets/182415d6-0c68-448b-afc8-62c052e7d6d3" />

#### Comprobación

¿Como comprobamos que esto ha funcionado?. 
Muy sencillo, apagamos el servidor e intentamos iniciar sesión con los usuarios **obligatorio1** y **obligatorio2**. 
Vemos que se carga perfectamente.

<img width="909" height="213" alt="image" src="https://github.com/user-attachments/assets/7f574c4b-f6b2-4649-832c-6b857c95cb93" />

Pero no pasa lo mismo con el usuario **obligatorio2.**

<img width="908" height="350" alt="image" src="https://github.com/user-attachments/assets/ef9e10cd-1001-4675-a53a-b2637182b680" />

En cambio, si lo volvemos a encender, si dejará iniciar sesión con el usuario **obligatorio2**.

<img width="148" height="249" alt="image" src="https://github.com/user-attachments/assets/7bfe1630-73a3-415a-8b2a-6e89e29ac99a" />

Pq nos dejaba conectarnos con el usuario usu1 pero no con usu2? 
Usu1 tenía un perfil obligatorio. 
Los perfiles obligatorios sí pueden abrir sesión aunque el servidor donde se almacena el perfil este fuera de línea, en cuyo caso cargan una copia temporal del perfil que se almacena en la propia máquina local. 
En cambio, el usuario usu2 tiene un perfil super obligatorio, no podrá abrir sesión en el dominio si el servidor donde se almacena su perfil no está disponible.



