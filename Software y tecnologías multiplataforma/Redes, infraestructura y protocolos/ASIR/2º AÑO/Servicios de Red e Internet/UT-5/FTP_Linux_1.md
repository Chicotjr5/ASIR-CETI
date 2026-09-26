## Instalación y configuración de proftpd en Linux 

En esta práctica, vamos a instalar un servidor FTP en Ubuntu Server. 
Siendo más específico, el servidor proftpd. 
Para instalarlo:

<img width="391" height="33" alt="image" src="https://github.com/user-attachments/assets/b5d56572-c755-4a8a-bcb0-0a0254eaea1e" />

Como podemos ver, al ser instalado, nos crea los siguientes usuarios:

<img width="602" height="124" alt="image" src="https://github.com/user-attachments/assets/c8c1c507-1670-4756-83b2-65b1bec3ca13" />

---

## Configura el servidor DNS

El siguiente aso, es que nos podamos conectar a través de ftp.sri-03.net 
Para ello, vamos a nuestro servidor DNS y creamos el siguiente registro.

<img width="533" height="237" alt="image" src="https://github.com/user-attachments/assets/9d9b6fb7-95ef-448c-b3bf-8fdad597a27b" />

---

## Cambiar el nombre del servidor FTP.

Pasaremos a configurar el servidor FTP. 
Este servidor es muy similar a Apache2 en cuanto a sus archivos, debido a que el archivo de configuración principal es **/etc/proftpd/proftpd.conf**.

<img width="720" height="56" alt="image" src="https://github.com/user-attachments/assets/024889e6-9cdc-40ca-9b9b-478f2e3b5a52" />

Dentro de este fichero, vamos a hacer un par de cambios: 
El primero al nombre del servidor: 

<img width="408" height="34" alt="image" src="https://github.com/user-attachments/assets/92620abd-811e-4a2e-a606-c8f733f85faa" />

Y que, al acceder al sitio, nos salgan mensajes de bienvenida personalizados.

<img width="292" height="36" alt="image" src="https://github.com/user-attachments/assets/07083462-a52e-42ba-a8cf-7372a9fd3641" />

Si probamos a conectarnos con un usuario anónimo, no podremos, puesto que aún no está configurado, dando como resultado, que aparezca el mensaje de **AccessDenyMsg**.

<img width="820" height="53" alt="image" src="https://github.com/user-attachments/assets/3df105a7-afed-4c27-a5d8-b76061378507" />

↓

<img width="309" height="44" alt="image" src="https://github.com/user-attachments/assets/bdc966a5-0ccb-4fbd-9f3f-b83e22a5ae65" />

Si lo intentamos con el usuario operador, si podremos y nos saldrá el otro mensaje.

<img width="854" height="66" alt="image" src="https://github.com/user-attachments/assets/41570b72-e174-4e62-9c56-d4af8f16d0eb" />

↓

<img width="438" height="115" alt="image" src="https://github.com/user-attachments/assets/a066763b-bc07-449c-b1dc-939f2d5808f4" />

Al conectarnos podemos acceder a cualquier parte del servidor, cosa que es muy peligrosa y se debería de corregir 

<img width="861" height="156" alt="image" src="https://github.com/user-attachments/assets/536b20ca-1028-4929-b62d-d1b4856787cf" />

---

## Crear usuarios

Ahora, pasaremos a crear los usuarios user_ftpX 
Los usuarios **user_ftp1 y 2** no tendrán una shell válida, por lo que no podrán acceder al servidor. 
Mientras que el usuario **user_ftp3** sí.

<img width="782" height="130" alt="image" src="https://github.com/user-attachments/assets/2d646f67-bcac-4dca-a52a-8e0e03cb5b8e" />

Al intentar iniciar sesión con los usuarios **user_ftp1** y **2**, se bugea el servidor. 

