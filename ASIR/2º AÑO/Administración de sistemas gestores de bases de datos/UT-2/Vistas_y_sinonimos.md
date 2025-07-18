## Crear el script SQL de creación de las tablas y añadir unos datos ejemplo 

Esta práctica va a tratar sobre la creación de diferentes vistas, además de que comprobaremos su funcionamiento. 
Pero antes, tenemos que crear las tablas, usando los siguientes scripts: 

<img width="437" height="187" alt="image" src="https://github.com/user-attachments/assets/d0f23be9-d733-40c8-94fd-cedcd71ff0c2" />

Y con los siguientes datos:

<img width="470" height="401" alt="image" src="https://github.com/user-attachments/assets/da86ee95-9085-4095-a321-076f581d37e5" />

---

## Crear una vista con todas las columnas de alumnos. Justifica si es actualizable. Prueba un par de casos. 

Para crear esta vista, usaremos el siguiente script:

<img width="256" height="47" alt="image" src="https://github.com/user-attachments/assets/512ee487-b265-4684-bda3-3bfff0e88e9e" />

Esta vista si es actualizable, debido a que la vista selecciona todas las columnas de la tabla alumnos, incluida la clave primaria, lo que permite identificar de manera única cada fila. Asi que, podemos realizar operaciones de inserción, actualización y eliminación a través de esta vista. 

Por ejemplo, si intentamos actualizar los datos de un alumno, podemos hacerlo 
perfectamente.

<img width="208" height="65" alt="image" src="https://github.com/user-attachments/assets/dfab8277-445f-425b-b035-e8bde5eac376" />

↓

<img width="427" height="56" alt="image" src="https://github.com/user-attachments/assets/7cf11acf-9d9c-43de-8c9b-758c4d013e59" />

---

## Crear una vista que no contiene la clave primaria y contiene sólo algunos campos como el nombre y nota de los alumnos. Indica si es actualizable, explicando por qué. Prueba un par de casos. 

En esta vista, solo vamos a incluir el nombre y nota de los alumnos

<img width="278" height="42" alt="image" src="https://github.com/user-attachments/assets/97b4a5a1-0347-43b4-9273-dbc76f9a5fa5" />

Obteniendo el siguiente resultado: 

<img width="254" height="171" alt="image" src="https://github.com/user-attachments/assets/59f2ac4c-7a88-43e1-b0d9-ef335568ecf9" />

Si intentamos actualizar esta vista o insertar datos nuevos, si podremos, aunque en mi captura sale que no, pero esoes debido a que intente poner 7.5 de nota, pero en ve de poner un punto, puse una coma, así que SQL me lo pilla como si fueran 3 valores en vez de 2 

<img width="665" height="150" alt="image" src="https://github.com/user-attachments/assets/6b82cda1-3584-4097-a305-6b1ad377fb7b" />

---

## Crear una vista que contiene sólo algunos campos como el id, nombre e Internet de los alumnos. Indica si es actualizable, explicando por qué. Comprueba.

En esta vista, vamos a incluir los campos de **id_alumno el nombre e internet**. 

<img width="410" height="54" alt="image" src="https://github.com/user-attachments/assets/3c279af1-3a85-4274-9ae7-8c538b7bf4e5" />

Obteniendo el siguiente resultado:

<img width="307" height="170" alt="image" src="https://github.com/user-attachments/assets/2ad82288-d046-439e-ae3b-11d5a79d51a1" />

Si intentamos actualizar los datos de esta vista, si podremos, debido a que en esta vista si incluimos los datos **NOT NULL**.

<img width="292" height="187" alt="image" src="https://github.com/user-attachments/assets/1d1842fc-81d9-4012-8f8e-e3a9bb0f7f6b" />

↓

<img width="360" height="173" alt="image" src="https://github.com/user-attachments/assets/7ee8732c-c018-498a-bf43-fa1ffe08fd9e" />

---

## Crear una vista que contiene sólo algunos campos como el id, nombre y nota de los alumnos. Indica si es actualizable, explicando por qué. Comprueba con INSERT y con UPDATE de nota

Ahora, crearemos una vista, con los campos de **id_alumno, nombre y nota.**

