## Instalación de SQL Server 2014 Enterprise

### Requisitos mínimos

Los requisitos mínimos de SQL SERVER 2014 Enterprise son los siguientes: 

- Sistema operativo: Windows 7/8/8.1/101.
- RAM: Se requieren 2 GB de RAM.
- Disco duro: Se requieren 6 GB de espacio libre
- Procesador: Procesador Intel Dual Core o posterior.

Para poder obtener estos requisitos, podemos buscarlos en Internet, o en la hora de la instalación, nos sale un enlace a una página donde podemos verlos, aunque no funciona.

<img width="319" height="72" alt="image" src="https://github.com/user-attachments/assets/7b9fa8fa-b4d0-45ff-ae19-dc9e8c3ebdc3" />

---

### Instalación previa de la máquina

Antes de instalar nada, tenemos que configurar la máquina. 
El nombre de la máquina será el siguiente

<img width="291" height="63" alt="image" src="https://github.com/user-attachments/assets/28b7c44d-054b-4f2e-86c3-2b132d7ba3cb" />

El nombre del equipo será siguiente

<img width="355" height="272" alt="image" src="https://github.com/user-attachments/assets/6e66b898-3aed-4c6e-b66e-94167a9ec8a0" />

Y por último la IP

<img width="502" height="270" alt="image" src="https://github.com/user-attachments/assets/6341c60f-d7eb-4f4e-92b1-c1e2a4455547" />

---

### Instalación 

Para poder instalar **SQL SERVER** tenemos que instalar el CD de instalación de SQL proporcionado por el profesor

<img width="381" height="97" alt="image" src="https://github.com/user-attachments/assets/55ac58db-40da-49e4-97bc-195ec084b7c9" />

Una vez lo tenemos instalado, accedemos a el e iniciamos la instalación

<img width="123" height="57" alt="image" src="https://github.com/user-attachments/assets/13a44c91-6cee-4f18-95c7-5f338d2ca864" />

Y se inicia el instalador. 
Esta pantalla sirve para que conozcamos los requisitos mínimos, para ver documentación oficial, para que nos compruebe si nuestro sistema cumple los requisitos mínimos etc. 
Como no necesitamos nada de esta pantalla, saltamos a la siguiente. 

<img width="700" height="530" alt="image" src="https://github.com/user-attachments/assets/f3956b6a-4672-4ddd-8d91-63c30968b12e" />

En la siguiente pantalla, tenemos opciones para hacer una nueva instalación de SQL SERVER, para agregar nodos de clúster o para actualizar de SQL SERVER 2005>2008>2008 R2>2012

Como queremos hacer una nueva instalación de SQL SERVER elegimos la primera opción. 

<img width="586" height="239" alt="image" src="https://github.com/user-attachments/assets/a9133c38-5cda-4c34-8c77-9dd5280d0e32" />

Y se inicia un asistente para instalar SQL SERVER. 
Lo primero que nos pide es que escribamos la clave de producto, la cual ya estaba escrita, por lo que proseguimos con la instalación 

<img width="591" height="305" alt="image" src="https://github.com/user-attachments/assets/2a3563f3-7211-4ef9-ad16-b92409e27aab" />

Proseguimos con la instalación y a la hora de instalar las reglas, vemos que una no se puede instalar.

<img width="634" height="267" alt="image" src="https://github.com/user-attachments/assets/b48f089a-7a52-4f73-8524-aa9ffa093398" />

Para arreglarlo, tenemos que ir al Firewall de Windows y desactivarlo. 

<img width="626" height="281" alt="image" src="https://github.com/user-attachments/assets/199251df-fc71-4f6b-8d8d-a0db953da584" />

Y ya se instala correctamente.

<img width="501" height="178" alt="image" src="https://github.com/user-attachments/assets/2297a28d-f86a-4b59-b5b2-1ec987d6af32" />

En la siguiente pantalla, se nos pedirá seleccionar un **rol de instalación.** 

Elegiremos la opción **“Instalación de características de SQL SERVER”**.

<img width="629" height="136" alt="image" src="https://github.com/user-attachments/assets/9970d829-9b91-43ed-8b11-ab25f4f1d156" />

Ahora toca la **Selección de características**.

Seleccionamos las siguientes características

- Servicios de Motor de Base de Datos - Todos
- Conectividad con las herramientas cliente
- Herramientas de administración – básica + Completa

<img width="380" height="238" alt="image" src="https://github.com/user-attachments/assets/028fab87-0f03-41ce-bf6d-0ba35ac02c64" />

↓