<img width="211" height="45" alt="image" src="https://github.com/user-attachments/assets/f43907de-6db6-4b6d-9c44-8c9eea90258b" />

↓

<img width="157" height="45" alt="image" src="https://github.com/user-attachments/assets/538417e9-fd5c-4ba7-b15d-70ce01dc3e4b" />

En cambio, **user_ftp3** si puede acceder. 

<img width="172" height="30" alt="image" src="https://github.com/user-attachments/assets/a0cbc72e-c3ea-4250-a01e-b0a2a4d0065a" />

---

## Limitar acceso

Proseguiremos, haciendo que los usuarios user_ftp1 y 2 puedan acceder al servidor, pero el user_ftp3 no. 
Para ello, añadiremos el siguiente texto en el archivo **/etc/proftpd/proftpd.conf**. 

<img width="340" height="111" alt="image" src="https://github.com/user-attachments/assets/1bf1ffe9-e4cf-4b4c-82f6-cd55db8792d0" />

Ahora podemos acceder con todos los usuarios, menos con **user_ftp3**.

<img width="680" height="161" alt="image" src="https://github.com/user-attachments/assets/a68bffd0-f84f-452d-a39b-2b42bb92fccd" />

Pero antes de esto, probamos que solo podría acceder **ftp_user3** al servidor.

<img width="428" height="141" alt="image" src="https://github.com/user-attachments/assets/675b61ef-fb13-4745-b42d-a54c9ede90fb" />

↓

<img width="398" height="135" alt="image" src="https://github.com/user-attachments/assets/582ff4a4-c3c4-40d1-a802-2d720ed4c308" />

↓

<img width="530" height="248" alt="image" src="https://github.com/user-attachments/assets/d6645ef2-1ff7-4500-8f26-754fc4e48f10" />

---

## Probar acceso

Ahora, probamos después de aplicar la configuración.

<img width="811" height="195" alt="image" src="https://github.com/user-attachments/assets/dfc05c3a-0332-471a-8a6e-215e8f4d5340" />

Y con estos usuarios, podemos acceder a cualquier parte del servidor. 
En cambio, ya no podemos entrar con el usuario **user_ftp3**. 

<img width="304" height="282" alt="image" src="https://github.com/user-attachments/assets/20407fb4-f19b-47a3-b123-ef59eb30e210" />

↓

<img width="326" height="291" alt="image" src="https://github.com/user-attachments/assets/127a76f1-2e24-41be-974e-ccbe8f60ebd4" />

Y podemos subir ficheros:

<img width="480" height="24" alt="image" src="https://github.com/user-attachments/assets/b0089f29-168e-4c8d-9483-14c41feda27b" />

↓

<img width="562" height="105" alt="image" src="https://github.com/user-attachments/assets/56fef9ef-66e3-45e6-bae1-0a8fdc3eab46" />

---

## FTP modo texto.

Procederemos a conectarnos en modo texto y crear un directorio. 

<img width="488" height="187" alt="image" src="https://github.com/user-attachments/assets/cc37576d-b0ca-4da0-a404-07ae7f485ed4" />

En el servidor, comprobaremos sus permisos: 

<img width="560" height="141" alt="image" src="https://github.com/user-attachments/assets/f0fb6c88-2b25-4c80-8aa8-326f835c9704" />

Estos permisos están bien, debido a que en el archivo de configuración FTP tenemos como máscara de permisos 022 para directorios y archivos.

<img width="122" height="23" alt="image" src="https://github.com/user-attachments/assets/5e2fd26d-1cc2-4aa3-9f19-66bc92fd2a38" />

---

## Visualizar fichero de configuración 

<img width="790" height="585" alt="image" src="https://github.com/user-attachments/assets/ddd453b6-103c-4702-ad47-ca4cddedc18a" />

↓

<img width="635" height="92" alt="image" src="https://github.com/user-attachments/assets/ec0491b7-ecdf-4409-bac4-bf80962ede3b" />
























































