## Creación de objetos 

### Crea 2 UO y dentro de ellas otros 2 usuarios

En esta práctica vamos a tratar con las GPO. 
Antes de tocar ninguna GPO, vamos a crear nuevas UO y nuevos usuarios. 

<img width="516" height="322" alt="image" src="https://github.com/user-attachments/assets/b6514de1-7b22-4f98-bbce-dfe70866852e" />

---

### Establece perfiles móviles para todos 

Y a cada usuario, le establecemos un perfil móvil. 
Yo uso el de la anterior práctica.

<img width="377" height="197" alt="image" src="https://github.com/user-attachments/assets/8dc8dcfb-3da3-42d5-8a90-0bd6c481d760" />

↓

<img width="163" height="159" alt="image" src="https://github.com/user-attachments/assets/a26da490-c6f4-407a-a90d-e3d8cfccbed4" />

---

### Delegar control  

Y para terminar con este apartado, procedemos a delegar el control de las UO sobre uno de los usuarios que acabamos de crear. 

Asignando a la **UO_Jefes** el poder **Crear, eliminar y administrar cuentas de usuario, y Crear, eliminar y administrar grupos. 
**
Y a UO_Curros el poder **Leer toda la información del usuario y Modificar la pertenencia a un grupo.** 

<img width="888" height="501" alt="image" src="https://github.com/user-attachments/assets/9895c320-0bde-4ca4-9026-3937f409490e" />

---

## Fondo de escritorio corporativo 

### Establecer un fondo de pantalla común

Ahora, vamos a crear una GPO para que todos los usuarios del dominio posean el mismo fondo de pantalla. 
Así que creamos una carpeta compartida y dentro metemos una imagen **.jpg**.  

<img width="168" height="138" alt="image" src="https://github.com/user-attachments/assets/7428f8e5-8b62-4fa6-bcd9-22092ca8d3e3" />

↓

<img width="250" height="115" alt="image" src="https://github.com/user-attachments/assets/976a6663-b0c5-40ed-b8e3-30e14ac677e0" />

La directiva la vamos a editar en **Default Domain Policy** debido a que afecta a todos los usuarios del dominio. 
Un **clic derecho>editar** y tendremos que buscar sobre todo el árbol de Directivas. 

<img width="258" height="67" alt="image" src="https://github.com/user-attachments/assets/5d659898-77c5-4b12-bfd0-17b67caccfdc" />

Encontramos fácilmente la GPO a editar, la cual se encuentra en **Configuración del usuario>Directivas>Plantillasadministrativas>ActiveDesktop>Active>Desktop>Tapiz de escritorio.
**

<img width="668" height="208" alt="image" src="https://github.com/user-attachments/assets/7c4235d1-d635-4938-a835-2307cfa87e72" />

Para configurarlo nos sale una pantalla nueva, en la cual, pondremos la configuración correcta para su funcionamiento. 

<img width="598" height="551" alt="image" src="https://github.com/user-attachments/assets/1b46e2a4-302a-4a95-a8a3-cb1093ad7fb7" />

Para que esta configuración se aplique, deberemos ejecutar el comando:

```bash
gpupdate /force.
```

<img width="460" height="185" alt="image" src="https://github.com/user-attachments/assets/a951463b-e969-4730-ae9f-d1eebe98ee5e" />

Si iniciamos sesión con un usuario, tendrá el fondo de pantalla establecido:

<img width="665" height="668" alt="image" src="https://github.com/user-attachments/assets/56f74eda-1df4-4397-84e5-95e944a9f1e7" />

---

## Crear accesos directos

### Crear acceso directo de aplicaciones de LibreOffice

Ahora, vamos a hacer que los usuarios tengan accesos directos a diferentes programas de **LibreOffice**. 
Así que crearemos una **GPO** para cada **Unidad_Organizativa**

<img width="416" height="47" alt="image" src="https://github.com/user-attachments/assets/4245fa4d-7c68-4a19-a006-b1ce2e75161a" />

↓

