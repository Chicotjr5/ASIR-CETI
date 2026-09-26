## Disponemos de un servidor con IP 192.168.203.XX1/16 que necesita de un DNS trabajando en el dominio midominioXX.com y necesitamos que resuelva con www1, www2, www3, www4 y www5. 


En esta práctica, vamos a crear un servidor web, pero esta vez será en Windows. 
Este servidor, trabajará en el dominio **midominio03.com** por lo que tendremos que crear una nueva zona DNS para ello.

<img width="557" height="239" alt="image" src="https://github.com/user-attachments/assets/55cf8c87-46b5-40ce-8e1a-48eb37a0b792" />

Y crear todos los registros correspondientes.

<img width="676" height="125" alt="image" src="https://github.com/user-attachments/assets/316bf11a-7bbc-4621-bff7-36e855dbc177" />

Comprobamos que funciona y seguimos. 

<img width="405" height="359" alt="image" src="https://github.com/user-attachments/assets/1ca1b88e-ee28-4274-ade7-087489c9bac8" />

↓

<img width="292" height="348" alt="image" src="https://github.com/user-attachments/assets/f9cd292c-fc83-4a73-978a-6fa96144b481" />

---

## Instalación y comprobación del servidor web desde el servidor y desde otro equipo

Una vez tenemos el DNS listo, tenemos que instalar el servidor web.

Vamos a **Administrador del servidor>Agregar Roles y Características>Servidor Web (IIS)**

<img width="161" height="27" alt="image" src="https://github.com/user-attachments/assets/8610fcb1-a67f-42a9-a537-d390463e5883" />

Y para futuros apartados, le instalaremos estos módulos: 

<img width="354" height="175" alt="image" src="https://github.com/user-attachments/assets/3f8a1523-2026-4591-9375-469156822444" />

Una vez instalado, podemos acceder al servidor web

<img width="873" height="172" alt="image" src="https://github.com/user-attachments/assets/4abbe196-9403-4d95-8c5d-72888aa84b03" />

Para comprobar su funcionamiento, ponemos http://192.68.203.31 en el navegador.

<img width="471" height="340" alt="image" src="https://github.com/user-attachments/assets/9596a711-6a1b-4357-b95d-92a421295885" />

A la derecha de cada sitio web, tenemos un panel de Acciones en el cual podemos 
realizar diferentes acciones, como por ejemplo, reiniciar/parar/iniciar el servidor. 

<img width="186" height="451" alt="image" src="https://github.com/user-attachments/assets/9cb83dbf-165c-467f-a8c9-33891a151561" />

↓

<img width="455" height="459" alt="image" src="https://github.com/user-attachments/assets/651380c2-bf2d-46a0-8026-d0f1e1c5a68d" />

---

## Crear los hosts virtuales que se indican y crea los correspondiente ficheros html que indique en cuál de ellos estás. 

Ahora vamos a crear los hosts virtuales **www1**, **www2**, **www3**, **ww4** y **www5**. 
Para ello, crearemos en **C:\inetpub** los directorios de estos hosts.

<img width="664" height="353" alt="image" src="https://github.com/user-attachments/assets/29962d3f-cdae-43c4-96cd-b10507ff65f9" />

Y dentro del servidor, agregaremos los nuevos sitios, configurandolos de la siguiente manera: 

<img width="503" height="484" alt="image" src="https://github.com/user-attachments/assets/9d21cca7-fdb5-4d67-90bc-27341631b5cd" />

↓

<img width="265" height="165" alt="image" src="https://github.com/user-attachments/assets/f1f2cf19-4bfb-4e7c-bf53-25ada52a1c0c" />

---

## Desde el servidor, accede a estas páginas con el puerto adecuado y completa la tabla: 

Iniciaremos cada uno de los hosts y probaremos su funcionamiento.

### WW1

<img width="673" height="123" alt="image" src="https://github.com/user-attachments/assets/827d2047-f809-46a2-b3a7-6884fc57857c" />

### WW2

<img width="675" height="117" alt="image" src="https://github.com/user-attachments/assets/d8087f8a-21f9-4d03-8979-f351b54b294a" />

### WW3

<img width="676" height="128" alt="image" src="https://github.com/user-attachments/assets/88710cfe-0bc3-43d3-879d-7c5a48493fe7" />

### WW4

<img width="635" height="110" alt="image" src="https://github.com/user-attachments/assets/c387b780-9185-4b9b-bb97-fcd2a37bb8c4" />

### 192.168.203.31

<img width="672" height="105" alt="image" src="https://github.com/user-attachments/assets/83a8f5a5-1bcb-4b0d-9f88-18b40bd88a6b" />

### LOCALHOST

<img width="637" height="97" alt="image" src="https://github.com/user-attachments/assets/63bdc628-569b-4620-a8d3-7485c33cafc7" />

---

## Desactiva el sitio por defecto y repite las pruebas del apartado anterior. Al final vuelve a activarlo 

Ahora, si deshabilitamos el sitio por defecto, tendremos el siguiente resultado:

<img width="245" height="143" alt="image" src="https://github.com/user-attachments/assets/ee4d6b7d-09fc-437b-9e86-3a48da6d38ec" />

Las páginas wwwX sacán el mismo resultado, pero localhost y 192.168.203.31 sacan el siguiente: 

<img width="729" height="481" alt="image" src="https://github.com/user-attachments/assets/c03e74c5-5dd8-431a-8198-ee04e6015e56" />

---

## Desde el administrador IIS selecciona sitios y muestra la pantalla de configuración de todos los hosts virtuales.

<img width="899" height="243" alt="image" src="https://github.com/user-attachments/assets/d518eb20-c69b-42cc-b359-89762822bdba" />

---

