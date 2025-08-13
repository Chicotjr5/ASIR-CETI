## Habilitar módulos necesarios para WebDav 

En esta práctica vamos a crear un servidor **WebDav**. 
Lo primero que haremos, será crear el directorio **/var/www/html/webdav**.

<img width="779" height="29" alt="image" src="https://github.com/user-attachments/assets/3e8c7d9a-eba1-4d62-b753-d1c9ac8d4ce0" />

Después, habilitaremos los módulos **dav** y **dav_fs**.

<img width="661" height="228" alt="image" src="https://github.com/user-attachments/assets/8bb1b63e-6d9d-49cf-ac2d-9c49172bdb5f" />

Una vez habilitados, visualizaremos en **/etc/apache2/sites-available/dav_fs.conf** la directiva **DAVLockDB**

<img width="555" height="78" alt="image" src="https://github.com/user-attachments/assets/99cca7f6-b6d0-4ed9-aabe-42844b54eaa9" />

Esta directiva define la ubicación de la BD que almacenará la información para controlar los bloqueos. 

---

## Configuración del directorio

Ahora, dentro del directorio anteriormente creado, vamos a crear un archivo.

<img width="782" height="232" alt="image" src="https://github.com/user-attachments/assets/c04c9afd-ef25-46f2-b4d3-b7273a7dba3e" />

Y con el comando **htdigest** crearemos los usuarios que se podrán conectar al servidor.

<img width="628" height="149" alt="image" src="https://github.com/user-attachments/assets/7057418f-430d-4244-8900-736a5d9e901a" />

Para que todo esto funcione, deberemos de añadir las siguientes directivas en el archivo **/etc/apache2/sites-available/000-default.conf.** 

<img width="660" height="362" alt="image" src="https://github.com/user-attachments/assets/11290e3d-f2fe-4b2b-9a85-9c91f56c8c6e" />

---

## Conexión desde un cliente WebDav 

Para probar todas estas configuraciones, vamos a conectarnos desde un cliente a través de un navegador web. 
Pondremos la dirección http://192.168.203.33/webdav y nos pedirá que nos autentifiquemos. 

<img width="588" height="341" alt="image" src="https://github.com/user-attachments/assets/27ea3ebc-db2f-43c0-ad3e-32f428a817e3" />

Metemos las credenciales correspondientes y accedemos a visualizar el contenido del directorio. 

<img width="602" height="305" alt="image" src="https://github.com/user-attachments/assets/e14164be-fc2e-4b6a-b65d-0e30a2aba7e4" />

Aunque, aquí no podemos editar el contenido del directorio, debido a que eso lo vamos a habilitar ahora.

---

## Configuración de los permisos adecuados. 

En el fichero **/etc/apache2/envvars** veremos el nombre del usuario y grupo que ejecutan **Apache**. 

<img width="736" height="337" alt="image" src="https://github.com/user-attachments/assets/2ce6b42a-bb9f-4f54-81bb-9a949ff4c010" />

Lo que tenemos que hacer ahora es modificar el usuario y grupo propietario del directorio **/var/www/html/webdav**, además de darles los permisos necesarios. 

<img width="642" height="226" alt="image" src="https://github.com/user-attachments/assets/0a8451be-d06d-46ae-bf49-b488b242cc33" />

---

## Comprobación

Para poder comprobar el correcto funcionamiento de este servidor WebDav, vamos a Windows 7 y desde la opción **Conectar a una unidad de red** pondremos lo siguiente:

<img width="310" height="141" alt="image" src="https://github.com/user-attachments/assets/0dd6eceb-afd9-4c28-a4c9-50fff47506e4" />

↓

<img width="520" height="244" alt="image" src="https://github.com/user-attachments/assets/6dbe999f-2bbb-4386-93f4-1be2ebf62bc8" />

Nos pedirá las credenciales necesarias. 

<img width="298" height="162" alt="image" src="https://github.com/user-attachments/assets/1c9021c3-faf2-4c65-86cf-b9cdc3e337dd" />

Y entramos sin ningún problema, de hecho, podemos crear un directorio nuevo

<img width="393" height="166" alt="image" src="https://github.com/user-attachments/assets/bc52cf67-c618-4c0a-b362-571d5e0e8fe3" />

Ahora, haremos lo mismo, pero en Ubuntu. 
Vamos al **explorador de archivos>Otras conexiones** y nos conectamos de la siguiente manera:

<img width="623" height="53" alt="image" src="https://github.com/user-attachments/assets/f42c1759-ab68-49ad-998a-a1a1d112a526" />

Nos pedirá las credenciales necesarias:

<img width="489" height="200" alt="image" src="https://github.com/user-attachments/assets/31899563-26d1-401c-ac9d-1706a21163f8" />

Y entramos perfectamente, de hecho, crearemos un nuevo directorio.

<img width="597" height="179" alt="image" src="https://github.com/user-attachments/assets/aa8007e3-5974-4211-810a-a85217077bb9" />

El cuál, podremos ver desde Windows 7. 

<img width="796" height="196" alt="image" src="https://github.com/user-attachments/assets/5b690a67-0513-40a0-a476-012500325501" />






































































