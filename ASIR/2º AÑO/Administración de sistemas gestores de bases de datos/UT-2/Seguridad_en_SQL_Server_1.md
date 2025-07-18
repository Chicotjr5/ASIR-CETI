## Crear BD compras

Lo primero que haremos en esta práctica, es crear una nueva BD, con el script **cr_compras2019.sql** 

<img width="309" height="474" alt="image" src="https://github.com/user-attachments/assets/2a6f1d29-bd20-4bdd-af85-51540ae330ab" />

## Pregunta 2

### Crear nuevo inicio de sesión 

Para crear un nuevo inicio se sesión, vamos a **Seguridad>Inicio de sesión>Nuevo inicio de sesión**. 

<img width="296" height="53" alt="image" src="https://github.com/user-attachments/assets/2ce82d31-4a30-4a63-ad80-a616e37cd2f6" />

Este nuevo inicio de sesión tendrá como BD por defecto compras y tendrá todos los roles del sistema (menos, por obvias razones, los que son para denegar permisos). 
El script quedaría de la siguiente forma 


<img width="565" height="317" alt="image" src="https://github.com/user-attachments/assets/3203896e-24f2-4af1-bae1-bbbfd39c5863" />

---

## Crear usuario admin

El siguiente paso es crear un nuevo usuario, para ello vamos a **Seguridad>Usuarios>Nuevo Usuario**. 

<img width="254" height="60" alt="image" src="https://github.com/user-attachments/assets/56704600-e24a-4070-b205-b1acc2ee157b" />

El script quedaría de la siguiente forma:


<img width="341" height="307" alt="image" src="https://github.com/user-attachments/assets/505758f6-ff2d-4d86-806d-980032b776e0" />

---

## Conectar con el usuario admin

Procederemos a conectarnos con el usuario, para ver si podemos hacer **SELECT, INSERT, DELETE**.

<img width="95" height="83" alt="image" src="https://github.com/user-attachments/assets/c0a2b70c-6319-4a7d-a531-6e132ebf3e19" />

Como podemos ver, podemos insertar, ver y eliminar los datos de las tablas de la BD compras.


<img width="439" height="356" alt="image" src="https://github.com/user-attachments/assets/d5cabf4d-b406-4402-9005-fbaffe741635" />

↓

<img width="373" height="356" alt="image" src="https://github.com/user-attachments/assets/995f3bbc-1e09-4d27-a73b-3f4838a3cd25" />

---

### Crear BD BD01 y BD02

Crearemos las BD y dentro de ellas, ejecutaremos los scripts correspondientes, para añadir las tablas y la información.


<img width="238" height="298" alt="image" src="https://github.com/user-attachments/assets/536f79f8-6ae4-45a7-be8f-ba484b059ff9" />

---

### Crear tablas

Y dentro de BD01 creamos una nueva tabla con 3 atributos


<img width="349" height="179" alt="image" src="https://github.com/user-attachments/assets/04a7163e-b512-4535-8c62-48a26dde96fc" />

---

## Pregunta 3

### Crear nuevo inicio de sesión

Ahora, procederemos a crear un nuevo inicio de sesión, con la BD predeterminada BD01 y con 0 privilegios. 

**De forma gráfica**

<img width="582" height="572" alt="image" src="https://github.com/user-attachments/assets/0af58ef7-456e-4242-9ccf-c5b590701646" />

**Con comandos**

<img width="827" height="75" alt="image" src="https://github.com/user-attachments/assets/55a2cd40-cf4b-4c0d-a2ff-42d8d628991a" />

---

### Probar conexión

Si intentamos conectarnos con este nuevo login, no nos dejará, puesto no tiene ningún permiso de nada. 

<img width="713" height="254" alt="image" src="https://github.com/user-attachments/assets/8ca7f3a2-ce06-41b3-a282-d4e8a4c1fbce" />

Como no se conecta, deberemos de asignar a la BD01 el usuario1 con el login usuario1.

<img width="540" height="335" alt="image" src="https://github.com/user-attachments/assets/9c64df66-dc18-474f-9c9a-da722b8b2ae1" />

Ahora, si que podemos conectarnos, pero solo podemos visualizar la BD01. 

<img width="371" height="255" alt="image" src="https://github.com/user-attachments/assets/197ebf4a-a11c-4053-8a49-006ef931a2ee" />

---

### Asignar permisos

Que acceder a la BD está bien, pero ¿no sería mejor si pudiera leer y editar las tablas? 
Así que vamos a darle permisos para ver las tablas y realizar modificaciones sobre las mismas. 
Así que tenemos que agregar los siguientes roles: 

<img width="123" height="43" alt="image" src="https://github.com/user-attachments/assets/f77c343e-61c7-4d4a-bd72-95cf7eab2a00" />

Y ya podemos visualizar las tablas, además de poder realizar modificaciones sobre las mismas. 

<img width="311" height="316" alt="image" src="https://github.com/user-attachments/assets/003326d1-4130-4566-a014-b9d13ee9fc42" />

---

### Comprobar si puede acceder a ambas BD

A la BD BD02 no podemos acceder, pues no tenemos permisos. 

<img width="712" height="142" alt="image" src="https://github.com/user-attachments/assets/ff2abf0e-71f6-4482-b501-486506407144" />

Pero a la BD01 si.

<img width="518" height="159" alt="image" src="https://github.com/user-attachments/assets/a75f1814-65b1-4e0b-917e-b2e5e8978fb7" />





















































































