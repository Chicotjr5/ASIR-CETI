## Diseña la siguiente estructura de dominios 

<img width="535" height="713" alt="image" src="https://github.com/user-attachments/assets/86d2f102-fad7-4eda-b5d4-2302906986fa" />

---

## Crea un dominio con un controlador de dominio

En esta práctica, vamos a realizar varias instalaciones de Active Directory, para ver todas 
las formas de configuración que tiene. 
Pero antes de instalar nada, vamos a configurar las máquinas virtuales. 
Tendremos 2 servidores y un cliente, los cuales estarán dentro de la misma red interna. 
Comprobamos que podemos hacer ping entre las máquinas. 

<img width="792" height="195" alt="image" src="https://github.com/user-attachments/assets/68b5e92c-9542-4a2b-a678-afbc09e571ea" />

De momento, dejamos aparcado el Wserver 2012, el cual usaremos más adelante. 
Ahora le toca el turno a Wserver2016. 
Además de la IP, tenemos que cambiar el nombre de equipo y añadirlo a un dominio. 
Pero no tenemos un dominio aún, así que vamos a crearlo.

<img width="699" height="227" alt="image" src="https://github.com/user-attachments/assets/5b437ea5-2789-43ce-b7db-a873f188f739" />

Para crear un nuevo dominio, tenemos que instalar las características de Active Directory. 
Vamos a **Administrador del servidor>Agregar roles o características.** 
Para instalarlo, marcamos la opción de **Servicios de dominio de Active Directory**.

<img width="340" height="257" alt="image" src="https://github.com/user-attachments/assets/0e49491e-cde9-4450-ad08-bd1b24588703" />

Y una vez se termina de instalar, promoveremos el servidor a controlador de dominio.

<img width="587" height="198" alt="image" src="https://github.com/user-attachments/assets/694e5f9f-5e9e-4b21-894f-47bbb344cf98" />

Esto iniciará un asistente que nos ayudará con la configuración. 
Lo primero que haremos, será agregar un nuevo bosque.

<img width="584" height="239" alt="image" src="https://github.com/user-attachments/assets/9dae02e5-f3f5-4ab5-a0c4-542f90fc17be" />

Y haremos que el servidor tenga un nivel funcional de Windows Server 2016 y haga de Catálogo global y Servidor DNS.

<img width="519" height="274" alt="image" src="https://github.com/user-attachments/assets/ec32e856-02cb-4e18-be1a-474428245956" />

Pero nos dará un error con el DNS, el cual ignoraremos épicamente.

<img width="476" height="231" alt="image" src="https://github.com/user-attachments/assets/3f12dd84-f4b9-49c7-aa5d-a165bd4f2ec9" />

El nombre **NETBIOS** será el siguiente:

<img width="490" height="86" alt="image" src="https://github.com/user-attachments/assets/a34f9376-221d-4b26-b1d5-be34251ef5ed" />

Y finalizamos la configuración, solo queda aplicarla.

<img width="498" height="302" alt="image" src="https://github.com/user-attachments/assets/ced0e732-eb28-4b8d-bb68-7ff3464b4ff7" />

↓

<img width="494" height="300" alt="image" src="https://github.com/user-attachments/assets/4937d736-dca6-41a6-87cb-c5f2785f2b3e" />

Al instalarse, se reiniciará el equipo y al iniciar sesión, aparecerá el nombre NETBIOS y el nombre de nuestro usuario. 

<img width="432" height="178" alt="image" src="https://github.com/user-attachments/assets/7ae9a1f7-6108-455a-a3e9-e0db93ff01e8" />

Ahora, vamos a unir un equipo al dominio. 
Lo primero que vamos a hacer, es cambiar el nombre del equipo. 

<img width="293" height="180" alt="image" src="https://github.com/user-attachments/assets/a3a145da-250c-4af1-800a-a0e92d5fa44b" />

Y cambiaremos la configuración de red, para que el servidor sea el servidor DNS del cliente. 

<img width="264" height="163" alt="image" src="https://github.com/user-attachments/assets/9fb592dd-1162-4342-ba50-595be25491d1" />

Una vez configurado, ponemos que el equipo sea miembro del dominio **hrt.mad.es.**

<img width="473" height="402" alt="image" src="https://github.com/user-attachments/assets/648300eb-d0d8-48b0-be2d-b33b32b4ab21" />

Crea un dominio con un controlador de dominio 
Pero, antes de darle a Aceptar tenemos que hacer una cosa en el dominio, que es añadir un usuario. 
Vamos a **Herramientas>Centro de administración de AC/DC**

<img width="338" height="138" alt="image" src="https://github.com/user-attachments/assets/8f411cdb-4232-46c0-ad02-7f13fc09757a" />

Una vez dentro, crearemos un nuevo usuario: 

<img width="387" height="110" alt="image" src="https://github.com/user-attachments/assets/1d85a07b-b505-4054-b262-8870b6697388" />

↓

<img width="751" height="252" alt="image" src="https://github.com/user-attachments/assets/c3dbf5ee-303c-4c50-8865-067b2a18eb43" />

