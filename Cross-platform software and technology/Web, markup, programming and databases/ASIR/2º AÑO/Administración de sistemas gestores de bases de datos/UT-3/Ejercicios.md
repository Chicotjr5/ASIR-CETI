## Ejercicio 1

### Cuando se inserte una fila en la tabla DEPART, visualice un mensaje informativo

En esta práctica, tenemos que crear 2 triggers. 
El primero es muy sencillito, tan solo hay que sacar un mensaje informativo cuando se inserte una fila nueva. 
Lo cual es tan sencillo como poner el siguiente código. 

<img width="368" height="139" alt="image" src="https://github.com/user-attachments/assets/00a2fb69-94b3-4553-b394-a10d18d38b68" />

Al crearlo, insertamos una fila nueva y vemos que saca el mensaje por pantalla. 

<img width="467" height="156" alt="image" src="https://github.com/user-attachments/assets/1cb56bf4-3b3b-4b25-adc3-1babf9d665a7" />

---

### Cuando se borre alguna fila en DEPART, lo impida, que visualice un mensaje y registre en una tabla LOG2, la fecha-hora y el usuario que lo intentó. 

Ahora hay que hacer un trigger el cual sacará un mensaje cuando se intente borrar una tabla, deshaciendo la acción y mandando a una tabla la fecha y nombre de usuario que ha realizado la acción

<img width="620" height="364" alt="image" src="https://github.com/user-attachments/assets/693d57c1-faa9-4549-9d23-db4bcf951b1d" />

Y comprobamos que el trigger funciona perfectamente.

<img width="529" height="174" alt="image" src="https://github.com/user-attachments/assets/82613044-2559-43f6-aa7a-a7e8f41241cc" />

↓

<img width="204" height="132" alt="image" src="https://github.com/user-attachments/assets/dee1d644-f336-4acf-9284-139e18bf8443" />

---

## Ejercicio 2

### En base al ejemplo del “Histórico de saldos” de teoría, modificar lo anterior para que en el histórico grabe el saldo que tenía antes y el de después y grabe el nombre del Inicio de sesión que lo ejecutó 

En este ejercicio, debemos modificar una tabla y un trigger los cuales ya están creados. 
En la tabla vamos a añadir 3 campos nuevos 

- SALDO_ANTERIOR 
- SALDO_ACTUAL (que podría ser saldo) 
- USUARIO 

Tuve que crear la tabla de 0 ya que me daba problemas.

<img width="397" height="191" alt="image" src="https://github.com/user-attachments/assets/fa6f3856-c717-497a-863a-6073c5605633" />

Creo el siguiente **Trigger**

<img width="614" height="376" alt="image" src="https://github.com/user-attachments/assets/bde065f3-eada-455c-9447-8d20a3eb4ae3" />

Y hacemos la comprobación, visualizando que está perfecto

<img width="630" height="179" alt="image" src="https://github.com/user-attachments/assets/c91e62b2-feb1-4507-bf50-e47fa593914c" />

---

## Ejercicio 3

### Crear un disparador que permita actualizar los campos de la vista vista_emple_cli basada en las tablas empleados y clientes de la página 17 

Crearemos el trigger

<img width="501" height="311" alt="image" src="https://github.com/user-attachments/assets/1ee64df6-51f7-4ab9-bb42-a04ff0fe41db" />

Y probaremos su funcionamiento:

<img width="470" height="237" alt="image" src="https://github.com/user-attachments/assets/fce42406-0663-4dd0-a157-0ce14a2b0307" />

Y veremos que ha funcionado

<img width="384" height="141" alt="image" src="https://github.com/user-attachments/assets/5be761f0-2f3f-47ec-8a31-b787142fe229" />

---

## Ejercicio 4

### Crear un disparador de modo que en una cierta base de datos solo permita crear nuevas tablas si están incluidas en la tablas TablasPermitidas 

Para poder hacer este ejercicio, primero tenemos que crear una tabla llamada **TablasPermitidas**. 
Dentro de la misma, tendremos varios nombres de tablas, que serán las tablas que podremos crear. 
Si creamos una tabla con un nombre que no se encuentra dentro de la tabla, saltará el **trigger**.

