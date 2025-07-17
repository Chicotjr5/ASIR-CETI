## Documentar los servicios de SQL Server instalados en tu equipo, su estado y las opciones de Administración de configuración de SQL Server

Podemos ver los servicios de SQL Server de 2 formas distintas.
Desde los **Servicios de Windows**: 


<img width="183" height="60" alt="image" src="https://github.com/user-attachments/assets/3ba855d4-dba0-4ca4-a2f1-b8e9e547f693" />

↓

<img width="651" height="75" alt="image" src="https://github.com/user-attachments/assets/8c2c675a-5700-477f-bf24-15ea22905582" />

O con el **Administrador de configuración de SQL Server**: 

<img width="362" height="59" alt="image" src="https://github.com/user-attachments/assets/5669107b-5c0b-4965-979b-75798c65fa33" />

↓

<img width="821" height="86" alt="image" src="https://github.com/user-attachments/assets/c3eb8914-4c63-4e5c-8d6e-6a6f0f26911b" />

Dentro del **Administrador de configuración de SQL Server** podemos ver la **configuración de red de SQL Server**, que nos permite gestionar cuáles son los protocolos que se tienen a nivel de servidor.

<img width="310" height="74" alt="image" src="https://github.com/user-attachments/assets/f8f5b7a7-6136-4ac4-aa02-e52edafccc0b" />

Y la **configuración de SQL Native client 11.0**, la cual establece la configuración de las herramientas cliente instaladas localmente.

<img width="242" height="78" alt="image" src="https://github.com/user-attachments/assets/81c725f8-de91-4c1e-ab29-d27313a9f83d" />

---

## Conexión local del servidor/Firewall

El siguiente paso, es conectarnos a nuestro servidor de SQL SERVER con el Firewall abierto y cerrado, para ver si nos conectamos o no. 

A, también hay que hacerlo con ambos modos de autentificación (Windows y SQL SERVER). 

Primero, vamos a probar con el firewall desactivado.

<img width="631" height="258" alt="image" src="https://github.com/user-attachments/assets/70a53f8f-8445-462a-ac76-c2271ec4f065" />

Una vez desactivado, probamos la autentificación de Windows.

<img width="392" height="291" alt="image" src="https://github.com/user-attachments/assets/00f3b769-c16e-4d90-8ac1-5816bbb89139" />

↓

<img width="419" height="225" alt="image" src="https://github.com/user-attachments/assets/4852a931-1fac-44cf-a480-470a2ab466d0" />

Probamos con la autentificación de SQL SERVER. 

<img width="389" height="296" alt="image" src="https://github.com/user-attachments/assets/61f12b75-395d-477f-8366-970bf29cfc52" />

↓

<img width="431" height="231" alt="image" src="https://github.com/user-attachments/assets/f6952a9f-9cf3-4c95-854b-0d6296ba2ba7" />

Esto ha sido con el Firewall desactivado, así que ahora lo activamos.

<img width="697" height="284" alt="image" src="https://github.com/user-attachments/assets/11a367cf-c4e2-4c29-bdfe-e63dfe20b90b" />

Probamos con ambos modos y nos deja.

<img width="560" height="573" alt="image" src="https://github.com/user-attachments/assets/d476bef3-8432-4f81-a4a5-236892e56bf0" />

---

## Conexión remota a otro servidor (compañero) 

Ahora debemos conectarnos al servidor SQL de un compañero de clase. 
En mi caso lo he hecho con Javier Moral. 
Tenemos que hacer lo mismo que en el caso anterior, pero con el servidor del compañero. 
Primero vamos a probar con el Firewall desactivado.

**Autentificación de SQL Server**

<img width="357" height="265" alt="image" src="https://github.com/user-attachments/assets/90251484-2e72-4a26-bb2d-f23440c596d1" />

Me he podido conectar sin problemas. 

<img width="383" height="195" alt="image" src="https://github.com/user-attachments/assets/d6418e98-b444-4588-acbc-1b5ad43ecdf9" />

Pero con la autentificación de Windows ocurre un problema y es que el usuario que cada uno tiene en su SO es distinto (el mío se llama usuario y el suyo admin) así que no hemos podido realizar esta conexión. 

<img width="493" height="243" alt="image" src="https://github.com/user-attachments/assets/d5683b72-6c88-478e-9eae-973350df1cd9" />

Ahora probaré con el Firewall abierto. 
No me es posible conectar. 