Ahora, ya podemos darle al botón **Aceptar** y observamos, que se unió al dominio.

Se reinicia el cliente y al iniciar sesión, lo hacemos como el **usuario1** del dominio **hrt.mad.es**. 

<img width="452" height="220" alt="image" src="https://github.com/user-attachments/assets/d78aedb0-8687-4661-b05f-38c996118fd6" />

De hecho, si vamos a **Usuarios y grupos de ACDC** en el servidor, veremos que se ha unido el equipo **Cliente033** 

<img width="528" height="185" alt="image" src="https://github.com/user-attachments/assets/72787aa2-4e15-4fed-b083-07b334121def" />

---

## Un dominio con dos controladores de dominio 

Ahora, vamos a añadir un nuevo controlador de dominio con un Windows Server 2012 R2. 
Me salto la instalación de las características de dominio de acdc puesto que es lo mismo XD. 
Al instalarse, promocionaremos al servidor como un controlador de dominio, pero esta vez será de un dominio existente. 

Donde tendremos que proporcionar las credenciales del Administrador de Windows server 2016. 

<img width="445" height="229" alt="image" src="https://github.com/user-attachments/assets/8e183c7e-385b-46c8-8826-d85a8f0083f6" />

↓

<img width="597" height="263" alt="image" src="https://github.com/user-attachments/assets/dcc3196a-dfa5-4dea-b089-05d2983cf711" />

En el siguiente paso, especificaremos que este controlador trabaje como catálogo global.

<img width="497" height="245" alt="image" src="https://github.com/user-attachments/assets/d7db6860-69a5-4922-80c8-27636326c04e" />

Nos sale el mismo error de siempre del DNS, el cual ignoramos como ella me ignorara el 14 de Febrero.

<img width="551" height="272" alt="image" src="https://github.com/user-attachments/assets/2c44e52c-1f84-4b78-9742-a891d64b848d" />

Replicaremos la configuración del servidor desde el WindowsServer2016. 

<img width="594" height="159" alt="image" src="https://github.com/user-attachments/assets/f4ffb484-dca4-4d95-abcd-52b28eb24c0a" />

Para ir acabando, repasaremos las opciones.

<img width="565" height="332" alt="image" src="https://github.com/user-attachments/assets/789cf305-d7a1-4e86-8957-96457324a656" />

Y se comprobaran los requisitos previos a hacer la promoción de controlador de dominio. 

<img width="627" height="383" alt="image" src="https://github.com/user-attachments/assets/d34814e4-216f-45bc-ba9d-ba84a401bd81" />

↓

Ya tenemos el 2º controlador configurado, así que vamos a comprobar un par de cosas. 
La 1º, es en **Usuarios y equipos de ACDC>Domain Controllers**

<img width="746" height="147" alt="image" src="https://github.com/user-attachments/assets/0ddc45e0-fde8-4c69-9231-153c82612859" />

Otra cosa a probar, es que podemos crear un usuario en WServer 2012 

<img width="328" height="275" alt="image" src="https://github.com/user-attachments/assets/ed604f71-f301-41ef-8040-b64d5c57a6bd" />

Ahora vamos a despromocionar el dominio, en **Administrar>Quitar roles y funciones.**

<img width="187" height="83" alt="image" src="https://github.com/user-attachments/assets/466345c4-8ebf-4a0a-b36a-144e13d33c66" />

Pero para poder quitar el rol de servicio de dominio de ACDC, antes hay que disminuir 
el nivel del controlador del dominio, que será lo que hagamos 

<img width="502" height="349" alt="image" src="https://github.com/user-attachments/assets/62595c03-223b-4bc7-aaa9-605f747f210a" />

Pero para poder quitar el rol de servicio de dominio de ACDC, antes hay que disminuir el nivel del controlador del dominio, que será lo que hagamos.

<img width="502" height="349" alt="image" src="https://github.com/user-attachments/assets/6c4094e0-1cd8-476a-8d22-c4db1d358a12" />

Para disminuir el nivel del domino, hay que hacer una configuración parecida a la de la promoción, pero “al revés” 
aquí, hay que proporcionar las credenciales del Administrador del dominio como medida de seguridad. 

<img width="585" height="176" alt="image" src="https://github.com/user-attachments/assets/5d7eda8a-8c60-4326-baf8-114cc5a2fa0f" />

Después de un par de pantallas, en la que solo nos piden una contraseña, llegamos a la parte de revisar las opciones.

<img width="555" height="366" alt="image" src="https://github.com/user-attachments/assets/3fe538f3-8a45-4c37-b3d0-5e3edb0652d6" />

Damos a **Disminuir nivel** y listo, servidor despromocionado.

<img width="524" height="48" alt="image" src="https://github.com/user-attachments/assets/021fac23-6312-40a0-89ea-26850b5380d1" />

Una vez despromocionado, veremos que ya no sale en **Domain Controllers:**

<img width="594" height="109" alt="image" src="https://github.com/user-attachments/assets/bcf59c6d-40e5-4e16-b48f-38850f5d2838" />

Si no, que se ha quedado como Equipo normal, por lo que lo eliminaremos.

