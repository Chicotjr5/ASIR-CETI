## Instalar el servicio FTP de Windows Server.

Para poder instalar el servicio FTP en Windows Server, vamos a **Administrador del servidor>Agregar roles y/o características** y elegimos la opción **Servidor FTP**. 

En esta versión, a mi no me venía instalado este servicio por defecto (aunque aparezca que está instalado, esto es poquue hicimos pruebas anteriormente.)

<img width="311" height="83" alt="image" src="https://github.com/user-attachments/assets/eee28b69-b9ed-4b2a-b10a-5ac1898d6c0e" />

Pra poder acceder al servidor FTP, vamos al **Administrador de IIS** 

<img width="328" height="31" alt="image" src="https://github.com/user-attachments/assets/e72a1f8f-1f6e-42f9-8338-ec13095591ff" />

Como podemos observar, ahora contamos con la opción de **Agregar nuevo sitio FTP**, que es lo que vamos a hacer a continuación. 

<img width="290" height="147" alt="image" src="https://github.com/user-attachments/assets/96863d44-87b4-4bd6-9c2c-90f67d7c63f6" />

---

## Crear un nuevo sitio FTP_General 

Ahora crearemos un nuevo sitio **FTP**. 
Este se llamará **FTP_General** y su directorio raíz será **C:\FTP\FTP1** 

<img width="520" height="281" alt="image" src="https://github.com/user-attachments/assets/e8de5879-9232-40d3-bb6b-2f4b963e8cfa" />

La siguiente configuración, será decir su IP y puerto, además si queremos usar **SSL o no**. 

<img width="547" height="395" alt="image" src="https://github.com/user-attachments/assets/c1445f31-193c-4b0c-adb8-57d6bf4c1473" />

Y para terminar, habilitaremos la autentificación básica y haremos que el usuario zipi, tenga permisos de lectura y escritura

<img width="534" height="387" alt="image" src="https://github.com/user-attachments/assets/fe3ffa76-5b23-4589-982b-d54d422fb62a" />

Ya tenemos creado nuestro sitio

<img width="649" height="190" alt="image" src="https://github.com/user-attachments/assets/9801a504-d63b-497c-9c0c-6e826e47ca68" />

---

## Conexión al sitio FTP mediante diferentes medios 

Ahora, vamos a hacer una seríe de pruebas dentro de nuestro servidor FTP. 
Primero, vamos a conectarnos con el propio Wserver, a través de la línea de comandos.

<img width="501" height="115" alt="image" src="https://github.com/user-attachments/assets/4e0ad5f0-947b-42a7-9712-98cf96322837" />

Para poder bajarnos archivos, usaremos la orden

```bash
get “nombre del archivo” 
```

<img width="517" height="166" alt="image" src="https://github.com/user-attachments/assets/838ba097-a680-4a63-b128-0545f434b173" />

Estos archivos, se bajan en el directorio, desde el cual iniciamos la conexión FTP, en mi caso, en **C:\Users\Administrador**

Si inicio la conexión desde **C:\** y me descargo varios archivos, estos se descargarán en **C:\** 

<img width="487" height="299" alt="image" src="https://github.com/user-attachments/assets/2755ccd5-9ffa-4c4b-b2cf-ecc0e3e57c28" />

Para subir un archivo:

```bash
put “nombre del archivo” 
```

<img width="540" height="184" alt="image" src="https://github.com/user-attachments/assets/2aea941f-ae52-48a1-ada7-0a0f5c663708" />

Ahora, accederemos via web:

<img width="163" height="31" alt="image" src="https://github.com/user-attachments/assets/cc14bf13-ad68-4c73-9e2e-97018900e895" />

↓

<img width="381" height="214" alt="image" src="https://github.com/user-attachments/assets/c173e8cc-b5da-4293-8341-886c7d5f38eb" />

↓

<img width="811" height="186" alt="image" src="https://github.com/user-attachments/assets/3cb99aec-6f89-41ae-abfe-bf5ab214a067" />

Para bajarnos un archivo, hacemos clic sobre él y se guardará en el directorio de **Descargas**. 

<img width="256" height="99" alt="image" src="https://github.com/user-attachments/assets/1eae47e5-385b-4232-b3a7-ef638780fda2" />