<img width="158" height="204" alt="image" src="https://github.com/user-attachments/assets/f937fcb2-67d4-4f4c-b3e8-176c9422465e" />

La directiva que hemos de editar se encuentra en **Configuración del usuario>Preferencias>Configuración de Windows>Acceso Directo.**

Lo que haremos será crear un nuevo acceso directo.

<img width="359" height="556" alt="image" src="https://github.com/user-attachments/assets/dd749f75-811f-4839-98df-79480fd1d44f" />

Crearemos un nuevo acceso directo. 
En este caso, lo estamos haciendo para la **UO_Curritos**, por lo que será un acceso directo a **Writer**. 
Después de crearlo, hacemos un **gpupdate /force** e iniciamos sesión en el equipo cliente

<img width="430" height="487" alt="image" src="https://github.com/user-attachments/assets/d54c6cf0-4b40-4994-a29d-2d8480bb5a3c" />

↓

<img width="106" height="120" alt="image" src="https://github.com/user-attachments/assets/0853ea0a-14b6-46d2-8c2e-03abfe8cf8f0" />

El siguiente grupo es el de los jefes, creamos una nueva GPO y la editamos.

<img width="189" height="56" alt="image" src="https://github.com/user-attachments/assets/d8b03734-0fd4-4d5d-8996-944f1b345f19" />

Y bueno, es literalmente hacer lo mismo pero añadiendo 2 accesos directos diferentes. 
Otro **gpupdate /force** y otro inicio de sesión y funciona.

<img width="710" height="282" alt="image" src="https://github.com/user-attachments/assets/c7a4413e-8ad4-419d-9722-3b63b8fb9fa3" />

↓

<img width="107" height="401" alt="image" src="https://github.com/user-attachments/assets/d05de278-a16f-4259-bafb-65feffa00496" />

---

## Lanzar programas en el establecimiento de la conexión 

### Hacer que LibreOffice se ejecute al iniciar sesión con un currito.

No solo tenemos que instalar **LibreOffice**, si no que, además, ahora tenemos que hacer que se inicie automáticamente. 

Usaré la misma directiva que usé en el apartado anterior, así que no hace falta crear una nueva, ni vincularla a ninguna **UO**. 
Para editar esto, vamos a **Configuración de usuario>Directivas>Plantillas administrativas>Sistema>Inicio de sesión**

<img width="618" height="277" alt="image" src="https://github.com/user-attachments/assets/7263a9d5-5172-461a-8eb0-0f519f09bc36" />

Para configurarla, solo tendremos que añadir la ruta del programa que queremos que se ejecute, de la siguiente forma.

<img width="570" height="167" alt="image" src="https://github.com/user-attachments/assets/d2cfd0a6-d303-4422-ad35-b7f5fce5cb8b" />

Un **gpupdate /force** por aquí, un inicio de sesión por allá y pum, se inicia el programa.

<img width="481" height="186" alt="image" src="https://github.com/user-attachments/assets/ae95e54d-7080-451f-af11-9d80f6d09311" />

↓

<img width="722" height="456" alt="image" src="https://github.com/user-attachments/assets/fe40fda3-9454-43dd-90d1-2c8ccc5a115f" />

---

## Control de equipos que pueden utilizar los usuarios 

### Haz que cada usuario inicie sesión en los equipos correspondientes 

En este punto, vamos a hacer que los jefes inicien sesión en el servidor y en el equipo que se encuentra en su UO y que los curritos, solo puedan iniciar sesión en aquellos equipos que se encuentran en su UO. 

Este punto, parece difícil, pero es bastante sencillo. 

Tendremos que editar la GPO Default Domain Policy para hacer que solo los jefes puedan acceder al servidor y que curritos no puedan. 
Aunque obviamente, antes de eso, hay que crear los grupos jefes y curritos.

<img width="460" height="185" alt="image" src="https://github.com/user-attachments/assets/45fe3da0-ffa5-40d3-a771-2abae80a4350" />

↓

