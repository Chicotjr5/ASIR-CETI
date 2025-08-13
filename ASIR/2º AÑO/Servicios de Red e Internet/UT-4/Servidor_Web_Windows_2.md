## Configura el servidor IIS para que pueda ejecutar páginas de servidor en ASP 

Para permitir que el servidor pueda ejecutar páginas **asp** tenemos que instalar esa característica del servidor (debido a que no la instale anteriormente). 

<img width="252" height="49" alt="image" src="https://github.com/user-attachments/assets/fd249d95-a4fd-4232-9e4f-66500abbce9d" />

Una vez instalada, veremos que tenemos el icono para poder configurarlo/realizar algunos cambios en la caraterística.

<img width="112" height="124" alt="image" src="https://github.com/user-attachments/assets/67c78852-0bc8-4043-8d93-7f5b0c5ee7c4" />

Pero no nos va a hacer falta, con tan solo instalarlo ya funciona y he aquí la prueba. 

<img width="689" height="337" alt="image" src="https://github.com/user-attachments/assets/a232ea7b-5d5e-4d41-a992-fe704b6ff8f4" />

---

## Autenticación básica: 

Ahora, vamos a crear un directorio en www3 para acceder a su contenido mediante una autentificación básica (usuario/contraseña). 
Lo primero, será crear el usuario que usaremos para autenticarnos.

<img width="527" height="312" alt="image" src="https://github.com/user-attachments/assets/98bbb4a0-c451-44e6-bfb2-5686709e6bc2" />

Y el directorio con su **index.html** correspondiente.

<img width="349" height="143" alt="image" src="https://github.com/user-attachments/assets/29b42dc7-15fb-48ba-8385-fbeace7210b6" />

Ahora, accederemos al directorio virtual **privado** y configuraremos la autenticación básica, mientras que en el sitio global, lo dejaremos por defecto. 

<img width="546" height="202" alt="image" src="https://github.com/user-attachments/assets/214a281e-f014-4986-a608-0323b3cadf7e" />

Si probamos a entrar al sitio web principal, no habrá cambiado nada, pues no hemos modificado nada.

<img width="558" height="130" alt="image" src="https://github.com/user-attachments/assets/d7f9c990-b12c-4f0a-977c-05fa48c78084" />

En cambio, si accedemos a http://www3.midominio03.com/privado nos pedirá usuario y contraseña.

<img width="576" height="341" alt="image" src="https://github.com/user-attachments/assets/5ae103eb-d20d-4700-a387-83d0794ce0de" />

↓

<img width="650" height="248" alt="image" src="https://github.com/user-attachments/assets/fcc67166-d6b1-4fc9-88b3-dc2cbbaf9366" />

---

## Carpeta segura

Y para terminar, vamos a crear un sitio para poder acceder mediante **https**. 
Creamos un directorio nuevo en **www3**.

<img width="209" height="70" alt="image" src="https://github.com/user-attachments/assets/49d9e29f-77f9-45dc-969f-c5b42d55fa7d" />

Y un nuevo certificado.

<img width="466" height="210" alt="image" src="https://github.com/user-attachments/assets/8d9eea9f-84fc-4176-a152-cef2a10599ee" />

Agregaremos un nuevo enlace, el cual tendrá como puerto el 444 y el certificado recientemente creado.

<img width="555" height="327" alt="image" src="https://github.com/user-attachments/assets/da25c7ea-1056-4648-b284-105c5ebfee8a" />

Y accederemos al enlace. 

<img width="227" height="171" alt="image" src="https://github.com/user-attachments/assets/0f5f2cb7-7f64-49bb-9ca8-487ea99ff37c" />

Pero para hacer que se use **SSL** tenemos que habilitarlo. 

<img width="449" height="192" alt="image" src="https://github.com/user-attachments/assets/832c3063-aca6-40ce-9234-6a2f4dec3f7a" />

Así que reiniciamos el servidor y volvemos a probar la conexión, con **http** y **https**

<img width="608" height="182" alt="image" src="https://github.com/user-attachments/assets/316c63ac-5fa3-44b7-ac2a-8b93a8c3ea88" />

↓

<img width="663" height="164" alt="image" src="https://github.com/user-attachments/assets/276d8f78-185f-42fa-80e4-aada4e1786d0" />
