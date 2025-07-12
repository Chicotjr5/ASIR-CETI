## Crea los siguientes objetos

### Unidades organizativas

En esta nueva práctica, vamos a crear diferentes objetos en nuestro dominio. 
Lo primero que haremos será crear las unidades organizativas **UO_Informática, UO_Comercio y UO_Administración**.

Para ello, vamos a **Usuarios y sitios de Active Directory>Nuevo>Unidad Organizativa**

<img width="415" height="283" alt="image" src="https://github.com/user-attachments/assets/4528891f-5d0f-4f59-af4c-7cd3af70c57c" />

↓

<img width="316" height="121" alt="image" src="https://github.com/user-attachments/assets/2e97a815-499d-410a-9f81-021434d3a6b5" />

Y dentro de la UO_Informática, crearemos otras 3 Unidades organizativas, de la firma forma que hemos creado las 3 anteriores.

<img width="158" height="114" alt="image" src="https://github.com/user-attachments/assets/6fd60bc5-42db-4080-b893-ed2c3c0caa84" />

#### Crea UO_Prueba 

Ahora, vamos a crear otra unidad organizativa para probar la protección contra eliminación accidental. 

<img width="288" height="137" alt="image" src="https://github.com/user-attachments/assets/9757d745-e13d-45d0-8619-ee085b5b0b72" />

Al marcar esta opción en la creación de una UO, no podremos eliminar la unidad organizativa. 
Vemos que no podemos ni eliminarla ni moverla. 

<img width="786" height="147" alt="image" src="https://github.com/user-attachments/assets/36845c20-3e8d-4d66-9c1c-9849ae93cd7b" />

Ahora, vamos a visualizar los permisos que tiene esta Unidad Organizativa en **Ver>Características avanzadas**. 

<img width="462" height="296" alt="image" src="https://github.com/user-attachments/assets/fe779b65-3486-447a-8e81-92455e044bd8" />

Dentro de las propiedades de UO_Prueba>Seguridad veremos que hay una directiva de seguridad, que deniega los permisos de Eliminar a todos los usuarios. 

<img width="282" height="179" alt="image" src="https://github.com/user-attachments/assets/605e605d-4cea-4ec4-8ba9-34d0ad1d57c8" />

Así que eliminaremos los permisos, para poder borrar la unidad organizativa. 

<img width="608" height="192" alt="image" src="https://github.com/user-attachments/assets/848e42fd-b0cf-44a7-8861-6b3369253559" />

Una vez quitamos los permisos, ya podemos eliminar la Unidad organizativa.

<img width="453" height="99" alt="image" src="https://github.com/user-attachments/assets/d7cec950-e065-4022-ba8d-4170c44fcf67" />

#### Usuarios 

Ahora pasaremos a crear diferentes usuarios en todas y cada una de las UO que acabamos de crear. 
Para ello vamos a la UO donde vayamos a crear el usuario **Nuevo>Usuario **
Ponemos la información del usuario. 

<img width="774" height="531" alt="image" src="https://github.com/user-attachments/assets/36fc3a3e-6e10-43fd-a347-d38a46c03ff1" />

Y así todo el rato, hasta crearlos todos.

<img width="633" height="108" alt="image" src="https://github.com/user-attachments/assets/c9d6b777-b1bc-47b6-b6d5-b2d19dd274b0" />

Y para terminar de crear los usuarios, crearemos 2 usuarios profesores dentro de la **UO_Informática.** 

<img width="201" height="123" alt="image" src="https://github.com/user-attachments/assets/ea45f122-21f1-415a-8327-e5d5596b18fb" />

#### Grupo

Ahora pasaremos a crear un grupo, los cuales se crean de la misma forma que los usuarios.

<img width="261" height="70" alt="image" src="https://github.com/user-attachments/assets/5ff69ff2-d6c4-445e-a159-4ecb2d172f16" />

Este grupo estará dentro de las UO que hemos creado, los cuales contendrán a los usuarios que hemos creado.

<img width="714" height="478" alt="image" src="https://github.com/user-attachments/assets/b503ce1d-8dd1-4fc6-bba4-62dad509a484" />

Ahora crearemos un grupo, en el cual agregaremos a los primeros usuarios de cada UO, agregándoles de la misma forma que anteriormente.

<img width="772" height="189" alt="image" src="https://github.com/user-attachments/assets/349a19ec-c9e5-4026-addb-372deceddb0f" />

#### Equipo cliente 

No paramos de crear cosas y continuamos añadiendo un equipo cliente dentro de la UO_ASIR. 

<img width="726" height="285" alt="image" src="https://github.com/user-attachments/assets/6bdc3e30-aff0-4e82-8271-7ada866374a7" />

#### Realiza diferentes cambios sobre las cuentas de usuarios 

Parece que nos hemos cansado de crear objetos, así que ahora vamos a realizar una serie de modificaciones en ellos. 
Lo primero, será cambiar las horas de inicio de sesión de los profesores. 
Para ello, vamos a **Propiedades>Cuenta>Horas de inicio de sesión.** 

<img width="730" height="442" alt="image" src="https://github.com/user-attachments/assets/72232af5-c117-4b43-bb6e-68b70ec4e2c5" />

Proseguiremos, deshabilitando la cuenta del delegado de SMR  

<img width="676" height="256" alt="image" src="https://github.com/user-attachments/assets/7b5ad88a-72c2-4400-aa01-cd463a1830a9" />

#### Realiza diferentes cambios sobre las cuentas de usuarios 

Además, de que las cuentas de los profesores expirarán el 30 de Junio de 2024.

<img width="426" height="89" alt="image" src="https://github.com/user-attachments/assets/6be80037-373f-4857-bc06-32b35ccb36d7" />

Y para terminar, restableceremos la contraseña de un profesor.

<img width="413" height="487" alt="image" src="https://github.com/user-attachments/assets/2afe1084-1602-4a2c-adbc-76f439bd516f" />