<img width="418" height="132" alt="image" src="https://github.com/user-attachments/assets/c62e9d31-43e5-41af-b416-3ab62c76a57d" />

Al ya tener los grupos, procedemos a la edición de la **GPO**.

<img width="240" height="58" alt="image" src="https://github.com/user-attachments/assets/a1a66ab3-7b53-455d-b43a-4dde21fe1237" />

La directiva a modificar es **Configuración del equipo>Directivas>Configuración de Windows>Configuración de seguridad>Directivas locales>Asignación de derechos de usuario>Permitir inicio de sesión local.**

Agregamos al grupo **Jefes** y GG EZ.

<img width="316" height="226" alt="image" src="https://github.com/user-attachments/assets/e156aceb-f9ea-45f0-a46e-8364f8502032" />

**Gpupdate / force** e iniciamos sesión con usuarios de ambos grupos.

Primero vamos con **curro1.**

<img width="372" height="165" alt="image" src="https://github.com/user-attachments/assets/023aa60c-b36b-44d9-a6dc-3a7b239eb721" />

↓

<img width="904" height="97" alt="image" src="https://github.com/user-attachments/assets/09b3c21d-ed28-4ea5-8d02-7b0c614910c7" />

Resultado correcto, ahora es el turno de los jefes.

<img width="378" height="189" alt="image" src="https://github.com/user-attachments/assets/b58650b0-49a1-42d9-9de0-b5d2edd32b45" />

↓

<img width="117" height="527" alt="image" src="https://github.com/user-attachments/assets/1a878bd4-ca9a-4e30-8aa1-f8300c53e7c3" />

Muy bien, el 1º punto funciona, ahora le toca al 2º. 
Podría haber usado las mismas GPO de antes, pero bueno, creé otras.

<img width="180" height="136" alt="image" src="https://github.com/user-attachments/assets/38ad98c7-7aee-4de9-b58c-5d53581bad81" />

Y la directiva a editar es la misma, pero esta, como está en una UO en específico, solo afectará a los objetos de esa UO.

<img width="350" height="243" alt="image" src="https://github.com/user-attachments/assets/cab4a005-6011-4ffa-9465-cc9b6cb0c204" />

↓

<img width="354" height="235" alt="image" src="https://github.com/user-attachments/assets/5852d3bb-3a5a-4c0b-9818-ab4360143b47" />

Cambiamos al equipo de Unidad Organizativa, por ejemplo, la movemos a **UO_Jefes**

<img width="290" height="132" alt="image" src="https://github.com/user-attachments/assets/78cfa43e-9a55-4bba-ba12-c1758abf1981" />

Si ahora iniciamos sesión con un currito, no podremos.

<img width="744" height="155" alt="image" src="https://github.com/user-attachments/assets/bedb79e9-38e4-4183-b198-18627dc31b41" />

Pero si podremos con un jefe.

<img width="428" height="191" alt="image" src="https://github.com/user-attachments/assets/2075d97b-9d1f-4cb0-85a2-21829f0eef19" />

Ahora movemos al equipo y lo ponemos en la **UO_Curritos**.

<img width="275" height="130" alt="image" src="https://github.com/user-attachments/assets/e0177e15-21d9-42dc-a074-368d0760d1c7" />

Si intentamos con un jefe, no podremos.

<img width="741" height="180" alt="image" src="https://github.com/user-attachments/assets/e038ab23-1680-41d8-86d8-272c3064bc23" />

Pero si podremos con un currito.

<img width="392" height="170" alt="image" src="https://github.com/user-attachments/assets/72516135-46a1-4a5e-bef1-17762531429a" />

---

## Precedencia de GPO Vamos a comprobar la prevalencia  

### Quita la opción Cambiar la contraseña 

En este ejercicio, vamos a comprobar la prioridad de las **GPO**. 
El objetivo, es hacer que, a los usuarios del dominio, no les aparezca la opción de **Cambiar contraseña** al hacer un **ctrl+alt+supr**. 
Como es a todos los usuarios del dominio, editaremos la **GPO Default Domain Policy. **