En nuestro servidor FTP podemos modificar los mensajes que salen cuando nos loggeamos dentro del servidor y cuando cerramos sesión, así que es lo que vamos a hacer. 

Vamos a Administrador de **IIS>General_FTP>Mensajes FTP** y modificamos los mensajes de entrada y salida, para que muestren el nombre del usuario que ha iniciado sesión. 

<img width="417" height="474" alt="image" src="https://github.com/user-attachments/assets/8281597d-5953-4764-9972-178c2b9bb260" />

Y lo probamos: 

<img width="355" height="150" alt="image" src="https://github.com/user-attachments/assets/7321d809-e79e-4032-bd8b-2947e8d2c2d1" />

Otras acciones que podemos realizar son: 
- Crear carpetas 
- Movernos a diferentes carpetas 
- Renombrar ficheros 
- Y muchas más cosas 

<img width="525" height="201" alt="image" src="https://github.com/user-attachments/assets/aec7f63e-7843-44fc-851a-85b734111450" />

↓

<img width="514" height="132" alt="image" src="https://github.com/user-attachments/assets/13c07fad-0dd7-4f24-8041-fc7048c190c9" />

Además de estos métodos, también podemos acceder al servidor FTP mediante un software específico, como lo es **Filezilla**. 

Para poder conectarnos, pondremos los valores correspondientes en cada campo (Servidor, usuario/contraseña y puerto).

<img width="670" height="89" alt="image" src="https://github.com/user-attachments/assets/3e162b94-b853-425b-960a-d8a18080e9f1" />

Pero antes de conectarnos, debemos de habilitar estas 3 reglas en el Firewall.

<img width="418" height="81" alt="image" src="https://github.com/user-attachments/assets/9daf0125-9954-4107-a9f3-1dbc1c31b630" />

Una vez están habilitadas, ya podemos conectarnos. 

<img width="784" height="418" alt="image" src="https://github.com/user-attachments/assets/4ed6be69-af74-403a-95a2-4f21a10856c2" />

Desde este software podemos realizar las mismas acciones que desde el modo comando, solo que aquí todo es más visual. 
Por ejemplo, podemos descargarnos/subir un fichero.

<img width="623" height="94" alt="image" src="https://github.com/user-attachments/assets/92523678-be04-48dd-964a-f8c2d46f7cc4" />

Y realizar todas estas acciones además.

<img width="436" height="313" alt="image" src="https://github.com/user-attachments/assets/43fa38e6-b9e1-4ad3-9607-70011fd9397d" />

Desde Linux, también podemos usar interfaz gráfica, con el software **gftp**, el cual se instala con el comando: 

```bash
apt install gftp. 
```

Una vez instalado, es exactamente igual a **Filezilla**. 

<img width="732" height="306" alt="image" src="https://github.com/user-attachments/assets/a2776b66-084b-4c5b-8208-9a76e5b7f14d" />

Transferimos/subimos un archivo.

<img width="375" height="182" alt="image" src="https://github.com/user-attachments/assets/3bb16df8-b2b2-4d61-b233-0fdcc800ae9d" />

Además de poder realizar estas acciones:

<img width="202" height="300" alt="image" src="https://github.com/user-attachments/assets/d4b68c89-6952-42b0-b59c-04417ab3fe2a" />

---

## Crear un directorio virtual 

Para crear un directorio virtual dentro de nuestor sitio FTP, **hacemos clic derecho sobre nuestro sitio FTP>Agregar Directorio Virtual**

<img width="282" height="124" alt="image" src="https://github.com/user-attachments/assets/87a2fc91-fdc7-4c3e-b294-1a709948b5f5" />

Configuramos el directorio virtual, especificando su nombre y su directorio raíz.

<img width="482" height="390" alt="image" src="https://github.com/user-attachments/assets/51fefbde-9f5e-4f15-8201-1b3b53b80a1d" />

Además, configuraremos la autentificación del usuario **Zipi**.

<img width="401" height="302" alt="image" src="https://github.com/user-attachments/assets/1954bddf-3070-4878-bd7a-edf3c8bee1da" />