<img width="352" height="137" alt="image" src="https://github.com/user-attachments/assets/cb4054b2-0ba2-4225-a300-e3c99cc86f3a" />

El trigger a crear sería el siguiente

<img width="589" height="270" alt="image" src="https://github.com/user-attachments/assets/68d340cc-36fa-445f-97d5-e7752e65a078" />

Y probamos su funcionamiento, creando 2 tablas, una llamada **Tabla1** y otra llamada Mondongo 

Obviamente, Mondongo no esta en la tabla **TablasPermitidas**, por lo que salta el trigger. 

<img width="677" height="273" alt="image" src="https://github.com/user-attachments/assets/70fc6ea1-7dd9-4816-a12e-5b7954659f9f" />

---

## Ejercicio 5

### Configurar otro perfil de mensajes de correo de SQL Server para que pueda enviar correos a través de tu servidor de correo HMailServer 

Ahora, vamos a hacer algo que sí funciona. 
Vamos a **Administración>Correo electrónico>Configurar correo electrónico de la base de datos**. 

<img width="446" height="218" alt="image" src="https://github.com/user-attachments/assets/ebbc09e3-6240-4bb0-93ea-d718f63e66ca" />

Se nos abrirá una ventana nueva, en la cual, elegiremos la primera opción

<img width="658" height="286" alt="image" src="https://github.com/user-attachments/assets/957f579d-5a1d-464a-a4ca-fc7ed16f2d2b" />

Crearemos un nuevo perfil, donde agregaremos una nueva cuenta de correo:

<img width="658" height="291" alt="image" src="https://github.com/user-attachments/assets/b8b701fe-f0b1-4cda-a37b-5263b62c7e74" />

Esta cuenta, tendrá los parámetros de una cuenta de mi servidor **hMailServer**. 

<img width="547" height="453" alt="image" src="https://github.com/user-attachments/assets/9488649d-df0a-4ed8-bef1-2a0004d9909a" />

Continuamos 

<img width="662" height="291" alt="image" src="https://github.com/user-attachments/assets/a1dbc1f8-7642-4c6c-ba94-9037f88f9423" />

Pasaremos rápido algunas pantallas en las que no tenemos que hacer nada y se crea la cuenta y el perfil. 

<img width="655" height="241" alt="image" src="https://github.com/user-attachments/assets/4743427f-3ba3-43aa-a384-c1b89bad37b9" />

Para comprobar el funcionamiento de todo esto, mandaremos un correo de prueba. 

<img width="419" height="69" alt="image" src="https://github.com/user-attachments/assets/bade04bd-f638-403f-834e-09c7e9e20545" />

↓

<img width="453" height="272" alt="image" src="https://github.com/user-attachments/assets/e482215b-9675-4e60-8bb6-2348699b35bb" />

Vamos a nuestro cliente **ThunderBird** y visualizamos su entrega.

<img width="410" height="217" alt="image" src="https://github.com/user-attachments/assets/29865d2a-a8a8-41d1-ab58-ba0c0b8b1958" />

---

## Ejercicio 6

### Configurar los mensajes de correo de SQL Server para que pueda enviar correos, de modo que envíe un correo a una cuenta de gmail usando la configuración SMTP de gmail. Envía correos desde los dos métodos.

Ahora nos dispondremos a crear un perfil con una cuenta de Gmail. 
Nos saltamos la parte donde creo el perfil, pues porque es lo mismo y llegamos a la parte de crear la nueva cuenta de correo electrónico. 
Pondremos los parámetros correctos. 

<img width="464" height="405" alt="image" src="https://github.com/user-attachments/assets/f31fc4f3-0220-4244-9187-b5653ef24c01" />

Se crea correctamente:

<img width="562" height="199" alt="image" src="https://github.com/user-attachments/assets/5d9e1d63-66d8-4cf6-8744-86a1542ef255" />

Y mandaremos el correo, mediante comandos:

<img width="433" height="121" alt="image" src="https://github.com/user-attachments/assets/82cf506e-08f4-4f6d-a566-bea9a1aa2fef" />

Y el correo de prueba. 

<img width="478" height="290" alt="image" src="https://github.com/user-attachments/assets/40eb9a52-cf33-4086-99c0-0a1dbfec6d1f" />