<img width="183" height="43" alt="image" src="https://github.com/user-attachments/assets/c62241eb-798c-4eee-b25b-23ef91873f5e" />

Vamos a **Configuración de usuario>directivas>Plantillas>Administrativas>Sistema>opciones de ctrl+alt+sup**

Y habilitamos la directiva. 

<img width="602" height="328" alt="image" src="https://github.com/user-attachments/assets/9578af3c-2e49-4a65-9dd5-27912e0eb153" />

Si ahora hacemos un **ctrl+alt+supr** no nos saldrá la opción de cambiar la contraseña. 

<img width="213" height="252" alt="image" src="https://github.com/user-attachments/assets/01a613c8-5069-4d8c-880a-bd23120e00c3" />

Vamos a dejar esa directiva configurada y vamos a hacer que los usuarios jefes, si tengan esa opción. 
Para ello, crearemos una nueva GPO con la cual, deshabilitaremos esa opción.

<img width="728" height="413" alt="image" src="https://github.com/user-attachments/assets/4186b9f4-4099-4644-b293-ced8f41e4820" />

Si iniciamos sesión como uno de los jefes, si nos saldrá esa opción, pero si iniciamos sesión con uno de los curritos, no. 

<img width="297" height="381" alt="image" src="https://github.com/user-attachments/assets/4f90939a-2f68-4924-8196-569392e6c858" />

↓

<img width="301" height="334" alt="image" src="https://github.com/user-attachments/assets/9511cb16-f09f-4504-83fb-577b9e6e083c" />

---

### Configura los permisos del GPO vinculado a la unidad organizativa para hacer que ese GPO no se aplique a uno de los dos jefes


Ahora, haremos que esta **GPO** solo se aplique a uno de los jefes. 
Vamos a **Objetivos de directiva de grupo>cambio** (puesto que así se llama la GPO)>Opciones Avanzadas y denegamos todos los permisos a por ejemplo, el usuario **jefe1**. 

<img width="684" height="656" alt="image" src="https://github.com/user-attachments/assets/e3d97537-fcf5-4ccc-a4f6-fb953fe3843d" />

Si iniciamos sesión con el **jefe1** y hacemos un **ctrl+alt+supr** veremos que no esta la opción de **Cambiar la contraseña**.

<img width="375" height="321" alt="image" src="https://github.com/user-attachments/assets/534c98ad-3dd8-4d03-a5fa-021c058353f3" />

Si iniciamos sesión con el **jefe1** y hacemos un **ctrl+alt+supr** veremos que no esta la opción de **Cambiar la contraseña.**

<img width="374" height="322" alt="image" src="https://github.com/user-attachments/assets/291bf3d4-eb78-45ec-844b-32a68ec8fca3" />

---

### Crea una unidad organizativa llamada UO_Jefazos dentro de la UO_Jefes. Crea en ella, al menos, un usuario 

<img width="796" height="109" alt="image" src="https://github.com/user-attachments/assets/097610f5-3875-49d0-92f1-fc2bef443c6a" />

---

### Configurar otras de las directivas de ctrl+alt+sup 

Para acabar con este caso práctico, vamos a hacer que a ningún usuario le salga ninguna opción al realizar el **ctrl+alt+supr**. 
Vamos a la directiva **Default Domain Policy** y habilitamos todas las directivas.

<img width="760" height="142" alt="image" src="https://github.com/user-attachments/assets/cab1540c-6b1e-4549-8bf4-19a73a46b753" />

Pero, queremos que a los jefes, les salga la opción de **Cambiar la contraseña** así que vamos a su **GPO** y la deshabilitamos.

<img width="644" height="99" alt="image" src="https://github.com/user-attachments/assets/dce8fafd-073b-4c68-b1aa-3e4b669b0829" />

Y para los jefazos, queremos que solo aparezca la opción de Bloquear equipo. 
Por lo que creamos una GPO para su Unidad Organizativa y deshabilitamos esa directiva.