### En www2 crea una carpeta doc y pon dos páginas i1.htm e i2.htm. Crea otra carpeta doc2 y pon una páginas index.htm. Acceder en el navegador a www2.midominioXX.com/doc y a doc2, ¿qué ocurre?. Modifícalo para que muestre la lista de ficheros del directorio pero sólo en esta carpeta

Crearemos ambos directorios y todas las páginas index.html 

<img width="457" height="405" alt="image" src="https://github.com/user-attachments/assets/04d46826-5fee-43c6-8ed1-c26311186dc6" />

Si intentamos acceder a **doc** no podremos acceder a los archivos, pero si podremos ver el de **doc2**

<img width="891" height="239" alt="image" src="https://github.com/user-attachments/assets/90495b72-1762-4675-bd85-0941040da73a" />

↓

<img width="549" height="130" alt="image" src="https://github.com/user-attachments/assets/d1a7b541-9bae-4aff-9bb2-c1b50f05c076" />

Esto se debe a que en **doc2** tenemos un archivo **index.htm** el cual está configurado como un archivo índice, mientras que **i1.htm** y **i2.htm** no.

<img width="623" height="285" alt="image" src="https://github.com/user-attachments/assets/9cf8e7d0-0009-46bb-af5b-149365846d91" />

Para permitir que se puedan ver los archivos de un directorio en un sitio web, tendremos que ir a **Exámen de directorios>Habilitar**.

<img width="108" height="99" alt="image" src="https://github.com/user-attachments/assets/479f7a13-4b27-46d4-8ea1-3ca41b3e31fd" />

↓

<img width="256" height="207" alt="image" src="https://github.com/user-attachments/assets/19d844bd-e32d-4929-8117-628f877ce579" />

↓

<img width="698" height="239" alt="image" src="https://github.com/user-attachments/assets/e46f945a-31e0-435b-9ee0-47e652b98a61" />

---

## Define qué es un directorio virtual. Pruébalo en tu servidor con un ejemplo.

Un directorio virtual es un directorio del servidor, el cual no está dentro del directorio de publicación habital, osea que no depende de **C:\inetpub\wwwroot** pero al que si podemos acceder a través del servidor web. 
Y nosotros vamos a probarlo con el siguiente ejemplo: 
Crearemos el directorio **C:\virtual**

<img width="615" height="243" alt="image" src="https://github.com/user-attachments/assets/3643ce33-e9b4-4472-a80e-1200f86f436e" />

Y crearemos el directorio virtual en el host **www1**.

<img width="364" height="136" alt="image" src="https://github.com/user-attachments/assets/ee584a1b-2710-4ce4-a76f-7280d3da083f" />

↓

<img width="441" height="360" alt="image" src="https://github.com/user-attachments/assets/e6d2c856-ead3-4c8b-bbad-17f7b8f0a302" />

Reiniciamos el sitio web y accedemos al contenido del directorio virtual.

<img width="826" height="178" alt="image" src="https://github.com/user-attachments/assets/9a188d31-71bb-4bda-bb0f-643b3bf22f1c" />

---

## Muestra el lugar de los registros log

Para acceder a los registros log de un sitio web, vamos a **Registro** y vemos la ubicación de estos ficheros. 

<img width="104" height="107" alt="image" src="https://github.com/user-attachments/assets/99310361-e8d8-431e-a9b9-88d2e5bf248d" />

↓

<img width="440" height="307" alt="image" src="https://github.com/user-attachments/assets/bc8d6d3c-a894-4000-93c9-3edc34739bf0" />

↓

<img width="604" height="309" alt="image" src="https://github.com/user-attachments/assets/3436299f-9897-48cd-899a-e4afe09211d9" />

---

## Servidor seguro 

Para acabar con esta práctica, vamos a crear un servidor seguro, el cual usará **https**. 
Lo primero, será crear el directorio **www5_seguro**:

<img width="552" height="285" alt="image" src="https://github.com/user-attachments/assets/320a4675-0170-4986-a94b-9e3a95275be8" />

Y crearemos un nuevo certificado, que será el que utilice el sitio web seguro

<img width="132" height="100" alt="image" src="https://github.com/user-attachments/assets/542b31f6-712d-4ab9-8e35-cff8239d0077" />

↓

<img width="210" height="244" alt="image" src="https://github.com/user-attachments/assets/ce0b88e7-871a-43dd-8d44-77b7dbb2b322" />

↓

<img width="641" height="287" alt="image" src="https://github.com/user-attachments/assets/873cbb4f-afa4-4ccc-98a2-cb380450a5ec" />

Y crearemos el servidor web seguro: 

<img width="423" height="387" alt="image" src="https://github.com/user-attachments/assets/f37a5d7b-8ac8-4791-94fd-a288c5a0ec54" />

Y habilitaremos el **SSL** para el sitio web. 

<img width="593" height="265" alt="image" src="https://github.com/user-attachments/assets/20207919-d4f6-403f-9745-7ef08d46eeb2" />

A la hora de intentar acceder, el navegador nos mostrará un mensaje de que tenemos que aceptar el certificado del sitio web para poder acceder a la página.

<img width="644" height="263" alt="image" src="https://github.com/user-attachments/assets/30f75241-17db-4b46-97d5-7b91c46c205c" />

Al aceptarlo, ya podemos ver su contenido.

<img width="726" height="116" alt="image" src="https://github.com/user-attachments/assets/86425811-66d0-4227-985a-91c4b5a72349" />

Y lo mismo pasa en Ubuntu. 

<img width="662" height="218" alt="image" src="https://github.com/user-attachments/assets/321f05b7-436e-455f-9d28-0c4b5b92ea65" />

↓

<img width="650" height="138" alt="image" src="https://github.com/user-attachments/assets/54beaa36-2ddf-4b8f-9dde-85a1242300e0" />