<img width="371" height="42" alt="image" src="https://github.com/user-attachments/assets/51c30681-37e8-4b69-90e5-2875874a42ec" />

**¿La vista es actualizable?**

Si y no. 
Si intentamos hacer un **INSERT** no podremos, debido a que tenemos un valos **NOT NULL** faltante en esta vista, el cual es **id_profesor**.

<img width="666" height="107" alt="image" src="https://github.com/user-attachments/assets/b2b6eb46-6fa4-4143-8cdc-046c62558198" />

En cambio, si podemos hacer un **UPDATE**, debido a que está la clave primaria de la tabla **ALUMNOS** 

<img width="271" height="164" alt="image" src="https://github.com/user-attachments/assets/61aabe70-4798-4f0b-9491-b2a15b911dae" />

↓

<img width="304" height="262" alt="image" src="https://github.com/user-attachments/assets/b08371ff-8ab5-4add-90b8-66b4f8454bab" />

---

## Crear una vista que contiene el id_profesor y las notas medias de sus alumnos. Indica si es actualizable, explicando por qué. Compruébalo. 

Para crear esta vista, usaremos el siguiente script:

<img width="373" height="92" alt="image" src="https://github.com/user-attachments/assets/76f53c90-460d-4b0c-98c6-7d8a2a0bdea5" />

Obteniendo el siguiente resultado. 

<img width="330" height="182" alt="image" src="https://github.com/user-attachments/assets/c906f079-7207-44cf-bfe2-2fcc05bb1a7a" />

Si intentamos hacer un **UPDATE** o un **INSERT**, no podremos, debido a que contiene una función de agregación (AVG()), lo que significa que los datos resultantes son un cálculo basado en múltiples filas, y no se pueden rastrear a una fila específica en la tabla subyacente.  
Las vistas que contienen funciones de agregación, **GROUP BY**, o cualquier tipo de cálculo que combine filas, no permiten operaciones de inserción o actualización directamente a través de ellas. 
Si lo comprobamos, veremos que no podemos hacer ninguna de esas operaciones.

<img width="670" height="117" alt="image" src="https://github.com/user-attachments/assets/38e77fa7-51d0-4694-9028-045716bb0bb2" />

↓

<img width="668" height="124" alt="image" src="https://github.com/user-attachments/assets/9ded2108-d2a2-455b-887c-337e3b4a06dc" />

---

## Crear una vista que contiene el nombre_profesor y su número de alumnos Indica si es actualizable, explicando por qué. Compruébalo 

Para crear esta vista, usaremos el siguiente script:

<img width="600" height="95" alt="image" src="https://github.com/user-attachments/assets/489a36d3-e2db-47af-9a97-c6b5d62d82b1" />

El resultado de esta vista es el siguiente: 

<img width="430" height="222" alt="image" src="https://github.com/user-attachments/assets/ec9633ff-e93f-4b49-8ec4-978aed3b5922" />

Otra vez, esta vista no es actualizable, debido a que contiene una función de agregación **COUNT())** y una cláusula **GROUP BY**, lo que significa que los datos resultantes son un cálculo basado en múltiples filas de la tabla **ALUMNOS**. 

<img width="670" height="97" alt="image" src="https://github.com/user-attachments/assets/004ad9f0-d619-4d11-99fb-5f69a2d84d79" />

↓

<img width="669" height="122" alt="image" src="https://github.com/user-attachments/assets/edcccf12-0ddb-44e2-a5dd-bb5aaa7385d4" />

---

## Crear una vista con los datos de todos los alumnos que tienen una nota mayor o igual a 6 y con el nombre del profesor

Para poder hacer esta vista, usaremos el siguiente script:

<img width="500" height="168" alt="image" src="https://github.com/user-attachments/assets/4c4fc01b-8db5-418c-886f-bfbe1042940a" />

Para ver que lo hemos hecho bien, sacaremos su contenido por pantalla.

<img width="312" height="391" alt="image" src="https://github.com/user-attachments/assets/5ba2d378-bf9e-4224-8900-d75f72a8cf59" />

---

## Ver si la vista es actualizable al insertar un nuevo alumno calificado por el profesor con id 1. ¿Alguna tabla se ha actualizado? 

