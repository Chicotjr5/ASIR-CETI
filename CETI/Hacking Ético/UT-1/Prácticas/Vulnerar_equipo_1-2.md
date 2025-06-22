<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Escalar privilegios](#escalar-privilegios)
- [Capturar flags](#capturar-flags)
- [Vulnerar sitio web](#vulnerar-sitio-web)
  - [Base de datos](#base-de-datos)
  - [Inyección SQL](#inyección-sql)

</details>

## Introducción

Esta es una continuación de la práctica **Vulnerar_equipo_1** donde se va a explorar aún más la máquina vulnerable y a realizar más ataques.

---

### Escalar privilegios

Al final de la práctica anterior descubrí cual era la contraseña del usuario **ftpuser**, así que con esa información voy a realizar una conexión por ssh al objetivo.

![1 1](https://github.com/user-attachments/assets/e122c920-a226-4957-a065-3f9a76555d1c)


Ya conectado echamos un vistazo al archivo **/etc/passwd**. 
En ese archivo se guarda la información de los usuarios del sistema, como su nombre, UUID, grupo al que pertenece y lo más importante, su contraseña. 
Los usuarios que más interés generan son los usuarios que ya descubrí anteriormente junto con el usuario **root**.

![1 4_LAX](https://github.com/user-attachments/assets/01dbee8f-cd5f-4d82-92d5-624b9eb1a305)


En cada línea de usuario podemos ver una X. Esta hace referencia a que la contraseña se encuentra cifrada en otro archivo.

![1 5](https://github.com/user-attachments/assets/1e5b6fe4-4930-426b-a131-a20ab4ef8485)



Este archivo es el **/etc/shadow**. Al intentar ver su contenido, el sistema nos dirá que no podemos puesto que este archivo tiene permisos de lectura y escritura solo para el usuario **root**.

![1 2](https://github.com/user-attachments/assets/56db154b-3df6-4f5b-816f-10f70abffe95)


Si intento escalar privilegios, no podré debido a que el usuario ftpuser no se encuentra en el archivo sudoers. En este archivo se indica que usuarios pueden escalar privilegios. 
Si un usuario no se encuentra en este archivo no podrá escalar privilegios.

![1 6 1](https://github.com/user-attachments/assets/ddf734d2-aaad-4ed4-82b0-176972f36dea)


Pero hay una forma de arreglar esto.

En el archivo **/etc/passwd tengo permisos de lectura y de escritura**. 
Si en la **X del usuario root pongo una contraseña cifrada** que haya creado previamente, podré escalar privilegios con el usuario root.

Para generar esta contraseña usaré **openssl**.

![1 6 -generar contraseña con hash](https://github.com/user-attachments/assets/a3c8e381-7ad4-42b4-a641-cee719130e9c)


Ya con el hash de la contraseña generado, edito el archivo **/etc/passwd.**

![1 9](https://github.com/user-attachments/assets/85df39dd-a227-47b3-b314-417fe858ab69)


Guardo el archivo y escalo privilegios:

![1 10](https://github.com/user-attachments/assets/94c4dffc-4a0b-4fc1-8322-49cae29a8555)


---

### Capturar flags

Como sé que algunos usuarios tienen archivos que se llaman flag.txt lo que voy a hacer es buscar en el sistema todos los archivos que se llamen así (quizá descubro otro archivo nuevo).

Con el siguiente comando visualizo el contenido de cada archivo:

```bash
find / -name *flag.txt
```

![1 11](https://github.com/user-attachments/assets/91a8da19-215f-41b5-af94-e212a28197c0)


↓

![1 12](https://github.com/user-attachments/assets/d4068361-16a7-4b61-92b0-214b0e2d56ae)


El contenido parece ser un hash creado con MD5. 
Al pasar estos hashes por https://md5decrypt.net/en/ se puede ver su contenido:


![1 12 1](https://github.com/user-attachments/assets/bf388d88-b6c1-4091-957d-a9a610ba4edf)



---

### Vulnerar sitio web

#### Base de datos

Al hacer el escáner de puertos del objetivo, no solo estaban el servicio **ftp** y **ssh** abiertos, si no que también estaba el servicio **http**, así que eso quiere decir que hay una página web a la que podemos acceder (y podemos vulnerar).

Para conectarme es tan simple como ir al navegador web y poner la IP de la máquina objetivo.

![1 18](https://github.com/user-attachments/assets/a2cd4141-d101-43c4-ab62-2d5ad4aa0a25)


Si hay un sitio web, también hay por detrás una base de datos.
Vuelvo a hacer un escaneo de los puertos de la máquina objetivo, pero esta vez apuntando al puerto **3306** y realizando un escaneo ACK, para ver el estado del puerto.

Este estado puede ser:

**UNFILTERED**
- El puerto NO esta bloqueado por un firewall

**FILTERED**
- El puerto esta bloqueado por un firewall.


Ejecuto el escaneo y veo que el puerto no está bloqueado:

```bash
nmap 10.0.2.5 -Pn -n -p3306 -sA
```

![1 20](https://github.com/user-attachments/assets/c7f282a5-83ee-420d-8e35-725e6cd031a5)


De hecho, en el archivo **/etc/passwd** había un usuario llamado **mysql**. 
Pero este usuario tiene un problema y es que **no se puede iniciar sesión con él debido a que no tiene una shell**, además tampoco puedo iniciar sesión con él, porque no se la contraseña.

![1 19](https://github.com/user-attachments/assets/52064faa-f1e9-4efa-b453-715d66148ecd)


Lo bueno es que en un apartado anterior he modificado este archivo para poder acceder como el usuario root, así que voy a hacer lo mismo que antes.

Con **openssl** genero el hash de una contraseña.

![1 21](https://github.com/user-attachments/assets/f4c01e31-274c-4aa4-9178-924bc5801048)


↓

![1 22](https://github.com/user-attachments/assets/121b57b4-913d-41c0-9e79-87fb4a8d112e)


Ya con esto, accedo al equipo objetivo por medio de ssh con el usuario mysql.

![1 23 - mantener acceso](https://github.com/user-attachments/assets/2a40c44c-5cb4-4b38-a7d9-809300964e57)


Ya con esto podría a volver a conectarme al equipo cuando quisiera, siendo esta una forma de mantener el acceso.

Y como no, desde este usuario también puedo elevar privilegios para ser root.

![1 24](https://github.com/user-attachments/assets/5381986c-a30e-4a6d-896e-9d6933714017)


Ya como **root** intento acceder a la base de datos conectándome desde 127.0.0.1, osease, desde el propio equipo.

```bash
mysql -h 127.0.0.1 -u mysql -p
```

![1 25](https://github.com/user-attachments/assets/f0af7a9b-f8f7-46b0-a769-05d207191052)


En cambio sí intento la conexión con el comando **mysql -u mysql -p** si que me permite conectarme a la base de datos.

```bash
mysql -u mysql -p
```

![1 26](https://github.com/user-attachments/assets/2cd92039-cffd-4ede-b92a-e02de625d5d1)


Esto se debe a que al poner un host, la conexión usa **TCP/IP** mientras que en la segunda conexión, se usa localhost por defecto. 
Puede ser que el usuario mysql no tenga configurados permisos para acceder usando TCP/IP y por eso no funcione.

Ya conectado visualizo las bases de datos con un:

```bash
show database;
```

![1 27](https://github.com/user-attachments/assets/f8cdbf13-d8aa-43b2-b76b-614f27483c83)



Esa base de datos llamada **colapp** me llama la atención. 
Con un **use colapp** accedo a la base de datos y con un show tables visualizo las tablas que contiene esa base de datos.

```bash
use colapp
```
```bash
show tables
```

![1 28](https://github.com/user-attachments/assets/782e1bc1-d8d8-4029-8f74-eb5d6dc83951)


Esta es la base de datos del sitio web al que he accedido antes y se puede observar una tabla llamada **usuarios**. En el sitio web había un apartado para poder iniciar sesión.

Así que esta tabla usuarios contendrá los usuarios y contraseñas de ese inicio de sesión.

Visualizo el contenido de la tabla con un:

```bash
select * from usuarios
```

![1 29](https://github.com/user-attachments/assets/5d593325-c96f-4d63-9c6f-8ee275ed7fad)


↓

![1 30](https://github.com/user-attachments/assets/fc9afdb9-00a5-417d-b327-a4148e493eb4)


---

#### Inyección SQL

Otra cosa que se puede hacer en el sitio web es, al darle al botón de búsqueda en la url aparecerá **busqueda=** .

![1 33 1](https://github.com/user-attachments/assets/7a8269fe-dd9c-4817-8a23-d9f7d1fb0ef8)



Si ponemos en el final de la url una comilla simple y damos a enter el sitio web petará.

![1 33](https://github.com/user-attachments/assets/5d10a002-82d6-4ed1-b908-f9ace940bef3)


**¿A qué se debe esto?**

Al poner una comilla al final, el servidor no escapa ese carácter (que es lo que tendría que hacer si estuviera bien programada) si no que la interpreta como parte de una consulta SQL y como el servidor no se espera una ‘ pues se rompe la lógica de la petición y la página “peta”.

Otra forma de vulnerar la base de datos es con la herramienta **sqlmap**. 
Esta herramienta sirve para realizar pruebas de seguridad en aplicaciones web. 

Con el comando **sqlmap -u "https://10.0.2.5.:8080/colapp/cervezas?busqueda='"** lo que hará la herramientas es detectar vulnerabilidades de inyección SQL en el parámetro **busqueda**

```bash
sqlmap -u "https://10.0.2.5.:8080/colapp/cervezas?busqueda='"
```

![1 34](https://github.com/user-attachments/assets/97773ec4-2b73-4d89-bc1e-6b61650cda22)


Al final **sqlmap** me ha proporcionado la siguiente información:

![1 35](https://github.com/user-attachments/assets/42367477-3ccf-40b0-bb8e-83e34eecab44)


sqlmap ha detectado que **el parámetro búsqueda es vulnerable a inyecciones sql** y es de tipo inyección SQL basada en tiempo. 
También **se muestra el payload** que es el código **que uso sqlmap** para comprobar la vulnerabilidad.

Y no solo eso, si no que además, la vulnerabilidad soporta inyección SQL basada en UNION lo cual significa que se puede inyectar una consulta que combine resultados con la búsqueda legítima del servidor. 

Esto puede ser usado para extraer datos de la base de datos.

Además de esto, también se muestra el **payload** con la que se ha descubierto esta vulnerabilidad.

Otra forma de usar sqlmap es con el parámetro **--tables**. 
Este parámetro lo que hace es sacar información de todas las tablas de todas las bases de datos existentes, además de mostrar las vulnerabilidades de la url proporcionada. 
Así que ejecuto el comando añadiendo el parámetro **--tables**.

![1 36](https://github.com/user-attachments/assets/a709c1b4-feb5-41f2-81be-a89a26b8b142)


Al ejecutarlo proporciona información sobre las bases de datos, mostrando las tablas que las componen. 
Por ejemplo, se pueden observar las tablas de la base de datos **colapp**.

![1 37](https://github.com/user-attachments/assets/003e9a83-6bfd-4c2b-8a74-549b300fb931)


Con **--dump** se pueden extraer información de las tablas de las bases de datos.

![1 38](https://github.com/user-attachments/assets/d0293956-92eb-4f8a-a725-a70aa1661f25)


↓

![1 39](https://github.com/user-attachments/assets/86a19f24-afc6-494b-9a43-8f659eebf101)