<img width="645" height="107" alt="image" src="https://github.com/user-attachments/assets/36ce11c4-dd75-4ab2-b34a-1caa4220eb72" />

Y comprobamos cada uno de los casos

<img width="208" height="151" alt="image" src="https://github.com/user-attachments/assets/42021cb7-8eb0-4e56-908a-30a6e46ae3ea" />

↓

<img width="226" height="191" alt="image" src="https://github.com/user-attachments/assets/962e283c-bf92-49cf-9502-2a37e5f67da0" />

↓

<img width="246" height="156" alt="image" src="https://github.com/user-attachments/assets/e9a35a6b-ece6-4b7a-a0e9-1df929c3ef61" />

---

## Otras configuraciones 

### Limitar el tamaño del perfil 

Este caso práctico es un poco aburrido, porque es todo el rato lo mismo, pero bueno, habrá que hacerlo. 
Lo primero que haremos será limitar el tamaño del perfil de los **curritos**. 
Para todos estos ejercicios crearé una **GPO** que contenga todos estos cambios de directivas. 

<img width="132" height="43" alt="image" src="https://github.com/user-attachments/assets/5eb6002d-94b1-440e-8ea8-776e6cddb9aa" />

Esta directiva se encuentra en **Configuración de usuario>Directivas>Plantillas administrativas>Sistema>Perfiles de usuario>Limitar el tamaño del perfil**

<img width="457" height="288" alt="image" src="https://github.com/user-attachments/assets/ca57172b-ca5c-41e5-b495-64a2522064c7" />

Dentro de esta directiva, aplicaremos la siguiente configuración: 

<img width="350" height="250" alt="image" src="https://github.com/user-attachments/assets/180cd81c-39a2-4a29-9c21-d0b64989c771" />

↓

<img width="252" height="280" alt="image" src="https://github.com/user-attachments/assets/92a8576e-f68a-462b-933e-bccdc7257c7f" />

Y después de esto, un buen **gpupdate /force** 

---

### Desactivar reproducción automática 

La siguiente directiva para configurar es **Configuración de usuario>Directivas>Plantillas administrativas>Componentes de Windows>Directivas de Reproducción automática>Desactivar reproducción automática.**

<img width="628" height="347" alt="image" src="https://github.com/user-attachments/assets/c08dc1f6-32e0-445a-8223-51be0ebdf733" />

Una simple habilitación acompañada de un gpupdate /force y listo.

<img width="339" height="359" alt="image" src="https://github.com/user-attachments/assets/446efcf3-6231-4be9-bb0f-e43fad205ab5" />

---

### “Denegar” acceso a cmd y panel de control

Seguimos con los **curritos** y ahora crearemos otra **GPO** para que no puedan acceder al panel de control ni usar ninguna consola. 

<img width="245" height="98" alt="image" src="https://github.com/user-attachments/assets/1f472d94-8c37-4907-997a-2f8bd186e925" />

Primero, restringiremos el acceso al panel de control, editando la directiva:

**Configuración de usuario>Directivas>Plantillas Administrativas>Panel de control > Prohibir el acceso a configuración de PC y Panel de Control.**

<img width="726" height="201" alt="image" src="https://github.com/user-attachments/assets/8639309a-4c41-4ee5-882c-8047778b7cf5" />

---

### “Denegar” acceso a cmd y panel de control. 

Seguimos con los **curritos** y ahora crearemos otra **GPO** para que no puedan acceder al panel de control ni usar ninguna consola.

<img width="245" height="96" alt="image" src="https://github.com/user-attachments/assets/e2eb1773-8b61-4c2d-98c1-068d75ddbbe7" />

Primero, restringiremos el acceso al panel de control, editando la directiva: 
**Configuración de usuario>Directivas>Plantillas Administrativas>Panel de control > Prohibir el acceso a configuración de PC y Panel de Control.**

<img width="726" height="200" alt="image" src="https://github.com/user-attachments/assets/56c5de2f-9972-49de-9bad-306bc56ff0ef" />

Otra habilitación y un **gpudate /force**.

