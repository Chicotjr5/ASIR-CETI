## Comprobamos primero si existe el modulo auth_basic y si está activo (enable) con solo mirar si aparece en la ruta /etc/apache2/mods-enabled.

En esta práctica, vamos a crear un acceso autenticado, accediendo a un directorio privado en nuestro servidor. 
Lo haremos dentro del dominio virtual **www2.midominio03.com** donde crearemos 2 directorios: **privado**  y **privado2**. 
Pero antes de hacer nada, tenemos que comprobar que el módulo **auth_basic** está activo. 

 ```bash
ls /etc/apache2/mods-enabled. 
```

<img width="665" height="94" alt="image" src="https://github.com/user-attachments/assets/1d99f393-d237-48b5-aacd-a3a174e94933" />

---

## Crear el directorio denominado privado que aloje sus páginas ocultas en el servidor web.

Una vez comprobado que el módulo está activo, procedemos a crear el directorio donde se encontrarán las páginas a las que accederemos con autentificación. 

<img width="663" height="40" alt="image" src="https://github.com/user-attachments/assets/1b72322c-90f3-42b8-9bc2-ed9dd2b12c3e" />

---

## Crear el fichero de usuarios válidos creando los usuarios angel/angel1, luis/luis1, pedro/pedro1

El siguiente paso, es crear los usuarios y el fichero donde los almacenaremos junto con su contraseña.

<img width="581" height="231" alt="image" src="https://github.com/user-attachments/assets/b52bdc33-55ea-496a-85c6-4657842f0514" />

---

## Visualizar el contenido del fichero de usuarios, ¿cómo están las password?. 

Para ver el contenido del fichero, tan solo tenemos que ejecutar un **cat** o un **nano**. 
Observamos que las contraseñas se encuentran cifradas.

<img width="532" height="95" alt="image" src="https://github.com/user-attachments/assets/6e43e2ec-99a0-474d-b3ff-93007ba3cd2c" />

---

## Activar la protección en el fichero de configuración con autenticación básica

Para activar la autenticación básica en el directorio privado que hemos creado anteriormente, tenemos que crear un bloque Directory en el archivo **/etc/apache2/sitesavailable/www2.conf**. 

Dentro de este bloque, pondremos las siguientes directivas: 

**AuthName** – Para darle un nombre al dominio de autenticación 
**AuthType** – Para especificar el tipo de autenticación. 
**AuthUserFile** – Para especificar cual es el fichero donde se encuentran los usuarios y contraseñas. 
**Require** – Que usuarios dentro de ese fichero, pueden acceder al dominio privado.

<img width="576" height="328" alt="image" src="https://github.com/user-attachments/assets/37c14493-e0e4-43c9-aa39-5ecdcdcdc2e5" />

---

## Comprobar la configuración actual de apache

Usaremos el comando

```bash
apachectl configtest
```

<img width="792" height="63" alt="image" src="https://github.com/user-attachments/assets/6da65e1e-93e4-476a-95b7-d91f67bfb4a1" />

---

## Cargar la configuración del servidor web

Reiniciaremos el servidor apache. 

<img width="816" height="28" alt="image" src="https://github.com/user-attachments/assets/5a337428-61a9-4fc2-a9b6-d094eed37bf7" />

---

## Comprobar el acceso desde el navegador

Para poder comprobar el funcionamiento de este dominio con autentificación, vamos a crear un **index.html** en **/var/www/www2/privado** para poder acceder a él.

<img width="642" height="176" alt="image" src="https://github.com/user-attachments/assets/63b118be-3135-4449-8d2f-28dfe68cceeb" />

Y para conectarnos, usaremos **Lynx**.

<img width="730" height="28" alt="image" src="https://github.com/user-attachments/assets/f9acbf84-b416-4973-b8fc-81098adb5ae5" />

Vemos que nos pide un usuario.

<img width="643" height="52" alt="image" src="https://github.com/user-attachments/assets/237bf102-9d0d-4651-8f35-f68a6337d2c1" />

Y una contraseña.

<img width="172" height="43" alt="image" src="https://github.com/user-attachments/assets/8d603261-77d2-47f8-85b1-5d1af5ac7b5b" />

Y podemos acceder de forma correcta.

<img width="773" height="62" alt="image" src="https://github.com/user-attachments/assets/cd30f1fb-0af7-4d98-aa80-91322ae955af" />

---

## Añadir un nuevo usuario y comprobar el acceso a la carpeta privado.

Para añadir un nuevo usuario, lo haremos de la misma forma que hicimos anteriormente, usando el comando **htpasswd**.

<img width="734" height="130" alt="image" src="https://github.com/user-attachments/assets/f524c321-6043-476f-b373-01b2a79c33e7" />

Y probaremos su funcionamiento.

<img width="713" height="28" alt="image" src="https://github.com/user-attachments/assets/e236c9aa-9d0d-403b-acda-72817bb918ff" />

↓

<img width="165" height="33" alt="image" src="https://github.com/user-attachments/assets/f216af29-c8d7-4c1c-ac23-ee3ac708cf32" />

↓