<img width="429" height="62" alt="image" src="https://github.com/user-attachments/assets/0688330e-0ca4-4998-bf54-d888e4d15ec4" />

El siguiente apartado es la **Instalación de instancia**. 
Seleccionamos la instancia predeterminada, cuyo ID es **MSSQLSERVER03**. 

<img width="722" height="181" alt="image" src="https://github.com/user-attachments/assets/8785ca2b-944a-4c32-85f8-ec32241d94a0" />

El siguiente punto es la Configuración del servidor que tiene 2 apartados: 
Cuentas de servicio en la cual no tocamos nada y lo dejamos tal y como está

<img width="489" height="142" alt="image" src="https://github.com/user-attachments/assets/a756a95b-8b2b-4fc0-9677-d3b4de67b1db" />

Y el apartado Intercalación. 
En este apartado, podemos cambiar el motor de la base de datos. 
Esto se hace para que algunos de los caracteres de otros idiomas estén disponibles y sean compatibles. 
Nosotros no tocamos nada y lo dejamos tal y como está.

<img width="611" height="203" alt="image" src="https://github.com/user-attachments/assets/27b15a4c-ae39-4172-afaf-07491782590c" />

Y, por último, tenemos la **Configuración del motor de la base de datos**, que cuenta con 3 apartados: 

- Configuración del servidor
- Directorios de datos
- FILESTREAM

En la configuración del servidor, vamos a elegir un modo de autenticación Mixto, para poder autenticarnos con la cuenta de administrador de SQL y con la cuenta de Windows. 

<img width="482" height="439" alt="image" src="https://github.com/user-attachments/assets/24efa182-629e-48aa-aca1-93100537e8c9" />

Y con esto, finaliza la configuración de la instalación. 
Ya se puede empezar a instalar. 

<img width="667" height="501" alt="image" src="https://github.com/user-attachments/assets/516fbbb9-f090-4dc0-aa6b-fa47717550e8" />

Cuando se vuelve a encender, nos sale la siguiente pantalla, en la que podemos ver, que la instalación de realizó correctamente

<img width="662" height="254" alt="image" src="https://github.com/user-attachments/assets/d454e085-1815-4169-99ca-0660697205d4" />

Dentro de esta pantalla, nos sale la ruta hacia un archivo de LOG, en el cual podemos ver un resumen de la instalación y ver si todo ha salido bien o no.

<img width="548" height="43" alt="image" src="https://github.com/user-attachments/assets/5763aecb-676c-4e92-bcc8-3b795455797f" />

↓

<img width="669" height="274" alt="image" src="https://github.com/user-attachments/assets/70273159-0798-4ea7-8f76-83d9aeb83bb4" />

---

## Verifica su funcionamiento 

### Ejecuta la consola administrativa y conéctate 

Ahora, si vamos a **Ver todos los programas** veremos que nos salen 2 carpetas nuevas: 

A nosotros nos interesa la carpeta de Microsoft SQL Server 2014, debido a que contiene la consola administrativa de SQL SERVER.

<img width="276" height="269" alt="image" src="https://github.com/user-attachments/assets/3720a5d3-b57c-47e0-85d2-8039293e6b10" />

A la cual, le haremos un acceso directo en el escritorio. 

<img width="111" height="111" alt="image" src="https://github.com/user-attachments/assets/512e0eea-6d59-490a-bca2-e32a34189f65" />

La ejecutamos y nos conectamos al servidor y vemos que podemos acceder con la Autenticación de Windows o con la de SQL SERVER.

<img width="379" height="284" alt="image" src="https://github.com/user-attachments/assets/f4cf77c6-7a39-4607-8f1c-aafa6108f999" />

↓

<img width="381" height="285" alt="image" src="https://github.com/user-attachments/assets/5b48c855-46da-4ec0-a5c3-9df7c367a46e" />

### Comprobar los servicios de SQL Server arrancados.

Una vez nos hemos conectado, vamos a **Servicios** y buscamos si los servicios de SQL están arrancados o no. 
Vemos que sí que están iniciados

<img width="714" height="80" alt="image" src="https://github.com/user-attachments/assets/89ca07e1-2654-4c6a-ac69-9492bcf91a57" />

Incluso podemos verlo en el propio servidor de SQL.

<img width="786" height="91" alt="image" src="https://github.com/user-attachments/assets/5d0bc87e-a18f-420a-954b-bce4433e339c" />

---

## Crear en la BD model una tabla Plantilla con una columna c1nchar (10) 