Si intentamos insertar algún alumno nuevo, veremos que no podemos y que no se actualiza ninguna de las tablas. 

Esta vista no se puede realizar, debido a que la inserción que estamos haciendo, como bien pone en el error, afecta a varias tablas.

<img width="816" height="121" alt="image" src="https://github.com/user-attachments/assets/6fed6ace-db97-46d1-a11d-62f5819d0a7a" />

---

## Ver si la vista es actualizable al corregir una nota de un alumno concreto.

Aunque no podamos insertar nuevos alumnos, si podemos actualizar los datos de esta vista, como vemos a continuación.

<img width="372" height="201" alt="image" src="https://github.com/user-attachments/assets/8f98a080-b542-46c0-b84b-c5459fe5f22a" />

↓

<img width="366" height="186" alt="image" src="https://github.com/user-attachments/assets/b60ea2ac-1b6f-4c65-8c28-8eb6330dea44" />

---

## Insertar en la vista un alumno con nota inferior a 6. ¿se ve en la vista? ¿se inserta en la tabla? 

Al igual que antes, que no podíamos insertar un alumno, si ahora lo intentamos insertar, teniendo una nota inferior a 5, nos dará el mismo error.

<img width="668" height="133" alt="image" src="https://github.com/user-attachments/assets/e82a78df-3dde-4ed5-ad97-a0087f9969a7" />

Además, tampoco se insertará en la tabla.

---

## Hay algún modo de evitar que en el caso anterior no deje cambiar datos no incluidos en la vista. Justifícalo

En SQL Server, como las vistas no almacenan datos, sino que solo muestran los datos de las tablas subyacentes no podemos actualizar directamente una vista que se basa en múltiples tablas o que incluye una cláusula `WHERE`. 
Así que la solución sería crear vistas actualizables, que nos permitan realizar esos cambios, o por otra parte sería realizar estas operaciones directamente en la tabla. 
Luego, podríamos consultar la vista para ver los datos actualizados.

---

## Eliminar la última vista que creaste

Con un 

```sql
Drop View nombre_de_la_vista
```
podemos borrar cualquier vista que hayamos creado

<img width="302" height="101" alt="image" src="https://github.com/user-attachments/assets/19aa5752-e1d0-4574-9a47-a9282a78c58f" />

---

## Busca dos ejemplos de vistas no-actualizables atendiendo cada uno a criterios diferentes. Comprueba si permite o no hacer INSERT, UPDATE y DELETE en la misma. 

Ahora crearemos las siguientes vistas: 

<img width="526" height="265" alt="image" src="https://github.com/user-attachments/assets/9281ef0c-cf2d-4001-887f-f091d160529e" />

La primera no es actualizable, debido a que tiene una función **AVG** y la segunda, debido a que se basa en la **unión** de las tablas ALUMNOS y PROFESORES.

Y ahora, vamos a comprobarlo:

<img width="740" height="179" alt="image" src="https://github.com/user-attachments/assets/be7713a1-52af-464b-aba2-c12a75f04979" />

↓

<img width="832" height="98" alt="image" src="https://github.com/user-attachments/assets/4c552a1c-0327-4151-9b01-a4d6b7cde84b" />

↓

<img width="740" height="150" alt="image" src="https://github.com/user-attachments/assets/49b882dd-6162-45ba-8822-85b88d668236" />

---

## Prueba los sinónimos usando tablas y vistas. 

Ahora vamos a pasar a usar sinónimos. 
Los sinónimos en SQL nos permiten nombrar un objeto de la BD de una forma más simple. 
Como por ejemplo, para la tabla **Alumnos**: 

<img width="323" height="383" alt="image" src="https://github.com/user-attachments/assets/b6d742d3-91ef-4d81-8f0f-400ab2ab6829" />

O para la vista **vista_alumnos** 

<img width="345" height="399" alt="image" src="https://github.com/user-attachments/assets/238bc621-8d04-4691-8d37-16f0e31b707c" />

---

## Presentar una pantalla que despliegue todas las vistas y sinónimos actuales 

<img width="407" height="493" alt="image" src="https://github.com/user-attachments/assets/14dfe0da-fc04-4adf-a162-f04aed91ce70" />

































