<img width="152" height="178" alt="image" src="https://github.com/user-attachments/assets/29612169-5c70-40ff-96bc-973e22e22aeb" />

Ahora, vamos a hacer que no puedan ejecutar ninguna consola. 
Editaremos la siguiente directiva: 
**Configuración de usuario>Directivas>Plantillas Administrativas>Sistema > No ejecutar aplicaciones de Windows especificadas.**

<img width="679" height="314" alt="image" src="https://github.com/user-attachments/assets/506d4cb7-e3a4-4c99-b80f-87142ed3860c" />

Cuidado, en esta directiva ya no es solo la habilitación, si no que además, hay que añadir la ruta de los programas que no podrá ejecutar el usuario. 

<img width="127" height="90" alt="image" src="https://github.com/user-attachments/assets/52131222-9c47-4239-8d29-80fc36cd28b2" />

↓

<img width="454" height="169" alt="image" src="https://github.com/user-attachments/assets/7e58bc95-e05d-4582-b28a-1fdf5683e949" />


Para terminar con este punto, vamos a editar la siguiente directiva: 
**Configuración de usuario>Directivas>Plantillas Administrativas>Sistema > Impedir el acceso al símbolo del sistema**

<img width="694" height="305" alt="image" src="https://github.com/user-attachments/assets/166cbe5f-d527-4d33-862b-686be71e6754" />

Una del habilitado y gpupdate /force y listo, solo falta comprobar. 

<img width="133" height="109" alt="image" src="https://github.com/user-attachments/assets/94f3f763-74ca-466d-ad34-4efde08fead5" />

Iniciamos sesión con un currito y realizamos la comprobaciones, visualizando, que no podemos acceder ni al panel de control ni al cmd y por consecuente, a la powershell.

<img width="536" height="159" alt="image" src="https://github.com/user-attachments/assets/ebe9c61e-5a76-41b7-870e-991f907fd2cc" />

↓

<img width="668" height="157" alt="image" src="https://github.com/user-attachments/assets/f48e380e-6301-41d9-8722-0b33b583d46e" />

---

### Cambiar la página principal del navegador 

Tenemos que cambiar la página inicial del navegador de los **jefes**. 
Creamos una nueva GPO y editaremos la siguiente directiva: 
**Configuración de usuario>Directivas>Plantillas Administrativas>Componentes de Windows>Internet Explorer > Deshabilitar el cambio de configuración de la página principal**

<img width="504" height="355" alt="image" src="https://github.com/user-attachments/assets/e953e890-2b07-42ee-bae9-4c585b522590" />

Habilitamos la directiva y añadimos la **URL** a la página que queremos que se muestre. 

<img width="258" height="267" alt="image" src="https://github.com/user-attachments/assets/599b2af8-aa54-4f6d-a378-b021b5f959c3" />

Iniciamos sesión con un jefe y lo comprobamos. 

<img width="456" height="184" alt="image" src="https://github.com/user-attachments/assets/d4a3ad1c-c08f-4eb9-acc6-7d7d8c0b754c" />

---

## Redirección de carpetas 

### Crea un directorio nuevo en tu servidor y compártelo con el nombre “Redir”. 

En este caso práctico, vamos a redireccionar directorios. 
Lo primero que tenemos que hacer, es compartir un directorio, dándole permisos de control total a todos los usuarios.

<img width="187" height="224" alt="image" src="https://github.com/user-attachments/assets/3e89bc4e-66b8-47c6-9519-6d7593bef451" />

---

### Crea una nueva unidad organizativa llamada UO_Redireccion y un usuario nuevo 

Después, de hacerlo, creamos una nueva unidad organizativa, sumado a un usuario nuevo.

<img width="257" height="43" alt="image" src="https://github.com/user-attachments/assets/ca9e1ea8-fcb6-4863-ac82-74341a9be9b7" />

↓

<img width="144" height="50" alt="image" src="https://github.com/user-attachments/assets/bec125bd-e8fc-4686-860a-164c1c07df23" />

---

