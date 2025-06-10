## Índice

- [Introducción](#introducción)
- [Escalar privilegios](#escalar-privilegios)
- [Capturar flags](#capturar-flags)
- [Vulnerar sitio web](#vulnerar-sitio-web)
  - [Base de datos](#base-de-datos)
  - [Inyección SQL](#inyección-sql)


## Introducción

Esta es una continuación de la práctica **Vulnerar_equipo_1** donde se va a explorar aún más la máquina vulnerable y a realizar más ataques.

---

### Escalar privilegios

Al final de la práctica anterior descubrí cual era la contraseña del usuario **ftpuser**, así que con esa información voy a realizar una conexión por ssh al objetivo.

![[1.1.png]]

Ya conectado echamos un vistazo al archivo **/etc/passwd**. 
En ese archivo se guarda la información de los usuarios del sistema, como su nombre, UUID, grupo al que pertenece y lo más importante, su contraseña. 
Los usuarios que más interés generan son los usuarios que ya descubrí anteriormente junto con el usuario **root**.

![[1.4_LAX 1.png]]

En cada línea de usuario podemos ver una X. Esta hace referencia a que la contraseña se encuentra cifrada en otro archivo.

![[1.5.png]]


Este archivo es el **/etc/shadow**. Al intentar ver su contenido, el sistema nos dirá que no podemos puesto que este archivo tiene permisos de lectura y escritura solo para el usuario **root**.

![[1.2.png]]

Si intento escalar privilegios, no podré debido a que el usuario ftpuser no se encuentra en el archivo sudoers. En este archivo se indica que usuarios pueden escalar privilegios. 
Si un usuario no se encuentra en este archivo no podrá escalar privilegios.

![[1.6.1.png]]

Pero hay una forma de arreglar esto.

En el archivo **/etc/passwd tengo permisos de lectura y de escritura**. 
Si en la **X del usuario root pongo una contraseña cifrada** que haya creado previamente, podré escalar privilegios con el usuario root.

Para generar esta contraseña usaré **openssl**.

![[1.6 -generar contraseña con hash.png]]

Ya con el hash de la contraseña generado, edito el archivo **/etc/passwd.**

![[1.9.png]]

Guardo el archivo y escalo privilegios:

![[1.10.png]]

---

### Capturar flags

Como sé que algunos usuarios tienen archivos que se llaman flag.txt lo que voy a hacer es buscar en el sistema todos los archivos que se llamen así (quizá descubro otro archivo nuevo).

Con el siguiente comando visualizo el contenido de cada archivo:

`find / -name *flag.txt`

![[1.11.png]]

↓

![[1.12.png]]

El contenido parece ser un hash creado con MD5. 
Al pasar estos hashes por https://md5decrypt.net/en/ se puede ver su contenido:


![[1.12.1.png]]


---

### Vulnerar sitio web

#### Base de datos

Al hacer el escáner de puertos del objetivo, no solo estaban el servicio **ftp** y **ssh** abiertos, si no que también estaba el servicio **http**, así que eso quiere decir que hay una página web a la que podemos acceder (y podemos vulnerar).

Para conectarme es tan simple como ir al navegador web y poner la IP de la máquina objetivo.

![[1.18.png]]

Si hay un sitio web, también hay por detrás una base de datos.
Vuelvo a hacer un escaneo de los puertos de la máquina objetivo, pero esta vez apuntando al puerto **3306** y realizando un escaneo ACK, para ver el estado del puerto.

Este estado puede ser:

**UNFILTERED**
- El puerto NO esta bloqueado por un firewall

**FILTERED**
- El puerto esta bloqueado por un firewall.


Ejecuto el escaneo y veo que el puerto no está bloqueado:

`nmap 10.0.2.5 -Pn -n -p3306 -sA`

![[1.20.png]]

De hecho, en el archivo **/etc/passwd** había un usuario llamado **mysql**. 
Pero este usuario tiene un problema y es que **no se puede iniciar sesión con él debido a que no tiene una shell**, además tampoco puedo iniciar sesión con él, porque no se la contraseña.

![[1.19.png]]

Lo bueno es que en un apartado anterior he modificado este archivo para poder acceder como el usuario root, así que voy a hacer lo mismo que antes.

Con **openssl** genero el hash de una contraseña.

![[1.21.png]]

↓

![[1.22.png]]

Ya con esto, accedo al equipo objetivo por medio de ssh con el usuario mysql.

![[1.23 - mantener acceso.png]]

Ya con esto podría a volver a conectarme al equipo cuando quisiera, siendo esta una forma de mantener el acceso.

Y como no, desde este usuario también puedo elevar privilegios para ser root.

![[1.24.png]]

Ya como **root** intento acceder a la base de datos conectándome desde 127.0.0.1, osease, desde el propio equipo.

`mysql -h 127.0.0.1 -u mysql -p`

![[1.25.png]]

En cambio sí intento la conexión con el comando **mysql -u mysql -p** si que me permite conectarme a la base de datos.

`mysql -u mysql -p`

![[1.26.png]]

Esto se debe a que al poner un host, la conexión usa **TCP/IP** mientras que en la segunda conexión, se usa localhost por defecto. 
Puede ser que el usuario mysql no tenga configurados permisos para acceder usando TCP/IP y por eso no funcione.

Ya conectado visualizo las bases de datos con un:

`show database;`

![[1.27.png]]


Esa base de datos llamada **colapp** me llama la atención. 
Con un **use colapp** accedo a la base de datos y con un show tables visualizo las tablas que contiene esa base de datos.

`use colapp`
`show tables`

![[1.28.png]]

Esta es la base de datos del sitio web al que he accedido antes y se puede observar una tabla llamada **usuarios**. En el sitio web había un apartado para poder iniciar sesión.

Así que esta tabla usuarios contendrá los usuarios y contraseñas de ese inicio de sesión.

Visualizo el contenido de la tabla con un:

`select * from usuarios`

![[1.29.png]]

↓

![[1.30.png]]

---

#### Inyección SQL

Otra cosa que se puede hacer en el sitio web es, al darle al botón de búsqueda en la url aparecerá **busqueda=** .

![[1.33.1.png]]

Si ponemos en el final de la url una comilla simple y damos a enter el sitio web petará.

![[1.33.png]]

**¿A qué se debe esto?**

Al poner una comilla al final, el servidor no escapa ese carácter (que es lo que tendría que hacer si estuviera bien programada) si no que la interpreta como parte de una consulta SQL y como el servidor no se espera una ‘ pues se rompe la lógica de la petición y la página “peta”.

Otra forma de vulnerar la base de datos es con la herramienta **sqlmap**. 
Esta herramienta sirve para realizar pruebas de seguridad en aplicaciones web. 

Con el comando **sqlmap -u "https://10.0.2.5.:8080/colapp/cervezas?busqueda='"** lo que hará la herramientas es detectar vulnerabilidades de inyección SQL en el parámetro **busqueda**

`sqlmap -u "https://10.0.2.5.:8080/colapp/cervezas?busqueda='"`

![[1.34.png]]

Al final **sqlmap** me ha proporcionado la siguiente información:

![[1.35.png]]

sqlmap ha detectado que **el parámetro búsqueda es vulnerable a inyecciones sql** y es de tipo inyección SQL basada en tiempo. 
También **se muestra el payload** que es el código **que uso sqlmap** para comprobar la vulnerabilidad.

Y no solo eso, si no que además, la vulnerabilidad soporta inyección SQL basada en UNION lo cual significa que se puede inyectar una consulta que combine resultados con la búsqueda legítima del servidor. 

Esto puede ser usado para extraer datos de la base de datos.

Además de esto, también se muestra el **payload** con la que se ha descubierto esta vulnerabilidad.

Otra forma de usar sqlmap es con el parámetro **--tables**. 
Este parámetro lo que hace es sacar información de todas las tablas de todas las bases de datos existentes, además de mostrar las vulnerabilidades de la url proporcionada. 
Así que ejecuto el comando añadiendo el parámetro **--tables**.

![[1.36.png]]

Al ejecutarlo proporciona información sobre las bases de datos, mostrando las tablas que las componen. 
Por ejemplo, se pueden observar las tablas de la base de datos **colapp**.

![[1.37.png]]

Con **--dump** se pueden extraer información de las tablas de las bases de datos.

![[1.38.png]]

↓

![[1.39.png]]

