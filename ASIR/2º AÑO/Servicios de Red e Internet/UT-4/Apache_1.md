## Instalación y comprobación del funcionamiento del servidor apache en Linux. Haz copia de sus ficheros de configuración 

En esta práctica vamos a instalar un servidor apache, el cual es un servidor web. 
Además, tendremos una conexión del cliente al servidor por ssh. 
El comando para instalar **apache2** es:

```bash
apt install apache2
```

<img width="549" height="36" alt="image" src="https://github.com/user-attachments/assets/734500aa-aa3f-4f91-91ee-ddc7441c2869" />

Una vez instalado, se nos habrá creado el directorio **/etc/apache2** el cual contiene todos los ficheros de configuración de Apach

<img width="611" height="254" alt="image" src="https://github.com/user-attachments/assets/e0e8a900-33b9-457f-a71e-225f1c3b5488" />

Como vamos a estar editando estos ficheros, es importante que nos hagamos una copia de ellos.

<img width="613" height="277" alt="image" src="https://github.com/user-attachments/assets/3032fecd-1a04-4eb8-860d-2d09be219864" />

Para comprobar que funciona, abriremos un navegador web y pondremos la siguiente URL:

http://192.168.203.33/

<img width="703" height="265" alt="image" src="https://github.com/user-attachments/assets/38cff24c-cf0a-416c-a83d-66d6336e39b4" />

Más adelante veremos porque podemos acceder con la IP, pero no con localhost.

---

## Contenido de los ficheros de configuración actuales 

### Presentar las líneas include que tiene apache2.conf

El archivo **apache2.conf** es el archivo de configuración de **apache**.

<img width="847" height="33" alt="image" src="https://github.com/user-attachments/assets/ba7cd6d1-7a9a-42fd-8057-ac8316ed2b53" />

En el cuál, se indica que ficheros deben incluirse en la configuración. 

<img width="395" height="136" alt="image" src="https://github.com/user-attachments/assets/a600a75b-d2a3-485e-8f5e-f9a247dd999c" />

### Valor de la directiva Listen ¿en qué fichero está?

Esta directiva se encuentra en el fichero **ports.conf**, el cual sirve para indicar en que puertos e interfaces escuchará apache.

<img width="519" height="25" alt="image" src="https://github.com/user-attachments/assets/04b86e47-704d-4ff5-81c9-a0a52bef62d7" />

Vemos que por defecto está puesto el puerto 80 (**http**) y que si el módulo **ssl_module** está activo, se escuche por el443 (**https**)

<img width="268" height="205" alt="image" src="https://github.com/user-attachments/assets/e9e94055-69ba-42f6-9c27-5b83d094dabe" />

### Indica el valor de la directiva DocumentRoot y en qué fichero está

Esta directiva se usa para especificar cual es el directorio raíz de los documentos publicados. 
Esta directiva se encuentra en el archivo **/sites-avaliable/000-default.conf**

<img width="883" height="28" alt="image" src="https://github.com/user-attachments/assets/e59437ee-5704-4745-be33-7fe77dc57c83" />

Los archivos que están en este directorio son usados para configurar los hosts virtuales, que usaremos en una práctica más adelante.

<img width="300" height="26" alt="image" src="https://github.com/user-attachments/assets/12215722-b818-448a-99fc-fe87a0cb6fc1" />

### Busca el valor de las variables: User, Group y PidFile

Estas variables se encuentran en el archivo **apache2.conf** 
Navegaremos a través del archivo y las encontraremos.

<img width="284" height="44" alt="image" src="https://github.com/user-attachments/assets/d04538db-aa09-4b46-8828-d0d30b6f6f10" />

↓

<img width="278" height="30" alt="image" src="https://github.com/user-attachments/assets/430189fa-97df-4da5-92ff-2123522e0624" />

### Comprueba que el usuario y el grupo antes definido están creados en el sistema y que los procesos de apache son del usuario definido

Al instalar apache, se crean el usuario y grupo **www-data**. 
Este usuario se encarga de ejecutar todos los procesos hijo de apache, los cuales atienden a las peticiones. 
Visualizando el archivo **/etc/passwd** los vemos perfectamente. 

<img width="559" height="22" alt="image" src="https://github.com/user-attachments/assets/be1b1568-62b8-48a8-b95d-baf7c45236af" />

Y podemos ver sus procesos, usando el siguiente usuario: 