### En UO_Redireccion, crea una nueva GPO y configura la redirección de la carpeta “Mis documentos”, de la siguiente manera


Una vez tenemos nuestra unidad organizativa creada, deberemos de crear una GPO para la misma. 
En esta GPO editaremos la directiva **Configuración del usuario>Configuración de Windows>Redirección de carpetas>Escritorio**

<img width="294" height="269" alt="image" src="https://github.com/user-attachments/assets/b6fb6d87-a634-43ae-ba5a-3c0d259e6920" />

Se nos abrirá una ventana, donde pondremos los siguientes parámetros:

<img width="393" height="390" alt="image" src="https://github.com/user-attachments/assets/f229bacf-0798-4a2e-a04b-646fb66143d6" />

↓

<img width="387" height="388" alt="image" src="https://github.com/user-attachments/assets/d2972bc2-8150-4a9e-b562-16d9214c6d5b" />

---

### Conéctate desde el equipo cliente con el usuario afectado por la GPO.

Ahora para probar lo que hemos hecho, iniciaremos sesión con el usuario **Redirecciona**. 

<img width="352" height="144" alt="image" src="https://github.com/user-attachments/assets/dc5523fe-d0fb-418e-911a-542d5d49de74" />

---

### Comprueba que en el explorador de Windows aparece un símbolo en “mis documentos” indicando que la carpeta está redirigida.

Si lo hemos hecho todo bien, saldrá un icono al lado del icono del escritorio.

<img width="395" height="100" alt="image" src="https://github.com/user-attachments/assets/75acaffd-469c-4a05-b701-63b478f3e0f5" />

---

### Comprueba las propiedades de la carpeta mis documentos y fíjate en el apartado “Ubicación” 

Si vamos a Propiedades>Ubicación veremos la ubicación real de este directorio 

<img width="421" height="269" alt="image" src="https://github.com/user-attachments/assets/250b2113-9aea-4601-a8a8-5f7b8e316289" />

---

### Crea algunos archivos en la carpeta “mis documentos”. 

Para comprobar su funcionamiento, crearemos 2 archivos dentro.

<img width="183" height="133" alt="image" src="https://github.com/user-attachments/assets/91be7128-b3dd-4d22-8826-7482db4c39d0" />

---

### Entra directamente en la carpeta del perfil del usuario (C:\Users\...) y comprueba que los documentos no están allí

Si vamos al directorio personal del usuario, veremos que ni siquiera sale el directorio del Escritorio, así que esos archivos no están en el directorio del usuario. 

Si no que están en el directorio redir, que es la carpeta compartida que hemos creado antes. 

<img width="510" height="273" alt="image" src="https://github.com/user-attachments/assets/17a89f8e-c46a-4502-af36-194d414a4143" />

---

### Con la sesión iniciada en el cliente, pausa la máquina servidora para perder la conexión. Haz lo siguiente en el cliente. 

Lo de pausar la máquina no me ha funcionado muy bien, así que lo que hice fue cambiar la red en la que esta el cliente, así no puede conectarse con el servidor. 

<img width="491" height="178" alt="image" src="https://github.com/user-attachments/assets/287e207c-c599-4bd8-b132-f8c67590a393" />

Ahora, la carpeta sincronizada, ya no está sincronizada.

<img width="455" height="58" alt="image" src="https://github.com/user-attachments/assets/28a7719a-875c-41a7-82c3-ee05076b978f" />

Lo vemos tanto en el icono como en las propias propiedades de la carpeta.

<img width="421" height="265" alt="image" src="https://github.com/user-attachments/assets/f8795abf-a245-45c4-bc27-50f51ac531df" />

Por lo que, crearemos un archivo nuevo, para comprobar una cosita. 

<img width="279" height="53" alt="image" src="https://github.com/user-attachments/assets/72c46f84-4d3f-4a22-8e79-d32507051a9d" />

---

### Reanuda la máquina servidora. En el cliente:

Ahora reanudaremos el servidor y veremos que ya esta conectada y que podemos realizar la sincronización.

