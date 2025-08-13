## Configurar los hosts virtuales anteriores usando un color distinto para cada “site” e indicando en texto el “site” y la trayectoria completa del fichero en el servidor. Comprobaciones. 

Esta práctica es una continuación de la práctica Apache3. 
Ahora, tenemos que crear un 3 dominio virtual, llamado www3.sri-03.net. 
Al igual que con el www1, tenemos que crear un registro nuevo en la zona DNS sri03.net. 

<img width="502" height="31" alt="image" src="https://github.com/user-attachments/assets/16406d2b-8cd2-4322-8356-cd1ba69fd8f8" />

Probamos que funciona.

<img width="473" height="121" alt="image" src="https://github.com/user-attachments/assets/96466385-a811-4f93-be78-0e603ff2e4a5" />

Una vez funciona, crearemos su archivo correspondiente en **/etc/apache2/sites-available** con la siguiente configuración. 

Como queremos que este dominio sea accedido desde 2 puertos, tenemos que poner 2 entradas VirtualHost. 

<img width="490" height="200" alt="image" src="https://github.com/user-attachments/assets/6892161d-6942-47d7-bf03-d169e2baab5d" />

Y en el archivo de **www2.midominio03.com** modificaremos la entrada y pondremos el puerto **8080**.

<img width="474" height="152" alt="image" src="https://github.com/user-attachments/assets/270bfb78-8c96-4d35-9155-e6ad2df51979" />

Para poder conectarnos al dominio a través del **puerto 8080**, tenemos que añadir una directiva **Listen** en el archivo **/etc/apache2/ports.conf**

<img width="453" height="106" alt="image" src="https://github.com/user-attachments/assets/cc4065ed-c7db-415f-8696-711d0f3b473e" />

Y para terminar, tendremos que crear su **index.html**  

Como novedad para el resto de sitios, su página de inicio tendrá un color de fondo.

<img width="523" height="230" alt="image" src="https://github.com/user-attachments/assets/606cf3f6-9724-47ec-bba5-3e84a2a5b04f" />

↓

<img width="524" height="224" alt="image" src="https://github.com/user-attachments/assets/b60b7ecc-7b6f-4e3f-b591-aa15b734ad22" />

↓

<img width="544" height="227" alt="image" src="https://github.com/user-attachments/assets/c823e7ac-7fb0-461d-9f4d-d9e0fbfe619f" />

Y antes de que se me olvide, tendremos que habilitar nuestro nuevo dominio.

<img width="493" height="21" alt="image" src="https://github.com/user-attachments/assets/12218dae-a877-423c-af3e-04be62ef8326" />

Ahora ya sí accedemos a nuestros dominios.

<img width="374" height="165" alt="image" src="https://github.com/user-attachments/assets/862fa75d-70cf-4bbd-b89d-e220a986dfb6" />

↓

<img width="434" height="156" alt="image" src="https://github.com/user-attachments/assets/37781ea8-7287-45f4-ab4b-edf2292a8630" />

↓

<img width="436" height="231" alt="image" src="https://github.com/user-attachments/assets/865d5d4a-7220-45a1-a850-925d2d09630e" />

↓

<img width="522" height="187" alt="image" src="https://github.com/user-attachments/assets/a52344c8-eb2f-42ef-bedf-174cc5996c70" />

---

## Explica qué es un directorio virtual. Explica la directiva alias de apache


Un directorio virtual es una asociación lógica de recursos de un servidor web que permite organizar y presentar contenido de manera virtual, sin afectar la estructura física del sistema de archivos. 

Además, no están dentro del directorio de publicación habitual, en este caso, fuera de **/var/www**. 

La directiva **Alias** permite asignar una URL a un directorio específico, o redirigir una URL solicitado a otra ubicación. 
Es útil para organizar y estructurar la información del sitio web sin afectar la ubicación física de los archivos en el servidor. 

---

## En el sitio www1 crear dos directorios virtuales de modo que

### Al acceder a la carpeta documentos se vaya realmente a la carpeta docs del home_directory del usuario operador. Hacerlo con un enlace simbólico. Al acceder a la carpeta fotos vaya a la carpeta misfotos del home_directory del usuario operador. Hacerlo usando la directiva alias

Ahora vamos a poner a prueba estas directivas y opciones. 
Lo primero que haremos, será crear los directorios en la carpeta del usuario. 

<img width="569" height="19" alt="image" src="https://github.com/user-attachments/assets/475424c1-6a18-4265-ae76-31430c83faf2" />

↓

<img width="322" height="24" alt="image" src="https://github.com/user-attachments/assets/935d2f8c-326b-43ec-a7d3-92681511b7a9" />

Y las carpetas correspondientes en el directorio **/var/www/www1**

<img width="482" height="45" alt="image" src="https://github.com/user-attachments/assets/24706a73-feb8-441c-9144-fd2a9779c7e3" />

Empezaremos con el primer caso, que es hacer que al acceder a /var/www/www1/documentos, en verda dvemos el ocntenido de **/home/operador/docs**

Lo haremos con un enlace simbólico.

<img width="888" height="25" alt="image" src="https://github.com/user-attachments/assets/1a83053a-2e47-484c-8e81-8253190305cb" />

↓

<img width="797" height="54" alt="image" src="https://github.com/user-attachments/assets/e2aa230a-ec39-4e10-afa3-05b9c59601f9" />

Y para el otro caso, lo haremos con la directiva **Alias** y el bloque **Directory**.

<img width="608" height="369" alt="image" src="https://github.com/user-attachments/assets/1e95d0a3-a6c9-469a-90d5-a41ee009c437" />

Antes de comprobar si funciona o no, vemos nuestro contenido en las carpetas del directorio **/home/operador**.

<img width="471" height="150" alt="image" src="https://github.com/user-attachments/assets/e0e8b696-d43c-487c-bc4b-5075fbee6eed" />

Y ahora, comprobamos su funcionamiento.

<img width="510" height="260" alt="image" src="https://github.com/user-attachments/assets/b382a086-6b2a-43fa-a689-50387cf7c90f" />

↓

<img width="509" height="265" alt="image" src="https://github.com/user-attachments/assets/00be0475-a0c9-48eb-8081-0d8907cae059" />

---

## Explica la opción FollowSymLinks e Indexes, compruébalas en el apartado 3 en los dos casos creando un bloque Directory. 

Estas opciones se suelen usar dentro de una directiva/bloque **<Directory>**. 
La opción **FollowSymLinks** indica si el servidor debe de serguir los enlaces simbólicos o no. 
Esta opción, por temas de seguridad debería de estar desactivada. 
La opción **Indexes** muestra una página índice con los ficheros del directorio, que es lo que muestro en mis pruebas de hecho. 
Esta es otra opción que por temas de seguridad debería de estar desactivada. 













































































