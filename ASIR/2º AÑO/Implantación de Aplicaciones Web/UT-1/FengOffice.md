## Descarga de Xampp

En esta práctica, vamos a realizar la instalación la aplicación web **Feng Office** en la **versión 3.10.6.9** sobre un servidor **Xampp 7.4.1** 
Lo primero de todo va a ser el descargar e instalar Xampp. 
Para evitar problemas de compatibilidad, usaremos la versión **Xampp 7.4.1** 

Vamos al siguiente [enlace](https://sourceforge.net/projects/xampp/files/XAMPP%20Windows/7.4.1/)  y nos descargamos el archivo para Windows con extensión **.zip** (aunque, el archivo **.7z** es más pequeño).

<img width="722" height="388" alt="image" src="https://github.com/user-attachments/assets/acabcf33-5bd7-48c3-b7dc-435b96e9fa57" />

Nos lo descargamos y lo descomprimimos en **C:\** 

<img width="346" height="47" alt="image" src="https://github.com/user-attachments/assets/3aac2c3c-71e8-4901-a843-d83046eb76a6" />

↓

<img width="667" height="231" alt="image" src="https://github.com/user-attachments/assets/9986ba0a-fcd3-4c5a-add5-685381a5293d" />

---

## Instalación de Xampp 

Para hacer que Xampp funcione, tan solo tenemos que abrir un terminal y ejecutar el script: **setup_xampp.bat** 

<img width="684" height="275" alt="image" src="https://github.com/user-attachments/assets/95d71a1a-24ac-4e3c-b2c6-913357d0d133" />

E iniciar el **xampp_start.exe.** 

<img width="730" height="138" alt="image" src="https://github.com/user-attachments/assets/92ae2835-5968-4736-a894-b713f556c0ad" />

Para poder acceder al servidor, ponemos **localhost** en un navegador web. 

<img width="703" height="467" alt="image" src="https://github.com/user-attachments/assets/f72896b7-f3d7-44d2-a39f-dad31590a8c9" />

---

## Descarga de Feng Office

Para poder obtener este FengOfiice, vamos al siguiente [enlace](https://github.com/fengoffice/fengoffice/releases/tag/3.10.6.9) y nos descargamos la última versión.

<img width="791" height="376" alt="image" src="https://github.com/user-attachments/assets/fc307b3f-7ef2-45f0-abbe-b17dd20a3675" />

Una vez descargado, descomprimimos el **.zip** en el directorio htdocs de la carpeta de **Xampp**.

<img width="130" height="111" alt="image" src="https://github.com/user-attachments/assets/e1d08c64-d950-4386-aaf4-a72f5bfc8a2a" />

↓

<img width="262" height="257" alt="image" src="https://github.com/user-attachments/assets/4595d59a-eaa5-4aa0-8a4f-4c0d6e6b53ce" />

---

## Base de datos

### Crear BD

Como cualquier otra aplicación web, tendremos que crear una Base de datos para ella. 
Accedemos a PHPMyAdmin a través de nuestro navegador web, poniendo la dirección **http://localhost/phpmyadmin**

Una vez dentro, seleccionamos la opción de nueva, la cual nos permite crear una nueva base de datos. 

<img width="741" height="292" alt="image" src="https://github.com/user-attachments/assets/50429565-6499-495e-94c0-d113f7306f41" />

Especificamos el nombre de la Base de datos y su codificación.


<img width="724" height="134" alt="image" src="https://github.com/user-attachments/assets/435216c5-f604-43f8-911c-c1df354f5cfe" />

Una cuestión de seguridad importante a la hora de instalar Aplicaciones Web es el no poner el mismo nombre de la aplicación a la base de datos.

---

### Añadir cuenta de usuario

Una vez creada, nos vamos al apartado de **Privilegios** donde podremos crear un nuevo usuario para esta Aplicación Web en concreto. 

<img width="125" height="32" alt="image" src="https://github.com/user-attachments/assets/0d54301b-4acc-4cf3-abb2-7d870501cc9c" />

↓

<img width="212" height="40" alt="image" src="https://github.com/user-attachments/assets/1169c175-bada-4aec-97dc-eed766654176" />

Se nos abrirá el siguiente apartado, donde especificaremos: 

- Nombre de usuario – Feng
- Nombre de host – Localhost
- Contraseña - ****
- Y le daremos todos los privilegios para esa base de datos


<img width="708" height="543" alt="image" src="https://github.com/user-attachments/assets/0b3e82b6-050c-46f7-8774-0703087bfbb5" />

Otra cuestión de seguridad importante es que el usuario de la base de datos no tenga un nombre relacionado con la Aplicación Web a la que pertenece, además de que debería de tener una contraseña muy fuerte 

---

## Instalación Feng Office

### Cambiar nombre de la carpeta

Antes de ponernos a instalar FengOffice, tenemos que cambiarle el nombre a la carpeta de la Aplicación Web, debido a que nos puede salir un error durante la instalación. 


<img width="898" height="21" alt="image" src="https://github.com/user-attachments/assets/d75dc806-b834-44da-9090-37c747a3401b" />

Cambiamos el nombre de la carpeta de FengOffice por og.

<img width="61" height="29" alt="image" src="https://github.com/user-attachments/assets/59c96b11-afcf-48fe-a5f7-c61eafbadfcc" />

---

### Bienvenida

E iniciamos la instalación, poniendo en nuestro navegador web la siguiente dirección: http://localhost/og/public/install

<img width="217" height="30" alt="image" src="https://github.com/user-attachments/assets/b6e9aebf-a5d1-4d3f-82c2-12ceb14931df" />

Y nos sale el asistente para instalarlo.

<img width="699" height="395" alt="image" src="https://github.com/user-attachments/assets/e26d6493-4c1b-49c6-a4f2-0c3fa52b79ec" />

Como podemos ver, la instalación cuenta con 4 pasos: 

- Mensaje de bienvenida
- Comprobación del entorno
- Configuración
- Finalización

---

### Comprobación del entorno 

Antes de ser instalado, FengOffice revisa que todas las partes que necesita para ser instalado están. 
En mi caso, todo esta perfecto a la primera.

<img width="706" height="320" alt="image" src="https://github.com/user-attachments/assets/5aa5f2a3-c9ee-428a-a6ff-06a80610fee1" />

---

### Configuración 

Ahora pasamos a la parte más importante y es poner la configuración de FengOffice. 
Habrá que especificar la base de datos, su usuario y contraseña. 

<img width="667" height="670" alt="image" src="https://github.com/user-attachments/assets/d1acc965-6eba-4022-a4a2-ba0cfaa73c5c" />

---

### Finalización 

Si hemos puesto todos los datos bien, ya estaremos en el paso final de la instalación. 
El instalador nos sacará un resumen de todo lo que ha hecho y nos dirá que la instalación se ha realizado de forma correcta. 
Y simplemente tendremos que darle al botón **Finish** para iniciar sesión en FengOffice.

<img width="668" height="539" alt="image" src="https://github.com/user-attachments/assets/e9e6caeb-ae10-47a6-9cb2-5eae965cb42c" />

---

## Iniciar sesión 

Una vez acabada la instalación, nos saldrá una pantalla para poder iniciar sesión con un usuario. 
Usaremos el usuario que le especificamos anteriormente. 


<img width="452" height="261" alt="image" src="https://github.com/user-attachments/assets/b8cd2e4b-04c8-462e-bb96-0b43533c1d57" />

Al iniciar sesión, nos sale la pantalla principal. 


<img width="699" height="269" alt="image" src="https://github.com/user-attachments/assets/a3badf1f-c00f-40f5-8788-8d50d01b2b09" />

Y antes de iniciar sesión, si le damos a **Options** podemos elegir el idioma de FengOffice. 


<img width="495" height="315" alt="image" src="https://github.com/user-attachments/assets/1609c5dd-7965-4b73-b05c-8a1223701fd6" />

---

## Crear usuario

Lo primero que vamos a hacer es crear un usuario. 
Para ello, nos vamos a **Users, groups and permissions**

<img width="196" height="180" alt="image" src="https://github.com/user-attachments/assets/3d88ea54-9dd3-4287-9f22-763bf3bbce35" />

Nos saldrá esta pantalla, donde podemos crear y gestionar los usuarios. 


<img width="861" height="242" alt="image" src="https://github.com/user-attachments/assets/5f42f751-64c4-404c-ba9d-dda18f69459d" />

Para añadir un nuevo usuario, hacemos clic sobre la opción **Add user**.

<img width="190" height="86" alt="image" src="https://github.com/user-attachments/assets/d34ca6c5-28a3-490a-a9e8-0313bbe8e353" />

---

### Basic Data 

Lo que nos sacará una página, en la cual crearemos a nuestro usuario, poniendo toda la información sobre este.
Lo primero que pondremos, será información básica. 

<img width="666" height="571" alt="image" src="https://github.com/user-attachments/assets/e3a06bdb-8d6c-4846-8a87-1c572763e2d2" />

---

### More contact info

El siguiente menú, es sobre la información de contacto del usuario.


<img width="747" height="387" alt="image" src="https://github.com/user-attachments/assets/a74dac41-60a8-4cd7-9d59-2a03ea35917a" />

---

### User data

Proseguimos, especificando la contraseña del usuario. 

<img width="714" height="188" alt="image" src="https://github.com/user-attachments/assets/4a944e36-0dc9-479c-878d-ee275ceac211" />

---

### Permissions

Ahora pasamos a configurar los permisos que tendrá el usuario y que módulos podrá ver. 
Yo solo le voy a dejar el que vea el módulo **“General”.** 
Más adelante comprobaremos que solo puede ver ese.

<img width="708" height="307" alt="image" src="https://github.com/user-attachments/assets/81fb05f1-1195-4fce-b91d-27a464143bc5" />

Y finalizamos la creación del usuario. 


<img width="902" height="169" alt="image" src="https://github.com/user-attachments/assets/dec21fca-ef16-45ec-b9db-669b0f954de8" />

Si hacemos clic sobre el usuario, veremos toda su información, además de que podremos borrarlo, desactivarlo etc.

<img width="900" height="304" alt="image" src="https://github.com/user-attachments/assets/a2a820cf-6113-41f0-bb43-3202fc43d678" />

---

## Inicio de sesión con el usuario 

Para poder iniciar sesión con el usuario que acabamos de crear, tendremos que cerrar la sesión del usuario con el que estamos.

Vamos al **símbolo de la ruleta>Logout**

<img width="402" height="212" alt="image" src="https://github.com/user-attachments/assets/8f740d98-1cd8-4d50-b773-12c6c7a62d7c" />

Entonces, saldrá la pantalla para iniciar sesión, ponemos el nombre y contraseña de nuestro usuario y entramos. 

<img width="503" height="297" alt="image" src="https://github.com/user-attachments/assets/d20346c8-164e-4280-8d95-904242938508" />

Y tal como hemos especificado, solo podemos ver el módulo **General**, el resto no.


<img width="178" height="51" alt="image" src="https://github.com/user-attachments/assets/5ea0ba54-5ef1-4c69-ac29-5f74d09e803e" />

↓

<img width="597" height="48" alt="image" src="https://github.com/user-attachments/assets/052f7858-86af-4abb-accc-8424c27d0368" />

---

## Creación de tareas 

Para poder crear una tarea, iremos a **Tasks>New task**

<img width="109" height="38" alt="image" src="https://github.com/user-attachments/assets/12619f7f-63cf-4baf-9ad8-035199c7a5f6" />

↓

<img width="836" height="100" alt="image" src="https://github.com/user-attachments/assets/2c0b3b0c-5a34-4d34-96cc-61499d8e3170" />

---

### Basic data 

Al igual que con el usuario, tenemos varios “menús” para poder configurar la tarea. 
En el primero, pondremos a que usuario asignamos la tarea, cuando empieza y acaba, el tiempo estimado y la prioridad de esta. 
Además, de a qué espacio de trabajo de asocia. 

<img width="784" height="244" alt="image" src="https://github.com/user-attachments/assets/95e373d8-a2e7-4e36-9010-afb3da792ba3" />

El resto de menús solo sirve para ponerle una descripción a la tarea y algún detalle de menor importancia. 
Ahora podremos ver la tarea creada, además de si está completada o no. 
Tambien podríamos ver más tareas y la suma de las horas de trabajo de cada una. 

<img width="921" height="141" alt="image" src="https://github.com/user-attachments/assets/7e5b3928-65ff-4f6f-a778-06f9390a255e" />

---

### Tareas para el usuario 

Ahora vamos a hacer varias tareas para el usuario Marcos Chicote, las cuales estarán relacionadas con los trabajos que tenemos que hacer en clase. 
La primera tarea, tratará sobre el trabajo de la instalación de FengOffice, que tiene una prioridad alta, empezó el día 31 De Octubre y finalizará el día 10 de Noviembre. 
Estará asignada al usuario Marcos Chicote el cual ya empezó la tarea. 

<img width="856" height="313" alt="image" src="https://github.com/user-attachments/assets/554ee642-6d17-479b-837a-ae32aaa9d0b2" />

Otra tarea, ira sobre el exámen que tenemos el día 17 de Noviembre. 
Pondremos que su prioridad es Urgente, tendrá una duración de 2 horas e iniciará y terminará el mismo día. 

<img width="901" height="309" alt="image" src="https://github.com/user-attachments/assets/2564ba0c-072e-41e6-af02-a2f5ac5a0071" />

---

## Crear grupos de usuarios

Después de crear un usuario, vamos a crear varios grupos de usuarios. 
Crearemos 2 usuarios más, para meterlos dentro del grupo.

<img width="774" height="199" alt="image" src="https://github.com/user-attachments/assets/763d7f1d-ec25-4647-9493-cff77272bfed" />

En el panel de Usuarios hay un apartado para los grupos de usuario, pinchamos sobre la opción Add new group

<img width="496" height="139" alt="image" src="https://github.com/user-attachments/assets/35ea3b34-b2c5-4c1d-96fe-5bb5ee074acd" />

Nos saldrá la siguiente pantalla, donde podemos añadir a los usuarios que formarán parte de ese grupo.

<img width="473" height="292" alt="image" src="https://github.com/user-attachments/assets/20b713fe-eed0-4113-b6f5-3326fe8495fa" />

Junto con sus permisos

<img width="742" height="219" alt="image" src="https://github.com/user-attachments/assets/5255a846-088d-42d0-a42f-5944c021ae02" />

Vemos que se creó el grupo. 

<img width="463" height="164" alt="image" src="https://github.com/user-attachments/assets/3dbb349d-83ec-45eb-8aac-fd823b8f33ee" />

---

## Crear documentos

### Documento normal

Vamos al módulo **Documents>Nuevo** y podemos crear 3 tipos de documento: 

- Documento normal
- Documento **-slim** / presentación
- Enlace a sitio web

<img width="615" height="237" alt="image" src="https://github.com/user-attachments/assets/01dd3559-5e49-4c58-ae1f-af339c86fe07" />

Primero vamos a probar con un Documento HTML. 
Lo creamos y nos sale el siguiente editor, donde podemos editar el texto con varias opciones, una de ellas nos permite crear código HTML. 

<img width="716" height="126" alt="image" src="https://github.com/user-attachments/assets/b619de38-3ffd-4a89-9b35-68fd26f0be35" />

Al guardarlo, nos sale un mensaje, donde podemos ver la extensión del archivo.

<img width="287" height="29" alt="image" src="https://github.com/user-attachments/assets/72d58da4-6fc9-4f73-964f-bdafe2514150" />

---

### Crear presentación 

El siguiente tipo de documento, es una presentación, como un PowerPoint, pero sin ser uno, además de estar (a mi parecer) bastante limitado

<img width="702" height="306" alt="image" src="https://github.com/user-attachments/assets/9b07f27a-ac4f-4e6e-a18e-ff2cad9d72fa" />

Al guardarlo, este se guarda como **.slim**.

<img width="282" height="23" alt="image" src="https://github.com/user-attachments/assets/74615b39-a3c0-43e7-8014-d1ec327df2fe" />

---

## Crear enlace web

Y por último, vamos a crear un enlace a un sitio/página web. 
Est tan fácil como poner la **URL** a donde queremos ir y ya. 


<img width="623" height="349" alt="image" src="https://github.com/user-attachments/assets/dff00ef1-38fe-41b8-8d66-6e2a057d6bd6" />

Haz hacer clic sobre el siguiente símbolo, nos llevará a www.marca.com 


<img width="77" height="76" alt="image" src="https://github.com/user-attachments/assets/746dfe6f-779c-4a4e-8fef-068ed2fdab8e" />

↓

<img width="724" height="271" alt="image" src="https://github.com/user-attachments/assets/70db28eb-f118-4f0a-a498-a910d21b8822" />

---

## Crear email

### Crear cuenta de email 

Ahora vamos a pasar a crear un Email. 
Pero antes de eso, tenemos que crear una cuenta de email.

<img width="794" height="131" alt="image" src="https://github.com/user-attachments/assets/633d2819-28b1-4d73-877d-e50df2304d7d" />

Vamos a **Email>Account>Add Email Account**.

<img width="235" height="111" alt="image" src="https://github.com/user-attachments/assets/f0f264cc-4970-499b-ba47-3a15ffb3d659" />

---

### Incoming Settings 

Una vez más tenemos distintos menús para poder configurar la cuenta de correo.
En este primero, pondremos

- Dirección de correo
- Identificación de la cuenta
- Contraseña
- Servidor de correo

<img width="680" height="413" alt="image" src="https://github.com/user-attachments/assets/2b3c25d5-3f4f-4478-bb11-b1cc55b1484c" />

---

### SMTP Settings

Aquí podemos decir el servidor de SMTP que usaremos, el puerto del servidor, la autentificación y el tipo de conexión del servidor (cifrada o no). 

<img width="845" height="244" alt="image" src="https://github.com/user-attachments/assets/0ca3da69-b346-4034-9139-edb495ab24fb" />

---

### Personal settings 

Este menú sirve para poder especificar propiedades de los correos, como el nombre que aparecerá cuando esta cuenta envíe correos o a quien esta asignada esta cuenta.

<img width="739" height="310" alt="image" src="https://github.com/user-attachments/assets/d57df7fa-e98e-48b2-883d-392020b06979" />

---

### Account permissions

Y por último, configuraremos que usuarios tienen permisos sobre esta cuenta y cuales.

<img width="794" height="141" alt="image" src="https://github.com/user-attachments/assets/51854be0-f6d4-4e28-aded-29a7e2499190" />

---

### Crear email 

Ahora ya podemos crear un email, vamos a **Email>New** y nos saldrá un menú en el que crearemos nuestro Email.

<img width="769" height="350" alt="image" src="https://github.com/user-attachments/assets/75ef39a6-6e42-41b4-989d-4fbbb52e798e" />

---

### Seguridad 

La única seguridad que se puede configurar, es el cambiar la contraseña del usuario administrador, a parte de las cuestiones de seguridad que especifiqué anteriormente. 
Para cambiar la contraseña, vamos a **Change Password** y cambiamos la contraseña.

<img width="149" height="123" alt="image" src="https://github.com/user-attachments/assets/387e2d3b-4694-4d6c-a47c-7b08cf93a3bd" />

↓

<img width="242" height="225" alt="image" src="https://github.com/user-attachments/assets/3e036ce9-010d-4a57-84a3-b426966e1b6f" />

---

## Comparación

### Asana

Asana es un software basado en la web que permite a los usuarios crear un espacio de trabajo virtual en la nube para organizar y asignar tareas en tiempo real. 
No es software libre.
Tiene una interfaz sobrecargada, por lo que usuarios poco familiarizados pueden desorientarse. 
No es una buena opción para empresas pequeñas, puesto que está pensado para grandes proyectos. 
Tiene varias versiones, una es gratuita, la cual puede estar algo limitada y el resto, que son de pago, ofrecen una mayor cantidad de funcionalidades.

### Trello

Trello es una herramienta de gestión de proyectos basada en tableros que permite a los equipos colaborar en tareas y proyectos. 
Es algo menos completa y personalizable que FengOffice, aunque más fácil de usar, debido a que tiene una interfaz simple e intuitiva. 
Esta pensada para pequeñas y grandes tareas. 
Tiene también varias versiones, una gratuita y el resto de pago.











