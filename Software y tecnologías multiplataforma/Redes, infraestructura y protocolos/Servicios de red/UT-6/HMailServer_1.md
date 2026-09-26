## Plataformas de HMailServer

La versión de HMailServer 5.6.6 (la que yo me instale) está disponible en las siguientes plataformas:

- Windows Server 2016 Windows Server 2012
- Windows Server 2008
- Windows Server 2003
- Windows 10
- Windows 8
- Windows 7
- Windows Vista
- Windows XP
- MySQL 4
- MySQL 5
- SQL Server 2000-2016

---

## Configura el DNS para que funcione el servidor de correo

En esta práctica, vamos a crear un servidor de correo. 
Primero, hemos de configurar el servidor DNS, con un registro **MX** y 3 registro A, para los protocolos **SMTP**, **IMAP** y **POP3**. 


<img width="384" height="207" alt="image" src="https://github.com/user-attachments/assets/18e3d230-3238-4d2c-8d32-619aa53d0ee0" />

↓

<img width="419" height="196" alt="image" src="https://github.com/user-attachments/assets/3a33116a-1f56-4da1-b185-174aef161291" />

↓

<img width="401" height="185" alt="image" src="https://github.com/user-attachments/assets/7e4e166d-c679-4e64-ba8d-cf6c00faaa8d" />

↓

<img width="552" height="22" alt="image" src="https://github.com/user-attachments/assets/e075c710-44ab-4f34-9a46-6476585158d7" />

Ahora, con un cliente, comprobaremos que estos registros funcionan.

<img width="774" height="484" alt="image" src="https://github.com/user-attachments/assets/28d5bc53-e124-4540-847e-879febb07bcc" />

Y visualizamos como ha quedado el servidor **DNS**.

<img width="620" height="468" alt="image" src="https://github.com/user-attachments/assets/d0015db6-f563-4e2e-8af2-dc4345ddc7bd" />

---

## Instalación hMailServer

Ahora procederemos a la instalación de nuestro servidor de correo, **hMailServer**. 

<img width="528" height="214" alt="image" src="https://github.com/user-attachments/assets/e15630f4-a09a-40e4-b070-eb19f1c4b933" />

Es una instalación sencilla, en la cual dejaremos las opciones por defecto y pondremos una contraseña para poder acceder al servidor. 

<img width="409" height="202" alt="image" src="https://github.com/user-attachments/assets/f835fe16-5048-4fd5-9726-5f3e81787907" />

↓

<img width="456" height="209" alt="image" src="https://github.com/user-attachments/assets/b4196eda-7d37-4620-8819-6e2d674d50b5" />

Una vez finaliza la instalación, ya podemos acceder al servidor.

<img width="590" height="294" alt="image" src="https://github.com/user-attachments/assets/06b83b46-addb-422a-9ec3-e66d5ecad94b" />

Una vez dentro, vamos a probar que nuestro servidor DNS esta correctamente configurado. 
Nos vamos a **Utilities>MX Query** y si alponer el nombre de nuestro dominio sale su IP, es que esta correctamente configurado. 

<img width="433" height="212" alt="image" src="https://github.com/user-attachments/assets/9fbcb385-775a-4db5-814c-5ef738921934" />

Además, dentro del servidor deshabilitaremos la opción **Auto-Ban**.

<img width="457" height="254" alt="image" src="https://github.com/user-attachments/assets/8c34abe7-ef9a-42a3-9eea-822dd4086458" />

Y comprobaremos que el servidor escucha por los puertos 25,110 y 135 con un:

```bash
netstat -a -p TCP -N 25 
```

<img width="613" height="147" alt="image" src="https://github.com/user-attachments/assets/aa8a2c34-82c4-48fd-89d5-a17679168f69" />

---

## Configurar el servidor de correo 

Una vez instalado y en completo funcionamiento, vamos a configurarlo. 
Lo primero será dar de alta a nuestro dominio, estableciendo el tamaño máximo del mensaje en 5000KB. 
Para ello, vamos a **Domains>Add**. 

<img width="699" height="76" alt="image" src="https://github.com/user-attachments/assets/77654e4f-cbfb-42b8-b7b9-055343803606" />

En la pestaña **General** pondremos el nombre del dominio.