<img width="681" height="91" alt="image" src="https://github.com/user-attachments/assets/a812da96-75d9-43fe-abf0-baf0e34a70b1" />

### Cambiar la configuración del servidor considerando un único fichero de configuración, para lo cual: 

Como en apache2.conf se indican que ficheros de configuración se usarán para distintos apartados, vamos a comentar las líneas donde se especifican, para así, usar solo el fichero **apache2.conf** para la configuración. 

Primero **ports.conf**

<img width="204" height="29" alt="image" src="https://github.com/user-attachments/assets/d7a7425f-9bef-4977-81c0-9423f6829c5f" />

Y seguimos con **conf-enabled** y **sites-enabled**. 

<img width="460" height="116" alt="image" src="https://github.com/user-attachments/assets/646be30a-0184-484e-8b82-59cabc3aa8d7" />

Ahora, debemos de poner nosotros a mano, al configuración que tenían esos archivos, con las siguientes directivas

<img width="495" height="71" alt="image" src="https://github.com/user-attachments/assets/fd5a56b1-5e93-4bdd-ba29-9e565312e13d" />

**Listen** – Puerto de escucha 

**DocumentRoot** - directorio raíz 

**Directory Index** - Nombre y orden de las páginas por defecto al especificar el acceso a un directorio web.

Para comprobar su funcionamiento, ejecutaremos el siguiente comando:

**apache configtest** – Para comprobar la sintaxis de **apache2.conf**. 

<img width="898" height="32" alt="image" src="https://github.com/user-attachments/assets/f43e022f-b3d7-4801-b3aa-6e275b4cfef4" />

Reiniciamos el servicio y vemos que está perfectamente.

<img width="659" height="206" alt="image" src="https://github.com/user-attachments/assets/bb5210f8-54e6-4b3d-a84b-a279b13f7310" />

---

## Reparar error 

Al comprobar la sintaxis, nos salio el siguiente error:

<img width="897" height="33" alt="image" src="https://github.com/user-attachments/assets/62951e20-3d91-4154-82f6-bbe62cd61a9b" />

Este error se produce cuando Apache no puede determinar el nombre de dominio completamente calificado del servidor. 

La solución es muy sencilla, editamos el archivo **apache2.conf** y escribimos al final del fichero:

**ServerName www.sri-03.net**

<img width="481" height="87" alt="image" src="https://github.com/user-attachments/assets/6ff77126-c6b3-4deb-a8f3-820af627afc4" />

Si volvemos a comprobar la sintaxis del archivo, ya no nos saldrá el error.

<img width="663" height="43" alt="image" src="https://github.com/user-attachments/assets/766b2cd3-11fd-4327-a1a0-a2221bd6b192" />

---

## ¿Puedes acceder al servidor como http://localhost? Justificalo.  

No, no se puede 

Esto se debe a que estoy trabajando con un equipo cliente, así que al poner localhost estaría conectándome al equipo cliente, el cual no posee el servidor apache. 

Es el servidor Ubuntu quien lo tiene, el cliente no, así que no podemos acceder con localhost (localhost = poner la IP del cliente en el cliente). 

<img width="488" height="486" alt="image" src="https://github.com/user-attachments/assets/732ee9d7-cc35-49d7-bb88-52cc4e85ef25" />

---

## Configura el equipo cliente para que puedas acceder a http://www.sri-XX.net 

Yo no he tenido que realizar ninguna configuración en el cliente (a parte de poner que el servidor DNS primario será el del Ubuntu server, la cual es configuración de otra práctica). 

Con poner http://www.sri-03.net me ha funcionado perfectamente.

<img width="476" height="261" alt="image" src="https://github.com/user-attachments/assets/7da18c7d-aafe-4c24-8062-8a513b7451da" />

↓

<img width="590" height="99" alt="image" src="https://github.com/user-attachments/assets/27ce6702-bb5e-4b50-8213-ed261ae3a091" />

---

## Crear una página que muestre tu nombre completo y el nombre del fichero. Compruébalo desde el cliente web 

Vamos al directorio **/var/www** y creamos un archivo **index.html**. 

<img width="494" height="22" alt="image" src="https://github.com/user-attachments/assets/f7415b0d-cb4f-47f0-9fd5-707203815eda" />

↓

<img width="403" height="262" alt="image" src="https://github.com/user-attachments/assets/fcd48b00-93a1-4c45-ab1d-f79acdda47e0" />