<img width="331" height="270" alt="image" src="https://github.com/user-attachments/assets/206bcef4-d049-4772-ab89-3448acffbf60" />

---

### Desvincula el GPO de la unidad organizativa. Asegúrate de que se aplican los cambios de las directivas en el equipo cliente y vuelve a iniciar sesión con el mismo usuario: 

Ahora, desvincularemos la **GPO** que hemos creado.

<img width="237" height="107" alt="image" src="https://github.com/user-attachments/assets/48dc0030-58ff-42b7-8652-7d5093c7a297" />

Al desvincularla, el escritorio ya no esta sincronizado, por lo que no tiene el icono ese to raro que tenía antes. 

<img width="97" height="34" alt="image" src="https://github.com/user-attachments/assets/cbba0d80-2608-4e8a-b81f-ea0dc4bbaaae" />

Además, de que los archivos que hemos creado durante la sincronización se encuentran en el directorio personal del usuario.

<img width="486" height="294" alt="image" src="https://github.com/user-attachments/assets/58a9557c-b8f1-466d-bc12-4650b263feda" />

↓

<img width="367" height="168" alt="image" src="https://github.com/user-attachments/assets/e08ab391-ced4-4702-8162-6c797d026dba" />

---

## Script de inicio de sesión

Y por fin, pasamos al último apartado de esta práctica.

### Comparte una carpeta en el servidor. Da los permisos necesarios para que todos los usuarios puedan leer y escribir

Inicia bien este apartado, tan solo tenemos que hacer lo mismo que hemos hecho en el anterior. 

<img width="225" height="205" alt="image" src="https://github.com/user-attachments/assets/ae4af622-593f-4194-bb5a-d543bb5cbe45" />

---

### Crea un pequeño script (.bat) que haga lo siguiente: 

Este script debe 

- Sincroniza la hora con el servidor sin preguntar confirmación
- Elimina la conexión de red previa que pudiera haber en la letra de unidad Y
- Crea una nueva conexión de red en la unidad Y: con la carpeta compartida que has creado.

Así que nada, nos ponemos a la obra y quedaría de la siguiente manera

<img width="629" height="219" alt="image" src="https://github.com/user-attachments/assets/b1334520-89e2-4074-9bff-80f3a387eb51" />

---

### Configura mediante GPO que se ejecute ese script en el inicio de sesión de los usuarios de la UO_Jefes. 

Ahora, crearemos otra GPO (ya la última) con la cual, editaremos la siguiente directiva: 
**Configuración de usuario>Configuración de Windows>Scripts>Iniciar Sesión**

<img width="676" height="273" alt="image" src="https://github.com/user-attachments/assets/a46b6e32-71b0-400e-896b-4c0a5b2828b6" />

Pero antes de hacer nada, hemos de meter el script en una ubicación un tanto peligrosa. 

<img width="565" height="105" alt="image" src="https://github.com/user-attachments/assets/1801df97-146e-441b-b4c1-24b65322b5aa" />

Una vez el script colocado en su sitio, pasamos a configurar la directiva y es que aquí tenemos que poner el script que se ejecutará cuando los usuarios inicien sesión. 

<img width="316" height="271" alt="image" src="https://github.com/user-attachments/assets/eef1c388-9500-4237-aae8-5d6c8fa557ef" />

---

### Inicia sesión en el cliente con un usuario jefe 

Si iniciamos sesión con un jefe, veremos que se ha creado una nueva unidad **Y:**. 

<img width="211" height="34" alt="image" src="https://github.com/user-attachments/assets/51b5c150-607c-4175-8cf7-149f0c890f23" />

Y si dentro de esta unidad creamos un archivo. 

<img width="227" height="107" alt="image" src="https://github.com/user-attachments/assets/d3d92c3c-fa8d-4a48-8881-658e8f6a3a8f" />

Este se compartirá con el servidor

<img width="285" height="102" alt="image" src="https://github.com/user-attachments/assets/0e4d9314-0dc8-4ef6-afe1-41d2cd882898" />