<img width="727" height="232" alt="image" src="https://github.com/user-attachments/assets/9087069f-c604-4842-a884-a40ba348974a" />

Para solucionar este problema, Javier creó una regla de entrada para el puerto **TCP/1433**, el cual es el que usa **SQL SERVER** para las comunicaciones.

<img width="280" height="57" alt="image" src="https://github.com/user-attachments/assets/bd8a5613-05b1-45f7-8086-550799facf68" />

Y con la regla creada, ya podemos conectarnos sin ningún tipo de problema. 

<img width="379" height="193" alt="image" src="https://github.com/user-attachments/assets/6d6ec628-b5c4-45bb-b94b-10495fe99646" />

---

## Servidores registrados 

El siguiente apartado de esta práctica, es registrar 2 servidores en SQL SERVER y probar la conexión. 
Para poder registrar un servidor, vamos a **Ver>Servidores registrados**.

<img width="437" height="152" alt="image" src="https://github.com/user-attachments/assets/7cedc0a9-eef8-4bda-8d53-5fe48d2d8ec2" />

Se nos abrirá este menú, con una lista de los servidores que tenemos registrados en SQL SERVER. 
Por defecto y obviamente, esta mi servidor local. 

<img width="460" height="147" alt="image" src="https://github.com/user-attachments/assets/accfecb1-bd3d-4963-8fe1-53eb3db65a75" />

Damos clic derecho sobre **Grupos de servidores locales** y añadimos un **Nuevo registro de servidor**.

<img width="246" height="198" alt="image" src="https://github.com/user-attachments/assets/b66b1afc-c186-4720-b1bd-6ef2cf4f4e53" />

Se nos abrirá una ventana, para poner el nombre del servidor y el modo de autentificación. 

<img width="411" height="515" alt="image" src="https://github.com/user-attachments/assets/c7230502-c905-4871-98ac-b2ab61c4760a" />

Antes de guardar el registro del servidor, podemos probar la conexión, para comprobar que funcione o no. 
Vemos que se conecta perfectamente. 

<img width="301" height="74" alt="image" src="https://github.com/user-attachments/assets/a987fcc1-9c11-45ea-a1f0-fe66913f5e81" />

Repetimos el mismo proceso, pero con otro servidor 

<img width="399" height="500" alt="image" src="https://github.com/user-attachments/assets/ddf62e4e-d8d7-403f-b98b-cb3ab98054e2" />

Vemos los registros de servidores que tenemos. 

<img width="285" height="102" alt="image" src="https://github.com/user-attachments/assets/9a24f1a9-6bbb-4341-973c-a30aebd4f2bb" />

Como ya están los registros de los servidores, probaremos a conectarnos a ambos servidores. 
Pero eso se verá en la siguiente página.

Probamos a autenticarnos 

<img width="907" height="156" alt="image" src="https://github.com/user-attachments/assets/3e618554-d84d-4938-94a3-69b4286241fd" />

Y nos conectamos en ambos servidores.

<img width="420" height="442" alt="image" src="https://github.com/user-attachments/assets/1f325359-b715-4040-9d68-53581b1866be" />

---

## Administración remota de varios servidores 

En este apartado, vamos a conectarnos al servidor SQL de un compañero un crear una Base de datos y una tabla dentro de ella. 
Nos conectamos por ejemplo al servidor de **Emilio>Bases de datos>Nueva base de datos**.

<img width="312" height="49" alt="image" src="https://github.com/user-attachments/assets/8b989fd1-60c4-4096-8265-2810428934b5" />

↓

<img width="566" height="370" alt="image" src="https://github.com/user-attachments/assets/bc599e3f-edd6-4bb6-84fc-b46578849e83" />

Una vez creada la BD, creamos la tabla.

<img width="347" height="312" alt="image" src="https://github.com/user-attachments/assets/bb484f84-e153-40b8-9885-d2345b56c384" />

Creamos la tabla.

<img width="396" height="160" alt="image" src="https://github.com/user-attachments/assets/fab3851c-67a0-46e6-a3d1-d6231ab7aa81" />

Yo me conecte al servidor de Emilio, pero Javier se conectó al mío y creo su base de datos.

<img width="318" height="152" alt="image" src="https://github.com/user-attachments/assets/f95ac67a-dc43-47c5-bae2-7e6fde393b12" />

---

## Opción servidor conexiones remotas 