Ya podemos empezar a usar nuestro servidor SQL. 
Lo primero que vamos a hacer, es crear dentro de la base de datos **Model** una plantilla, la cual tendrá como contenido, una columna del valor c1nchar (10). 

**Servidor>Bases de datos>Bases de datos del sistema>model>Tablas>Nuevo**

<img width="553" height="173" alt="image" src="https://github.com/user-attachments/assets/ab6a4eb6-dad6-4bfd-a048-7572c749f66c" />

Y creamos la columna

<img width="570" height="137" alt="image" src="https://github.com/user-attachments/assets/85f30dc9-5af6-49aa-b0b2-b4a434cb147e" />

---

## Creación y utilización de una BD llamada PRUEBAS 

### Creación de la base de datos

Proseguimos con la creación de una nueva base de datos. 
Para poder crearla vamos a **Servidor>Bases de datos>Nueva**, entonces se inicia un asistente para poder crear la base de datos. 
De momento, no tenemos que tocar nada, solo especificaremos el nombre.

<img width="638" height="231" alt="image" src="https://github.com/user-attachments/assets/fb1412fe-8c91-4cfe-8f86-8d33dc465d62" />

Si revisamos las tablas de la base de datos, veremos que automáticamente, se ha creado una tabla llamada Plantilla, que es la tabla que hemos creado antes en la base de datos **model**. 

Esta base de datos contiene los scripts para la creación de objetos y gestiona plantillas para la creación de nuevas BD. 

<img width="498" height="281" alt="image" src="https://github.com/user-attachments/assets/046aafd3-e3a4-4b71-82d5-e73b718390d7" />

---

## Creación de una BD denominada PRUEBAS1 mediante el siguiente script

Ahora tenemos que crear una Base de datos a través de un script. 
Seleccionamos una **Base de datos cualquiera>clic derecho>Nueva consulta** 
Por suerte, contamos con el código ya hecho, así que solo tenemos que copiar y pegarlo en la máquina virtual. 

<img width="255" height="65" alt="image" src="https://github.com/user-attachments/assets/99948705-507a-4465-a7c8-562e6b27f932" />

↓

<img width="345" height="296" alt="image" src="https://github.com/user-attachments/assets/b18b6ec9-2aab-4287-852d-cd0c5d0285da" />

Código proporcionado por el profesor 

<img width="358" height="342" alt="image" src="https://github.com/user-attachments/assets/d804f041-e0d1-4035-b8aa-671f0f08fccc" />

Código en la consulta de ejecución en el servidor

Refrescamos la instancia y se crea la base de datos. 

<img width="300" height="258" alt="image" src="https://github.com/user-attachments/assets/b3fa2be8-468e-4a40-99bb-e12fd914f8ac" />

↓

<img width="294" height="261" alt="image" src="https://github.com/user-attachments/assets/2381dc06-d871-4f14-b21f-f521096747ca" />

---

## Crear en la BD PRUEBAS las tablas correspondientes a los scripts BD_ALUMNOS.SQL 

En la base de datos Pruebas, vamos a ejecutar un script, el cual nos creará un conjunto de tablas con unos datos. 
Este script ha sido proporcionado por el profesor.

<img width="281" height="31" alt="image" src="https://github.com/user-attachments/assets/b2f230f7-67dc-4c48-abe1-14e748172652" />

↓

<img width="492" height="441" alt="image" src="https://github.com/user-attachments/assets/92c392ae-5d6a-40b2-9162-5b06d2c3c0d9" />

### Comprueba que se han creado las tablas

Una vez lo ejecutamos, refrescamos la instancia y vemos como se han creado las tablas.

<img width="298" height="183" alt="image" src="https://github.com/user-attachments/assets/acc4c0db-16c2-490a-9de7-1e9b5679b86b" />

### Visualizar el contenido de la tabla ALUMNOS14 y ASIGNATURAS14

Para poder ver el contenido de las tablas, generamos una consulta nueva y ejecutamos un 

```sql
SELECT * FROM “NOMBRE DE LAS TABLAS”; 
```

<img width="276" height="323" alt="image" src="https://github.com/user-attachments/assets/8c4994a7-fe09-4c63-af5d-70319667e10c" />

↓

<img width="287" height="447" alt="image" src="https://github.com/user-attachments/assets/df8caae6-4aa3-4f5d-82a6-4327c1a64c2b" />

### Crea un diagrama de BD de todas las tablas y visualiza sus relaciones 

Para poder crear un diagrama, vamos a **Diagrama de Base de datos>Nuevo diagrama de base de datos>Agregar tablas**. 

