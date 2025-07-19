## Asignar roles de base de datos

Pasaremos a asignar diferentes roles a cada usuario. 
Sobre las BD01 y BD02 asignaremos el rol de **db_datareader** al usuario1 y al usuario2 le daremos permisos de **db_datareader** **db_datawriter**. 

<img width="383" height="470" alt="image" src="https://github.com/user-attachments/assets/708387d6-d6da-4903-8749-dff328110820" />

↓

<img width="440" height="390" alt="image" src="https://github.com/user-attachments/assets/402feeff-3bfa-4017-ad13-ee589f6a2818" />

Y observamos que ambos usuarios pueden ver las tablas de ambas BD. 

<img width="204" height="387" alt="image" src="https://github.com/user-attachments/assets/089c63bb-2c79-4ba0-a349-79a473f5ab31" />

↓

<img width="197" height="367" alt="image" src="https://github.com/user-attachments/assets/eee515b9-a87c-4673-8c21-df87174cf08f" />

Con el usuario1, podemos visualizar las tablas, mas no modficarlas, debido a que el rol que se le ha asignado, solo permite la visualización de tablas.

<img width="435" height="179" alt="image" src="https://github.com/user-attachments/assets/d878bfe4-ceb4-4d20-8931-8716e8a465e0" />

Mientras que el usuario2 si podemos, debido a que el rol **db_datawriter** le permite inserta, borrar y actualizar los datos de las tablas. 

<img width="481" height="167" alt="image" src="https://github.com/user-attachments/assets/9e8f1ff0-c461-4348-b98e-0c61eced3f92" />

Pero ninguno de los 2 puede crear una tabla, para ello deberían de tener el rol **db_ddladmin**.

<img width="576" height="200" alt="image" src="https://github.com/user-attachments/assets/febaa1ae-f563-4eb4-8555-953adf994609" />

---

## Crear un rol de base de datos 

Ahora, vamos a crear un rol de base de datos, el cual otorgue los permisos de crear tablas y crear vistas.

Para poder crear un nuevo rol, vamos a **BD>Seguridad>Roles>Nuevo>Nuevo rol de base de datos**. 

<img width="351" height="184" alt="image" src="https://github.com/user-attachments/assets/62e8e0c7-e75a-4360-8273-515eb5e6782a" />

Elegimos la BD y otorgamos los permisos

<img width="431" height="430" alt="image" src="https://github.com/user-attachments/assets/3ccc69b7-aff7-4e38-bbcd-9c51c9187224" />

↓

<img width="337" height="282" alt="image" src="https://github.com/user-attachments/assets/9598035b-5909-48f1-95f9-f12ae2e3a478" />

---

## Asignar el nuevo rol

Este nuevo rol será asignado al usuario1. 

<img width="478" height="364" alt="image" src="https://github.com/user-attachments/assets/724afef3-18ba-4f60-8df9-c1f6bb0568c8" />

↓

<img width="350" height="78" alt="image" src="https://github.com/user-attachments/assets/06a94629-86a8-460d-bb11-aec26c3cbfa5" />

Pero al intentar crear una nueva tabla o vista, me da un error, debido a que no hemos iniciado sesión como el propietario de la BD.

<img width="557" height="219" alt="image" src="https://github.com/user-attachments/assets/ea599bee-b7bd-41e2-966c-e2cff8df961a" />

Esto se debe a que, en SQL Server, los permisos a nivel de base de datos se aplican a toda la base de datos en lo que respecta a su ámbito de permisos. 

Por lo tanto, aunque un usuario tenga un rol que le permita crear vistas y tablas, si el usuario no es el propietario de la base de datos, puede que no pueda realizar ciertas modificaciones. 

---

## Permisos

Ahora, vamos a pasar de los roles a los permisos. 
Un rol nos permitía asignar varios permisos a la vez, pero los permisos hay que darlos de 1 en 1. 

Así, que ahora vamos a hacer que el usuario1, pueda ver la tabla **áreas**, pero no pueda hacer nada más y de la tabla **departamentos**, no pueda verla, pero si insertar y borrar registros.

<img width="364" height="361" alt="image" src="https://github.com/user-attachments/assets/504633c2-30f1-400b-8dd6-ed41492de2a7" />

↓

<img width="351" height="356" alt="image" src="https://github.com/user-attachments/assets/6b463507-9794-42e3-9000-6a752fa19dd7" />

Primero probaremos con la tabla **departamentos**.

<img width="434" height="31" alt="image" src="https://github.com/user-attachments/assets/0a3096db-8074-434f-973e-8ef7567aa9b8" />

↓

<img width="305" height="34" alt="image" src="https://github.com/user-attachments/assets/86bb38ab-dfe8-480f-afb7-5a6a2121ef1a" />

---

<img width="453" height="133" alt="image" src="https://github.com/user-attachments/assets/88ed109b-e211-45ad-bb56-c000290bd61b" />

↓

<img width="295" height="254" alt="image" src="https://github.com/user-attachments/assets/a0e473e8-6e57-4aac-8c32-ddde60426316" />

Y ahora con la BD **áreas**:

<img width="358" height="274" alt="image" src="https://github.com/user-attachments/assets/152ad1d6-e49a-4292-9606-29ae7571896c" />

↓

<img width="451" height="96" alt="image" src="https://github.com/user-attachments/assets/94c0e4d3-7d30-4ac5-9f16-55be33f9fada" />

Ahora,  para el usuario2, haremos que pueda visualizar el contenido de las tablas **DEPART y EMPLE** pero no pueda realizar ninguna otra acción. (eliminar, modificar etc) 

<img width="462" height="475" alt="image" src="https://github.com/user-attachments/assets/fb1b5062-7fb0-4b07-837c-98298fac72c6" />

Y lo probamos:

<img width="511" height="366" alt="image" src="https://github.com/user-attachments/assets/bfc3add0-9836-446d-928b-95be5e2cd27f" />

↓

<img width="453" height="157" alt="image" src="https://github.com/user-attachments/assets/be2b1a41-0690-4284-ab95-e1799c111c0d" />

↓

<img width="612" height="164" alt="image" src="https://github.com/user-attachments/assets/eab6b8c5-9b95-432b-9a41-78da191e84e3" />






















