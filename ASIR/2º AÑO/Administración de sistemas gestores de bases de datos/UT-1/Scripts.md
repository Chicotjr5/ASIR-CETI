### Importar la tabla provincias que se entrega aparte en formato XLS (Excel). 

Para importar una tabla en SQL SERVER 2014 debemos seguir los siguientes pasos: 

**Seleccionar base de datos>clic derecho>Importar datos**

<img width="568" height="430" alt="image" src="https://github.com/user-attachments/assets/f80fced1-c930-43a1-8fb0-918be454eb2e" />

Se inicia un asistente, el cual nos ayudará a importar la tabla. 

**Seleccionamos el origen de los datos y su formato.**

<img width="658" height="335" alt="image" src="https://github.com/user-attachments/assets/5e66a9f6-e7d2-45d1-ba86-9ef70370876b" />

**Y pasamos a especificar el servidor y base de datos destino.**

<img width="657" height="418" alt="image" src="https://github.com/user-attachments/assets/5f9c51c1-0bb7-4fc9-8f06-c0c5b322d69f" />

**Especificamos que queremos copiar los datos de las tablas, junto con las tablas**

<img width="653" height="376" alt="image" src="https://github.com/user-attachments/assets/f74713c1-6d56-436a-91df-89390844aeae" />

↓

<img width="665" height="228" alt="image" src="https://github.com/user-attachments/assets/9fccec71-205d-406d-965b-5e169f58a297" />

Y finaliza el asistente, sacando un resumen de la importación. 

<img width="661" height="452" alt="image" src="https://github.com/user-attachments/assets/b9f354a1-1e4a-4fe5-a71a-09c589426b4c" />

Se importa la tabla y podemos verla en la base de datos.

<img width="344" height="229" alt="image" src="https://github.com/user-attachments/assets/2f2034f1-74da-4b4a-bf27-de701bca682f" />


Las 3 últimas tablas no nos hacen falta, asi que las borramos.

#### Realizar cambios en la tabla 

Después de importar la tabla **prov$** tenemos que editarla, para que nos permita crear una clave primaria, además de cambiar los valores de los campos de las tablas. 

Vamos a **Herramientas>Opciones>Diseñadores>Desmarcamos la casilla “Impedir guardar cambios que requieran volver a crear las tablas”**

<img width="407" height="247" alt="image" src="https://github.com/user-attachments/assets/b74d8958-1616-486c-a8ab-01f258b591ba" />

↓

<img width="668" height="166" alt="image" src="https://github.com/user-attachments/assets/b4c50a44-8033-4e2b-8720-540768b98e97" />

Ya podemos modificar los valores de la tabla.

<img width="562" height="264" alt="image" src="https://github.com/user-attachments/assets/7ac397f9-b7ec-460c-967b-bdcb90e764c3" />

---

### Script SQL que cree las tablas y las restricciones (y la clave primaria de Provincias) 

Ahora toca crear el resto de tablas de la base de datos Alquiler. 
Usaremos el siguiente script: 

<img width="669" height="697" alt="image" src="https://github.com/user-attachments/assets/e804e0de-89ba-4d8e-8b97-0e4a256537a6" />

- El cuadro de color negro, remarca la modificación de la tabla provincias, para añadir la clave primaria.
- Los cuadros de color amarillo remarcan la creación de las claves foráneas
- Los cuadros de color verde las restricciones creadas

#### Ejecución del script

Copiaremos el contenido del script y lo pegaremos en una nueva consulta que generaremos en el servidor. 

<img width="468" height="536" alt="image" src="https://github.com/user-attachments/assets/8377ac29-63bd-47aa-b7e0-df2043ce1818" />

Refrescamos la instancia y vemos que se han creado las tablas. 

<img width="342" height="300" alt="image" src="https://github.com/user-attachments/assets/eb0def6b-aa98-4e93-8a3f-7eeb73be5722" />

#### Comprobación

Para ver que todo está correcto, de cada tabla, veremos sus claves y restricciones

**Alquila**

<img width="318" height="169" alt="image" src="https://github.com/user-attachments/assets/3a285448-99e3-4bc0-9daa-0231070b27d4" />

**Cliente**

<img width="314" height="109" alt="image" src="https://github.com/user-attachments/assets/88e7d5f8-1345-4792-9725-dd4bb166040c" />