<img width="354" height="61" alt="image" src="https://github.com/user-attachments/assets/001b9a63-4256-4e96-ac9c-da960b08bc2b" />

↓

<img width="141" height="142" alt="image" src="https://github.com/user-attachments/assets/a79757f5-24e9-4481-9104-307789bf4598" />

↓

<img width="668" height="190" alt="image" src="https://github.com/user-attachments/assets/07e9c4d5-1372-47a3-a985-9cb32f9a349d" />

---

## Crear la BD PRESTAMOS y las tablas correspondientes a BD_PRESTAMOS

Ahora tendremos que crear esta nueva Base de datos y dentro de ella, ejecutar un script para agregar las tablas correspondientes.

<img width="298" height="34" alt="image" src="https://github.com/user-attachments/assets/4b0c26b2-0b86-4c4a-9c6d-053c1ec8b5d9" />

↓

<img width="369" height="453" alt="image" src="https://github.com/user-attachments/assets/06924dc4-dd85-4c81-8b58-2749baa16617" />

Al ejecutar el script, se crean las tablas.

<img width="253" height="166" alt="image" src="https://github.com/user-attachments/assets/52a2e6d4-d147-4e76-bcfd-b0bd6db16051" />

---

### Editar la tabla SOCIOS e insertar 2 filas más. Cambiar los datos del nombre del socio 220 y comprobar si dichos cambios quedan cambiados en la tabla mediante una SELECT. 

Una vez creadas las tablas, vamos a modificar la tabla SOCIOS, insertando 2 filas más y modificando el campo nombre del socio cuyo COD_SOCIO es 220, además de sacar el resultado por pantalla. 
Aquí no tenemos ningún script proporcionado por el profesor, así que tendremos que hacerlo nosotros. 
Abrimos una nueva consulta y pondremos lo siguiente 

**Para añadir filas:** 

```sql
INSERT INTO SOCIOS VALUES (231, “FERNANDO LOBATO”, “EL PADRE 
33”, “ZARAGOZA”, 9166768); 
INSERT INTO SOCIOS VALUES (232, “SIMON FERNANDEZ”, “FRUTO 3”, 
“SORIA”, 4586768 );
```

**Para modificar el campo nombre:**

```sql
UPDATE SOCIAS SET NOMBRE = “ALEJANDRA SAINZ” WHERE COD_SOCIO = 220;
```

**Para ver los campos:**

```sql
SELECT * FROM SOCIOS;
```

<img width="797" height="95" alt="image" src="https://github.com/user-attachments/assets/a2d5b249-ab8c-4191-b9c2-a5f7dbe57eec" />

↓

<img width="729" height="277" alt="image" src="https://github.com/user-attachments/assets/f710e519-f249-47b7-8578-3e7623a793f8" />

### Visualizar el contenido de todas las tablas del esquema BD_PRESTAMOS

```bash
SELECT * FROM "TABLA";
```

<img width="732" height="685" alt="image" src="https://github.com/user-attachments/assets/e322cf32-b204-4097-8f77-e25fa105ab61" />

### Crear un diagrama de BD y mostrar sus tablas y relaciones

Y para terminar este punto, creamos un diagrama para ver sus tablas y relaciones.

<img width="668" height="269" alt="image" src="https://github.com/user-attachments/assets/92023851-f4d4-4c49-a5ca-69b072a17b04" />

---

## BD AdventureWorks (BD de demostración de Microsoft)

### Descargar de Internet indicando su URL 
 
Para terminar con esta práctica, tenemos que descargarnos la base de datos Adventure Works, la cual es una base de datos de Microsoft con muchísimas tablas, la cual esta pensada para hacer pruebas y demás cosas. 

La descargamos de la siguiente [URL](https://github.com/Microsoft/sql-server-samples/releases/tag/adventureworks)

<img width="557" height="92" alt="image" src="https://github.com/user-attachments/assets/f8771cab-6242-4d54-a228-5b4f2084ccb7" />

### Instalarla en tu sistema 

Para poder instalarla en nuestro servidor SQL, tenemos varias opciones, yo lo he hecho de la siguiente: 
Primero, tenemos que meter el archivo descargado en el directorio (no hace falta, pero así me salía en la guía)  

**C:\Archivos de programa\Microsoft SQL SERVER\MSSQL12\MSSQL\Backup**

En SQL SERVER vamos a **Bases de datos>clic derecho>Restaurar base de datos.**

Se iniciará un asistente para restaurar la base de datos y elegiremos el archivo de nuestra base de datos

↓


↓





















































 