Si intentamos acceder a él de forma normal, veremos que este no se encuentra dentro del sitio FTP, sino que tendremos que poner **/virtualdir** en la URL para poder acceder.

<img width="369" height="329" alt="image" src="https://github.com/user-attachments/assets/8c848ba3-0a91-4c1c-bbaa-9e32189858a9" />

No se encuentra el directorio virtual

<img width="416" height="299" alt="image" src="https://github.com/user-attachments/assets/e65ffc3b-cb1d-4955-b35b-588e813d2e2a" />

Si especificamos la ruta, si podemos ver su contenido

Esto se debe a que el directorio de virtualdir, está fuera del directorio raíz de nuestro sitio FTP. 

Si creamos una carpeta en **C:\FTP\FTP1\virtual** ya podremos ver esta carpeta virtual sin tener que especificar la ruta desde la URL.

<img width="639" height="244" alt="image" src="https://github.com/user-attachments/assets/70f20315-96bb-4ff7-80e8-09034a73940a" />

↓

<img width="502" height="428" alt="image" src="https://github.com/user-attachments/assets/25df9b00-191e-4cb6-8ed8-885ac96522d8" />

---

## Crear un nuevo sitio FTP anónimo

Para terminar con esta práctica, vamos a crear un nuevo sitio, pero esta vez, tendrá autentificación anónima. 

Se llamará **FTP_Anónimo** y su directorio raíz será **C:\FTP\FTP2**.

<img width="509" height="282" alt="image" src="https://github.com/user-attachments/assets/2800ef60-47c0-48ac-92a1-ba5b57a4dbcb" />

La configuración será igual, lo único que cambia es que la autenticación  será anónima y los usuarios que se conecten, solo tendrán permisos de **Lectura**

<img width="314" height="342" alt="image" src="https://github.com/user-attachments/assets/6a90731f-8070-45c6-a96d-43256073842e" />

↓

<img width="345" height="342" alt="image" src="https://github.com/user-attachments/assets/060c96e6-38e0-4a90-91f4-929c5b45b9be" />

---

## Comprobar su funcionamiento

Ahora vamos a ver, que acciones podemos realizar dentro de nuestro nuevo sitio. 
Primero nos conectamos a través del modo comandos, con el usuario **anonymous**. 

<img width="742" height="139" alt="image" src="https://github.com/user-attachments/assets/721c1ada-f7bb-4079-82b7-05b9af3a9f98" />

Donde podemos ver el contenido de los directorios, pero no crearlos.

<img width="576" height="115" alt="image" src="https://github.com/user-attachments/assets/aa099874-4fd3-4bce-bbf2-2f1adc311222" />

↓

<img width="341" height="34" alt="image" src="https://github.com/user-attachments/assets/b539fa8e-f1ef-4218-a85c-04c3b360449a" />

Además, de que tampoco podremos subir archivos, pero si bajarlos. 

<img width="489" height="57" alt="image" src="https://github.com/user-attachments/assets/288a2f04-61ca-42b2-b479-31ea7909b113" />

↓

<img width="177" height="32" alt="image" src="https://github.com/user-attachments/assets/cde97248-1d86-41d5-abb7-650ead690e43" />

Lo mismo pasa desde interfaz gráfica. 

<img width="276" height="277" alt="image" src="https://github.com/user-attachments/assets/125d6afc-4240-4f09-b1fe-65dfa58cf489" />

Y desde el navegador web, nos deja ver el contenido de los ficheros, pero no realizar modificaciones sobre él. 

<img width="401" height="246" alt="image" src="https://github.com/user-attachments/assets/f43b87a7-78e9-4fcd-9328-6b82074e2539" />

Aquí estoy editando el documento, guardando su contenido



<img width="371" height="247" alt="image" src="https://github.com/user-attachments/assets/48447c51-30b6-475f-baa4-ae52ad6f6518" />

Aquí lo he vuelto a abrir después de editarlo y vemos que no se han guardado los cambios, debido a que no puedo modificar los documentos

Y al igual que el modo comando y desde la interfaz gráfica, no podemos subir ficheros, pero si bajarlos.

<img width="476" height="330" alt="image" src="https://github.com/user-attachments/assets/02a3d55a-4c6d-404e-acd6-6860c0221c17" />


