La opción Permitir conexiones remotas con este servidor nos permite el poder conectarnos a otros servidores. 

<img width="599" height="397" alt="image" src="https://github.com/user-attachments/assets/0275c909-1ea1-4208-b099-3a76a184abe3" />

Como hemos hecho conexiones en preguntas anteriores y con esta opción activada, creo que no hace falta comprobar su funcionamiento, debido a que ya lo estría probando en todos los pasos anteriores. 

---

## Impedir conexiones remotas 

Una forma de impedir las conexiones remotas es desmarcando esta opción (y reiniciando algunos servicios para que el servidor coja los cambios). 

<img width="459" height="137" alt="image" src="https://github.com/user-attachments/assets/64d703ca-b3ad-4b9d-a407-13b9e5e5b2b3" />

O eso es lo que nos hace creer SQL SERVER, debido a que esta opción, en esta versión, no funciona.

<img width="783" height="173" alt="image" src="https://github.com/user-attachments/assets/b0c451ae-47ed-4d33-98bd-661974cc6bdd" />

Aquí podemos ver, que la opción estaba desmarcada a las 10:50:01

<img width="912" height="98" alt="image" src="https://github.com/user-attachments/assets/b1632da0-4115-4263-8472-a2079477d93b" />

Y que a las 10:50:27 mi compañero se ha conectado perfectamente a mi servidor, indicando que esa opción no funciona

Algunas opciones para impedir la conexión de clientes a nuestro servidor son
- Activar el Firewall
- Deshabilitar las reglas de entrada de Firewall
- Usar la instrucción DENY en SQL Server para denegar permisos en nuestro servidor. Denegando el permiso CONNECT SQL a un inicio de sesión para impedir que se conecte al motor de base de datos.

---

## Cambiar el puerto de conexión de servidor SQL Server

Para cambiar el puerto de conexión de SQL SERVER, vamos a **SQL SERVER Configuration Manager>Configuración de red de SQL SERVER>Protocolos de MSSQLSERVER>TCP/IP>Direcciones IP**

Y cambiamos el nº del puerto por el 3314 por ejemplo en la primera casilla, deshabilitando el resto.

<img width="371" height="423" alt="image" src="https://github.com/user-attachments/assets/357bcbf6-1200-4f03-8d13-3c535230c5c4" />

Reiniciamos los servicios de SQL SERVER para que se guarden los cambios 
Y en el terminal, comprobamos que se ha cambiado el puerto con un 

```bash
netstat –an | findstr 3314 
```

<img width="602" height="57" alt="image" src="https://github.com/user-attachments/assets/54d5fee5-598d-4781-ae07-b9b7f553fdfe" />

Para poder conectarnos a través de este puerto en específico, en la pantalla de conexión al servidor, tenemos que poner el nombre del servidor, una coma y seguido el **puerto 3314**.

<img width="274" height="206" alt="image" src="https://github.com/user-attachments/assets/b8e0f928-7df8-46ae-b771-cb5587ee518e" />

Vemos que nos ha conectado correctamente 

<img width="328" height="207" alt="image" src="https://github.com/user-attachments/assets/88b9b3ea-8d6e-410b-a08e-5d7a0e1370c3" />

Si volvemos a ver en el terminal las conexiones de ese puerto, veremos que sale la conexión que acabamos de hacer. 

<img width="625" height="163" alt="image" src="https://github.com/user-attachments/assets/95e38aed-201d-4cc7-91de-bd6e7bf96302" />

Si probamos conectarnos a nuestro servidor local, podremos perfectamente. 

<img width="356" height="195" alt="image" src="https://github.com/user-attachments/assets/12d1eae5-9a1f-4103-a776-6288cb373283" />

---

## Hay alguna forma de saber quien ha entrado a mi servidor 

**Instancia>Informes>Informes estándar>Actividad:todas las sesiones**

<img width="588" height="462" alt="image" src="https://github.com/user-attachments/assets/a63f9541-10fe-492c-a99a-5e595d3cac47" />

Y podemos ver todas las **sesiones activas** en la instancia.

<img width="721" height="231" alt="image" src="https://github.com/user-attachments/assets/b16390ae-4444-43b8-8783-f27382904751" />

Yo solo tengo estas conexiones activas, debido a que hice la captura en casa a las 5 de la tarde, así que obviamente ninguno de mis compañeros se podía conectar a mi servidor





















 