Ponemos en el navegador http://www.sri-03.net y visualizamos el fichero que acabamos de crear.

<img width="521" height="272" alt="image" src="https://github.com/user-attachments/assets/e5915bd3-ec1f-4805-b7f5-9b2ec1d069a3" />

Hacemos clic sobre el archivo y nos sale su contenido.

<img width="509" height="141" alt="image" src="https://github.com/user-attachments/assets/85ce6704-f1eb-453b-bb2a-d6573905b25e" />

---

## Crear una carpeta en tu web que se llame doc1 y crea dentro una página que se llame index.htm que muestre tu nombre completo, doc1 y el nombre del fichero

Ahora vamos a hacer literalmente lo mismo, pero crearemos un directorio dentro de **/var/www** dentro del cual, crearemos otro archivo **index.htm** con casi el mismo contenido. 

<img width="545" height="80" alt="image" src="https://github.com/user-attachments/assets/fa18a65c-6a8a-4368-b9cc-b9d34386de17" />

↓

<img width="396" height="262" alt="image" src="https://github.com/user-attachments/assets/752ecb44-9f8d-4bcb-a747-511f131226b8" />

↓

<img width="558" height="177" alt="image" src="https://github.com/user-attachments/assets/7d0ff6a3-e18a-4940-8697-852246c7656b" />

---

## Realiza lo mismo que en el apartado anterior ¿Qué ocurre si pones URL hasta doc2?. Si se ve el directorio, ¿qué puedes hacer para que no se vea?

Volvemos a hacer lo mismo que en el apartado anterior, pero cambiando el nombre del directorio.

<img width="514" height="24" alt="image" src="https://github.com/user-attachments/assets/54912b50-30f7-4835-8a4b-09681df22ed4" />

↓

<img width="338" height="235" alt="image" src="https://github.com/user-attachments/assets/3b5a1cfc-46ec-4bfe-b23a-75879699327f" />

↓

<img width="534" height="175" alt="image" src="https://github.com/user-attachments/assets/ebc7a250-783e-48fe-9a1f-340d06e4b4be" />

Que pasa si indicamos la URL hasta /doc2? Pues que veremos el contenido del directorio, algo que no queremos que pase.

<img width="570" height="271" alt="image" src="https://github.com/user-attachments/assets/307c8981-c4fa-4bf5-b130-283f5132494a" />

Para solucionarlo, vamos al archivo **apache2.conf** hasta las siguiente línea:

<img width="410" height="106" alt="image" src="https://github.com/user-attachments/assets/85a6a053-7665-4b5b-93eb-f954c0b55a7b" />

Para que no podamos acceder al contenido de los directorios, tenemos que quitar la opción **indexes** y dejarlo tal cual lo vemos en la siguiente captura.

<img width="319" height="119" alt="image" src="https://github.com/user-attachments/assets/1badbb4b-bb7d-4bc9-a632-bdf8791a5839" />

Si ahora intentamos acceder al directorio **doc2** no podremos 

<img width="558" height="166" alt="image" src="https://github.com/user-attachments/assets/7054e147-6aef-4119-94fd-f76c83eb570d" />

---

## Presenta el contenido de las últimas 40 líneas del fichero de configuración principal marcando las líneas cambiadas 

<img width="802" height="677" alt="image" src="https://github.com/user-attachments/assets/78ec97d5-9dca-48c6-8874-cd33bce649a6" />

--


## Modificar el puerto en el que escucha el servidor Apache para que sea el 8080. Comprueba que funciona éste y no el habitual 

Es algo muy sencillo, cambiamos la opción Listen y ponemos en vez de **80**, **8080**. 

<img width="128" height="23" alt="image" src="https://github.com/user-attachments/assets/75a37d24-db12-4cb9-aa32-bd5e7912dfa1" />

Si no tuviéramos el **include** del archivo **ports.conf** comentado, esto habría que cambiarlo en ese archivo.

<img width="691" height="316" alt="image" src="https://github.com/user-attachments/assets/35bb0ed2-c18b-415d-b4cb-178cff5be96c" />

Para comprobarlo, usamos el comando 

```bash
netstat -tuln
```

<img width="753" height="317" alt="image" src="https://github.com/user-attachments/assets/4047f10a-82fb-41b4-a3a0-a345c0a3afc8" />









































