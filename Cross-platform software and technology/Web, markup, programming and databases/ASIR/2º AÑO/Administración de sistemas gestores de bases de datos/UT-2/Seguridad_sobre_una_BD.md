## Crear BD empleados 

Creamos la BD y las tablas que usaremos durante la práctica: 

<img width="810" height="450" alt="image" src="https://github.com/user-attachments/assets/9a3a977f-eb89-482e-a537-9cd853340277" />

---

## Crear tres conexiones para los usuarios user1, user2 y user3. 

El siguiente paso, es crear los usuarios y login que usaremos. 
Primero lo hacemos con **SQL**. 

<img width="264" height="232" alt="image" src="https://github.com/user-attachments/assets/8b36341d-4182-49b2-bbd0-c706d51014e7" />

↓

<img width="229" height="201" alt="image" src="https://github.com/user-attachments/assets/fd0f2b9f-efd0-4446-8c23-c02d33977939" />

Y ahora con interfaz gráfica.

<img width="625" height="160" alt="image" src="https://github.com/user-attachments/assets/3ac45dc7-c977-4f31-9664-af7f17af5849" />

↓

<img width="632" height="200" alt="image" src="https://github.com/user-attachments/assets/d0f8739f-97ab-4e38-9312-39492753bb0b" />

↓

<img width="162" height="118" alt="image" src="https://github.com/user-attachments/assets/623c012c-16e9-4a98-a3d9-9bd6b49f15a4" />

↓

<img width="166" height="117" alt="image" src="https://github.com/user-attachments/assets/2579f666-09a8-46ff-a20c-fcc851658408" />

---

## Conceder privilegios de SELECT y UPDATE sobre la tabla EMPLE a user1 y que se los pueda asignar a otro 

El siguiente paso, es dar permisos de **SELECT y UPDATE** al user1 sobre la tabla **EMPLE**.

<img width="505" height="33" alt="image" src="https://github.com/user-attachments/assets/187e9b20-a260-46d3-b12f-1f51e5dcd64a" />

Con interfaz gráfica, es algo más complejo: 

<img width="602" height="221" alt="image" src="https://github.com/user-attachments/assets/dbfbe31f-5de5-4b4d-81fc-0788a6fc0714" />

↓

<img width="588" height="32" alt="image" src="https://github.com/user-attachments/assets/523d390e-0bf9-432c-ba79-ce0b781bfe93" />

↓

<img width="580" height="34" alt="image" src="https://github.com/user-attachments/assets/66e27967-67e3-46da-9cef-e51648cf1afb" />

---

## Comprobar 

Ahora, comprobamos el correcto funcionamiento de los permisos concedidos. 
Sobre **EMPLE** si podemos hacer un SELECT, pero no sobre **DEPART**. 

<img width="680" height="345" alt="image" src="https://github.com/user-attachments/assets/b44fe89a-ba36-4f9d-9bf8-ce5ebb8ad35a" />

↓

<img width="455" height="151" alt="image" src="https://github.com/user-attachments/assets/76d46bb8-71d4-47f8-8593-76e9608fa7f8" />

---

## Con user1, conceder esos privilegios a user2 

El siguiente paso, es asignar con **user1** esos permisos a **user2** 
Mediante **SQL** es muy sencillo, tan solo tenemos que poner el siguiente comando: 

<img width="386" height="163" alt="image" src="https://github.com/user-attachments/assets/75473474-4d4a-4e9d-b169-92160620ea63" />

Nos conectamos y lo comprobamos. 

<img width="562" height="278" alt="image" src="https://github.com/user-attachments/assets/a24050bd-d523-4cc3-95d7-74a7552026d8" />

---

## Crear un rol y asignarle el permiso de crear tablas y dos privilegios de objetos

Usaremos las siguientes órdenes

<img width="352" height="142" alt="image" src="https://github.com/user-attachments/assets/e13da692-2e4c-4b1f-af14-bd8336a3059a" />

Con interfaz gráfica, como siempre, es más enrevesado.

<img width="299" height="40" alt="image" src="https://github.com/user-attachments/assets/98412c3c-785e-499d-89b4-074c6768b828" />

↓

<img width="585" height="125" alt="image" src="https://github.com/user-attachments/assets/062b2a85-00cc-4112-be6e-477a4e97180d" />

↓

<img width="625" height="63" alt="image" src="https://github.com/user-attachments/assets/c6da1144-3229-45a6-b67c-3dbf84daf01e" />

<img width="538" height="107" alt="image" src="https://github.com/user-attachments/assets/94fae377-dc93-485a-b840-83e6c343d77e" />

↓

<img width="617" height="28" alt="image" src="https://github.com/user-attachments/assets/e54274f9-cf16-475c-b01c-b410d77c8dab" />

↓

<img width="569" height="32" alt="image" src="https://github.com/user-attachments/assets/3d970d91-1692-4b92-a7a5-38157046bea9" />

---

## Asignar este rol a user3

Con comandos, solo hay que poner:

<img width="529" height="173" alt="image" src="https://github.com/user-attachments/assets/47936310-d84f-4bb5-b993-9352f9bda0a3" />

Vamos a las propiedades de **user3** y le añadimos le rol **ejer6_2.**

<img width="507" height="429" alt="image" src="https://github.com/user-attachments/assets/92a04136-066b-4374-bd1b-b7b0c8fe1bbd" />

---

## Comprobación

No conectamos con user3 y comprobamos el funcionamiento:

<img width="728" height="360" alt="image" src="https://github.com/user-attachments/assets/34feff8a-d87e-4d69-8159-589d95c37754" />