**Coche**

<img width="315" height="169" alt="image" src="https://github.com/user-attachments/assets/31d5d1f5-4937-48f7-a10f-9106252cf6e1" />

**Oficina**

<img width="315" height="115" alt="image" src="https://github.com/user-attachments/assets/a7d9c878-f4df-4b6b-a7e6-e42739abf799" />

**Prov$**

<img width="300" height="91" alt="image" src="https://github.com/user-attachments/assets/4c546b71-26f1-4ad2-945e-b716014d9298" />

---

### Script SQL que inserte datos en las tablas

Seguiremos con los scripts, ahora haciendo uno que inserte datos en las tablas. 
Este script es muy fácil, puesto que es hacer consultas INSERT todo el rato. 

<img width="669" height="556" alt="image" src="https://github.com/user-attachments/assets/8c611f6a-1ee4-4648-acfa-c715c3b49828" />

La única dificultad que tiene este script, es que al insertar los datos en la tabla oficina, no podemos insertar directamente campo ID_Oficina, porque anteriormente hemos puesto que ese valor empieza en 1 y por cada valor, debe de ir incrementando en 1. 

Así que insertamos los datos, pero solo de los campos PROVINCIA y Teléfono. 
 
Además hay que tener cuidado con el orden con el que metemos los datos, porque si metemos los datos de una tabla que necesita los datos de otra antes de esa tabla, nos dará un error (por ejemplo, insertar antes los datos de Alquila que los de Coche o Cliente) 

#### Ejecución del script 

Copiamos el script y lo pegamos en una nueva consulta, para ejecutarlo. 

<img width="669" height="613" alt="image" src="https://github.com/user-attachments/assets/c43e0daa-6173-4cb0-b53c-37996fa21818" />

#### Comprobación 

Para ver que se han añadido todos los datos, hacemos un 

```sql
SELECT * FROM “tabla”. 
```

<img width="667" height="808" alt="image" src="https://github.com/user-attachments/assets/b73a1e5b-af9a-48bb-8d3a-ed3bdf273407" />

---

### Diagrama de SQL Server 

Con este diagrama, podemos ver perfectamente las relaciones entre cada tabla. 

<img width="666" height="445" alt="image" src="https://github.com/user-attachments/assets/fdfcd979-192b-44f4-9a07-198ec496d9f5" />

---

### Script que borre las tablas

Para borrar las tablas, crearemos otro Script, pero esta vez, hay 2 formas de borrarlas.

#### Borrar tablas en orden

La forma más fácil, es borrar las tablas en un orden específico, borrando primero las que tienen restricciones/claves foráneas a otras tablas, debido a que si borramos primero una tabla, de la cual depende una clave foránea de otra tabla, nos dará un error. 

El orden para borrarlas bien es el siguiente: 

<img width="249" height="138" alt="image" src="https://github.com/user-attachments/assets/3dad6358-77ef-4f8b-aa38-aa818b29bb73" />

Copiamos y pegamos en el servidor el script para ejecutarlo 

<img width="332" height="175" alt="image" src="https://github.com/user-attachments/assets/e860dc3a-c180-41d5-a537-fc3225d98ea5" />

Y vemos que se han borrado las tablas. 

<img width="268" height="113" alt="image" src="https://github.com/user-attachments/assets/136314a5-5fdb-4aa0-b3f4-f2ddf414e540" />

#### Borrar claves y luego tablas

Otra forma, algo más complicada, es el primero borrar las restricciones de las claves foráneas y luego borrar las tablas. 
Así nos aseguramos de que no haya ningún error. 
El script quedaría así:

<img width="652" height="204" alt="image" src="https://github.com/user-attachments/assets/36fcb377-532b-40b8-9548-74d1e7fe1317" />

Lo copiamos y pegamos en una nueva consulta para ejecutarlo.

<img width="589" height="284" alt="image" src="https://github.com/user-attachments/assets/fc17ab4b-fb82-4c9a-8bfc-798bed6b3f5e" />

Y vemos que se han borrado las tablas.

<img width="370" height="157" alt="image" src="https://github.com/user-attachments/assets/67ce66d8-7aca-49f0-aa35-98a9aea0e3a8" />





































 