<img width="543" height="115" alt="image" src="https://github.com/user-attachments/assets/0d903e0d-c87e-4b16-8797-2b38cf320479" />

---

## Dos dominios en el mismo árbol 

Ahora, vamos a tener 2 dominios en el mismo árbol. 
El servidor WS2012 será un subdominio de **hrt.mad.es.** 
Este nuevo dominio secundario, se llamará **pr (Pedro de la Rosa)**.

<img width="488" height="275" alt="image" src="https://github.com/user-attachments/assets/d5c5ed57-5cda-439f-979b-6a3e2bda7c10" />

Y será catálogo global 

<img width="428" height="279" alt="image" src="https://github.com/user-attachments/assets/612da2c3-0c1e-4567-a356-18bbdc27e34d" />

Como vemos, el nombre **NETBIOS** será el siguiente:

<img width="482" height="65" alt="image" src="https://github.com/user-attachments/assets/d6236d38-a140-46f7-9e4d-a3d78671ca56" />

Después de un par de pantallas sin importancia, ya tenemos nuestro nuevo controlador de dominio.

<img width="462" height="40" alt="image" src="https://github.com/user-attachments/assets/cea93ce6-e4a5-4351-87f0-f794278d7606" />

Una vez reiniciamos, si vamos a Wserver 2016, veremos que tenemos el subdominio.

<img width="253" height="175" alt="image" src="https://github.com/user-attachments/assets/45e6b87f-88c3-43fe-93df-44601459c350" />

Para terminar con este escenario, degradaremos el 2º controlador de dominio.

<img width="258" height="32" alt="image" src="https://github.com/user-attachments/assets/ec278b7d-c2cd-40c7-b140-77d17416351c" />

Pero esta vez, nos salen las siguientes opciones:

<img width="596" height="202" alt="image" src="https://github.com/user-attachments/assets/64bace78-7ca3-4e06-810f-37b5f3cb3afd" />

Nosotros marcaremos la 1º opción, aunque la 2º tambien sería válida, debido a que del dominio pr.hrt.mad.es, este servidor es su último controlador de dominio

<img width="595" height="138" alt="image" src="https://github.com/user-attachments/assets/7ca72968-efde-4ba8-b0a5-eab2c4872b6e" />

Después de un par de pantallas sin mucha importancia, se degrada el dominio.

---

## Dos dominios en dos árboles diferentes del mismo bosque

Pasaremos al último punto, donde tendremos 2 dominios, de árboles distintos, pero que formen parte del mismo bosque. 

Antes de nada, hay que asegurarse que las IP están bien configuradas y ambos equipos van a poder resolver el nombre de cada dominio. 

<img width="411" height="236" alt="image" src="https://github.com/user-attachments/assets/f3f7bebc-261a-49f9-9291-a2b102e9ff2c" />

↓

<img width="411" height="245" alt="image" src="https://github.com/user-attachments/assets/9f4b0674-c592-454e-8de5-529756ae1c4c" />

Ahora, promoveremos otra vez al Wserver2012.

<img width="300" height="22" alt="image" src="https://github.com/user-attachments/assets/6eeab096-5613-4aa5-a396-5fa734dfb16a" />

Esta vez, vamos a añadir un dominio de árbol, el cual se llamará **campos.mad.es**

<img width="600" height="313" alt="image" src="https://github.com/user-attachments/assets/3b0805ca-d7bb-44bc-bb22-0cfd7abc8f81" />

Y el nombre NETBIOS será **CAMPOS.** 

<img width="461" height="64" alt="image" src="https://github.com/user-attachments/assets/25a18d3f-2dd0-474b-b134-610dd30cd87e" />

Después de las típicas pantallas de configuración y de la instalación, iniciaremos sesión como **CAMPOS\Administrador**

<img width="641" height="135" alt="image" src="https://github.com/user-attachments/assets/3a3a057a-169c-4cba-9333-8d6619f5eda6" />

Ahora, vamos a comprobar que ambos servidores, resuelven el nombre de dominio del otro servidor: 

<img width="685" height="265" alt="image" src="https://github.com/user-attachments/assets/3dfa0db4-c0ca-41d1-804e-d19e4efe9fc0" />

↓

<img width="690" height="210" alt="image" src="https://github.com/user-attachments/assets/82ef96ea-9472-4cb9-9cbe-8b408862c147" />

Para terminar, estableceremos una relación de confianza de acceso directo del 1º al 2º dominio. 
Para ello, vamos a **Dominios y confianzas de ACDC**. 

<img width="306" height="288" alt="image" src="https://github.com/user-attachments/assets/e30425a0-1ea0-408e-a2be-57f50d9324a0" />

↓

<img width="235" height="66" alt="image" src="https://github.com/user-attachments/assets/13cfbcc5-56a7-420a-877c-1d8a2ad453bb" />

Pero vemos que ya está la relación de confianza creada. 

<img width="417" height="388" alt="image" src="https://github.com/user-attachments/assets/b6d8b805-e8d1-4ebf-9cd6-e9e971fb4b89" />
