<img width="664" height="62" alt="image" src="https://github.com/user-attachments/assets/e9b20bc2-a2bf-4553-b05b-267cb84d874b" />

---

## Crearemos en la web una zona privado2 y cambiaremos el fichero de configuración que permite autenticación con ficheros .htaccess  

Ahora, vamos a probar a hacer lo mismo, pero con archivos **.htaccess**. 
Aunque para poder permitir el uso de estos ficheros, tenemos que crear un nuevo bloque **Directory** con la directiva **AllowOverride**

<img width="325" height="63" alt="image" src="https://github.com/user-attachments/assets/790a4dcb-54a6-4863-8529-8da6bc8f318f" />

Ahora, crearemos un archivo .**htaccess** en **/var/www/www2/privado2** que contendrá las mismas directivas que en el caso anterior. 

<img width="664" height="107" alt="image" src="https://github.com/user-attachments/assets/44838e1e-866b-4f21-9b11-435629727101" />

Para poder comprobar su funcionamiento, crearemos de nuevo un archivo **index.html**.

<img width="664" height="173" alt="image" src="https://github.com/user-attachments/assets/07000698-7a25-45e6-a83a-b5cde757a971" />

Accederemos al sitio con **Lynx**.

<img width="664" height="24" alt="image" src="https://github.com/user-attachments/assets/a0a04e7a-0c9a-4eb0-b7e6-ea2d9f7d0da3" />

Nos pide usuario y contraseña.

<img width="662" height="23" alt="image" src="https://github.com/user-attachments/assets/93a913c6-c29f-4d52-8ce7-eb2bf8365ce5" />

↓

<img width="147" height="33" alt="image" src="https://github.com/user-attachments/assets/f859bbf8-40b5-446b-8536-b2ae14bfe270" />

Y entramos perfectamente. 

<img width="664" height="42" alt="image" src="https://github.com/user-attachments/assets/b3d3d5ce-a17f-4152-8cba-26d72eed302d" />

---

## Si en privado2 no quieres que se tengan en cuenta desde ahora los ficheros .htaccess ¿qué debes hacer (sin borrarlo)? 

Esto es tan fácil, como en el archivo **/etc/apache2/sites-available/www2.conf**, en el bloque que acabamos de crear, tenemos que modificar el valos de la directiva **AllowOverride** y poner **None**.

<img width="324" height="62" alt="image" src="https://github.com/user-attachments/assets/dc78bae4-a4ab-4d37-8e1f-56039098e595" />

Ahora, nos podremos conectar sin ningún tipo de autentificación.

<img width="787" height="41" alt="image" src="https://github.com/user-attachments/assets/3d777e4a-6c10-4380-91a0-dd7db7703456" />

---

## En privado permitir solo el acceso a la propia IP de la máquina y al cliente XP. Comprobar que a éstas lo permite y desde otras no 

Ahora, tenemos que modificar el bloque **Directory** de **/var/www/www2/privado** para denegar el acceso a todos los equipos, menos para el servidor y el W7.

<img width="397" height="227" alt="image" src="https://github.com/user-attachments/assets/c9edf94a-fd4f-4316-9194-85831f4ca685" />

Y probamos su funcionamiento. 

<img width="663" height="48" alt="image" src="https://github.com/user-attachments/assets/bc64b2cc-3bc9-4d38-a2cd-2c110b9213c0" />

↓

<img width="297" height="324" alt="image" src="https://github.com/user-attachments/assets/ffee0400-e8e7-4998-bd50-9935908f507b" />

↓

<img width="401" height="183" alt="image" src="https://github.com/user-attachments/assets/362dd51c-00ee-4264-9fe4-3d18a4a07981" />

↓

<img width="401" height="128" alt="image" src="https://github.com/user-attachments/assets/5b6f0097-ae67-4d0d-8f2d-0a99429a7c7a" />

---

## En /var/www/www2/doc crear los ficheros índice.htm y 1.htm con tu nombre. Crear las directivas correspondientes para que si la carpeta no tiene fichero índice (en este caso, indice.htm) no se muestren sus ficheros y permitir el acceso a todas las máquinas

Crearemos 2 archivos nuevos **index.htm** y **1.htm.**

<img width="448" height="139" alt="image" src="https://github.com/user-attachments/assets/5679a512-02a7-40fb-85ec-90c7c690a397" />

↓

<img width="397" height="130" alt="image" src="https://github.com/user-attachments/assets/16bb1724-7c08-4e39-bc93-71b9c3287c96" />

Y dentro del fichero **/etc/apache2/sites-available/www2.conf** crearemos un nuevo bloque **Directory** donde pondremos que todos los equipos tienen acceso y que si no esta el fichero índice, no se muestren los directorios.

<img width="291" height="80" alt="image" src="https://github.com/user-attachments/assets/e51d03b8-dc4b-4fa9-a378-b48110de2183" />

Y probaremos su funcionamiento. 

<img width="610" height="101" alt="image" src="https://github.com/user-attachments/assets/c3190b5f-a50f-4c0d-95d5-d5c8fca11e6a" />

↓

<img width="609" height="195" alt="image" src="https://github.com/user-attachments/assets/a08c4fa1-678b-4577-abee-66b697417862" />
