<img width="406" height="123" alt="image" src="https://github.com/user-attachments/assets/6aa46b0b-8135-4559-8369-511de169ddef" />

Y en la pestaña **Limits** pondremos el tamaño máximo del mensaje.

<img width="413" height="346" alt="image" src="https://github.com/user-attachments/assets/3263232d-da09-4c4a-a5dc-f6f13c04f203" />

Después, crearemos 3 cuentas de correo diferentes en **Domains>sri03.net>Accounts**

<img width="343" height="339" alt="image" src="https://github.com/user-attachments/assets/4e3daf13-28e0-4825-b251-9f9d8b58569b" />

↓

<img width="348" height="340" alt="image" src="https://github.com/user-attachments/assets/c1fd3e68-0027-40d0-b70c-ac21283b7397" />

↓

<img width="341" height="329" alt="image" src="https://github.com/user-attachments/assets/ee43d94b-c837-4aa9-9308-503b105489a2" />

↓

<img width="215" height="116" alt="image" src="https://github.com/user-attachments/assets/fd430229-ac93-46e5-b6d0-15a209176866" />

Además de que dejaremos los 3 protocolos habilitados:

<img width="166" height="104" alt="image" src="https://github.com/user-attachments/assets/4b1a0b89-b81b-4c34-98d7-cca9b71c490c" />

El siguiente paso es en el protocolo **SMTP** poner el siguiente mensaje de bienvenida:

<img width="427" height="293" alt="image" src="https://github.com/user-attachments/assets/9b713d75-3442-453b-b7ae-7150dc25656c" />

Y en el apartado **Delivery of e-mail** pondremos en el campo  **Local Host Name>mail.sri-03.net** 

<img width="370" height="428" alt="image" src="https://github.com/user-attachments/assets/7844e8bd-17da-41f0-a510-42a0130542c1" />

Para comprobar su funcionamiento:

```bash
telnet 192.168.203.31 25
````
en el terminal.

<img width="557" height="23" alt="image" src="https://github.com/user-attachments/assets/8812787f-1dc6-42a3-a1dc-ab1276374399" />

A lo cual, saldrá lo siguiente, corroborando su funcionamiento.

<img width="343" height="18" alt="image" src="https://github.com/user-attachments/assets/ce8708f5-2b39-4bcd-80b3-b5ab1ad358f6" />

Ahora, para finalizar, configuraremos el quién debería tener permiso para enviar correos electrónicos a través de tu servidor. 
En el apartado **Settings>Advances>Ip Ranges>My Computer** configuraremos lo siguiente: 
El nombre será **Red Local** y el rango de IP irá desde el principio de la red 192.168.200.1/22 hasta el final, permitiendo conexiones por los 3 tipos de protocolos. 

Además, permitiremos todo tipo de entregas y se requerirá autenticación SMTP en entregas Local-Local y Local to External. 

<img width="622" height="486" alt="image" src="https://github.com/user-attachments/assets/e8f50293-d932-493b-8480-fd4824dd88cf" />

Ahora, haremos lo mismo, pero en **Settings>Advances>Ip Ranges>Internet**. 
Bueno, asci lo mismo, debido a que no configuraremos el rango de IP y solo permitiremos entregas **External to Local** 

<img width="631" height="556" alt="image" src="https://github.com/user-attachments/assets/2d202d27-c200-4a1c-9fce-61a9637e5a16" />

---

## TELNET

Ahora realizaremos diferentes pruebas, para comprobar el correcto 
funcionamiento de nuestro servidor de correo. 
Primero comprobaremos con **Telnet**. 
Para iniciar un correo:

```bash
telnet 192.168.203.31 25
```

La estructura del correo será la siguiente:

```bash
MAIL FROM: 
RCPT TO: 
DATA 
.
```

Con la autenticación de SMTP quitada:

<img width="442" height="271" alt="image" src="https://github.com/user-attachments/assets/f484f2b4-e9fe-4738-84df-bc05065e247d" />


Con la autenticación de SMTP habilitada:

<img width="418" height="241" alt="image" src="https://github.com/user-attachments/assets/b90f8423-3041-4a08-b11f-d549c40ceda8" />

Si vamos a los buzones, (más adelante pondré donde se encuentran) veremos que están los mensajes recibidos/enviados de cada usuario. 

<img width="597" height="291" alt="image" src="https://github.com/user-attachments/assets/fcc4afe6-428e-47eb-b51d-4e4df9b35528" />

---

## Cliente de correo

Lo hemos probado modo texto, pero ahora vamos a probarlo con un cliente de correo de verdad, como por ejemplo **ThunderBird**. 
Registraremos 2 correos, uno con IMAP y otro con POP3

<img width="397" height="523" alt="image" src="https://github.com/user-attachments/assets/73ccfdd9-d596-4e23-b1af-6dac25fc77ac" />

↓

<img width="451" height="653" alt="image" src="https://github.com/user-attachments/assets/b5b0e0e8-4fd1-48d2-a10d-cc434cd65673" />

Una vez configurados, mandaremos diferentes correos a las otras cuentas que hemos creado.

<img width="514" height="211" alt="image" src="https://github.com/user-attachments/assets/2b384e66-21d6-4b17-9fdf-3c4bfd601b72" />

↓

<img width="730" height="117" alt="image" src="https://github.com/user-attachments/assets/f297cf04-47ad-4307-a644-d88afb7bb8e4" />

Lo mismo con el otro usuario:  

<img width="385" height="188" alt="image" src="https://github.com/user-attachments/assets/bdaedd0f-d51c-49fc-919b-90cbcc6a7ad6" />

↓

<img width="545" height="312" alt="image" src="https://github.com/user-attachments/assets/65302e0b-e765-41cf-91a8-8e896b412a3e" />

---

## Localizar los buzones de los usuarios en el servidor

Los buzones de los usuarios se encuentran en la siguiente ruta

**C:\Program Files\hMailServer\Data\sri-03.net** donde tendremos un directorio por cada usuario, donde se almacenarán los correos mandados/recibidos por parte de ese usuario

<img width="595" height="128" alt="image" src="https://github.com/user-attachments/assets/d4f39205-a96d-40c0-9d7c-9f316bf6694f" />

---

## Logs

Los LOGS de hMailServer se encuentran en la siguiente ruta:
**C:\Program Files\hMailServer\Logs** 

<img width="627" height="134" alt="image" src="https://github.com/user-attachments/assets/5a7bdaa8-2ca8-4b0e-bc93-b6b5c196086e" />

Dentro de cada LOG veremos registros de cada evento que pasa en el servidor de correo.

<img width="709" height="176" alt="image" src="https://github.com/user-attachments/assets/79587a28-9912-4215-aa0b-332672b056cb" />

---

## Crea un alias

Para crear un alias, vamos a **Domains>sri-03.net>Aliases**. 
Para crearlo, tan solo ponemos el nombre del alias y a que cuenta se redirigirán los correos.

<img width="621" height="184" alt="image" src="https://github.com/user-attachments/assets/c7d159bc-dcbb-4765-bbc4-d47c77fe1a90" />

Ahora, lo comprobaremos, mandando un correo desde zipi hasta alias, viendo como en Baggio, se recibe ese correo.

<img width="619" height="265" alt="image" src="https://github.com/user-attachments/assets/3882a02d-0cd0-421b-b68d-034c2b37159f" />

↓

<img width="619" height="124" alt="image" src="https://github.com/user-attachments/assets/7f33e618-b8e7-4299-a5fd-489893caee65" />

---

## Cierra el Firewall

Para hacer que funcione, tendremos que crear una regla de entrada, para los puertos 25, 110, 135 y 587. 

<img width="441" height="233" alt="image" src="https://github.com/user-attachments/assets/3105eecf-a2d0-4b30-bfd1-cf241b9a6525" />

↓

<img width="569" height="102" alt="image" src="https://github.com/user-attachments/assets/66d85cb2-aa12-4381-8a2d-de25a14f2b98" />

Y mandaremos un correo para comprobar su funcionamiento.

<img width="353" height="177" alt="image" src="https://github.com/user-attachments/assets/c762bcbe-e44a-420f-acaf-9ede052da4d8" />

↓

<img width="464" height="274" alt="image" src="https://github.com/user-attachments/assets/6b283664-e5fc-46b7-b364-9039967e4b71" />