Pero como ya lleva pasando unas cuentas prácticas, todo lo que sea con Gmail no funciona.

---

## Ejercicio 7

### Crear un trabajo que conste de las siguientes etapas: 

Para finalizar con esta práctica, vamos a crear un trabajo. 
Para mí, es algo similar a un script, solo que este podemos ejecutarlo paso a paso. 
Para crearlo, vamos a **Agente de SQL SERVER>Trabajos>Nuevo trabajo**

<img width="206" height="54" alt="image" src="https://github.com/user-attachments/assets/1e4f0471-a706-40d6-aa97-b4f102186d69" />

Le asignamos un nombre y un propietario 

<img width="696" height="191" alt="image" src="https://github.com/user-attachments/assets/ec276d59-ad0b-4288-9ac2-edd5cd658688" />

Y vamos con lo importante, crear los pasos. 
Los iremos creando de uno en uno. 
Primero, crearemos la BD.

<img width="502" height="182" alt="image" src="https://github.com/user-attachments/assets/e554d8ab-e5c3-4f2b-b8c5-4e5b92ee968c" />

Ahora, las tablas

<img width="524" height="331" alt="image" src="https://github.com/user-attachments/assets/6e090a7c-15e0-427b-8d2d-7a731fd023d9" />

Proseguimos insertando los datos en las tablas.

<img width="520" height="333" alt="image" src="https://github.com/user-attachments/assets/9c3dfca3-1b9e-4b0c-8dba-555b25ebd633" />

Y finalizamos creando la copia de seguridad.

<img width="512" height="268" alt="image" src="https://github.com/user-attachments/assets/8b120466-3032-485d-ae76-db122b4e162e" />

---

## Ejercicio 8

### Crear un alerta de un operador para que cuando alguien haga un login incorrecto le llegue un correo. 

#### Crear alerta

Ahora, vamos a hacer una alerta, para que al un usuario hacer un login incorrecto, nos manden un correo. 
Para esto, primeramente tenemos que tener creado un perfil de correo electrónico. 
Una vez creado, pasamos a crear la alerta. 
Vamos a **Agente de SQL SERVER>Alerta>Nueva alerta**

<img width="236" height="100" alt="image" src="https://github.com/user-attachments/assets/a1bd87ac-2d3a-4ca4-b463-982178f4d577" />

Y empezaremos a configurarla. 
Pondremos el nombre de la alerta, la base de datos donde funcionará y cuando 
va a mostrarse esta alerta. 
Es este caso, cuando haya un **nº de error 18456**, el cual corresponde al intento de **login fallido**

<img width="641" height="282" alt="image" src="https://github.com/user-attachments/assets/f717308a-6aac-4a94-b64b-fe3b9ea33b1e" />

#### Configurar alerta 

En el apartado **Respuesta** haremos que se ejecute el trabajo **ejer11**. 

<img width="593" height="224" alt="image" src="https://github.com/user-attachments/assets/c2439281-904b-4807-86d6-e10db9b9aa58" />

Este trabajo, ejecutara el siguiente código.

<img width="276" height="197" alt="image" src="https://github.com/user-attachments/assets/7e5b9799-9cdd-45c8-bedf-0ed46d5e1906" />

Y al ejecutar correctamente ese código, mandará un correo electrónico.

<img width="698" height="262" alt="image" src="https://github.com/user-attachments/assets/0f1a4d62-9960-4f57-a611-b4bcbc0dcf13" />

Y ponemos esta última configuración. 

<img width="696" height="314" alt="image" src="https://github.com/user-attachments/assets/03d0e965-4632-4033-92f2-615f9de0808b" />

#### Probarlo

Ahora, pasamos a comprobar el correcto funcionamiento de la alarma. 
Hacemos un inicio de sesión fallido: 

<img width="607" height="152" alt="image" src="https://github.com/user-attachments/assets/099bb83b-1fe7-450e-a88b-6248d097430d" />

Esperamos unos segundos y recibimos nuestro correo

<img width="483" height="195" alt="image" src="https://github.com/user-attachments/assets/10cc4a94-d741-4a4a-a420-2c0fb15083d2" />
