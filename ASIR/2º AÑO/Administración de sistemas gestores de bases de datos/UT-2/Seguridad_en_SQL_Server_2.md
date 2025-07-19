## Agregar un inicio de sesión a usuario2

Continuaremos con la anterior práctica. 
Ahora, crearemos un nuevo inicio de sesión para el usuario2, a través de un Script.

<img width="776" height="100" alt="image" src="https://github.com/user-attachments/assets/c4d2fee9-9a1e-484f-8dc6-ef0abcbbdf0e" />

Si intentamos iniciar sesión con usuario2, no podremos, puesto que no tenemos ningún permiso aún. 

<img width="621" height="234" alt="image" src="https://github.com/user-attachments/assets/31dfce70-c16c-443c-a674-aa72aac6c467" />

---

## Trabajar con la cuenta Guest 

Para activar la cuenta guest en la BD02, vamos a **BD02>Seguridad>Usuarios>guest**

<img width="230" height="253" alt="image" src="https://github.com/user-attachments/assets/ac2ea974-fe24-4496-b94c-afaffce1a47c" />

Y agregamos los permisos de **CONTROL, ALTER y CONNECT** al usuario guest sobre la BD02.

<img width="331" height="248" alt="image" src="https://github.com/user-attachments/assets/9b8123ee-91b4-4278-b4d6-256b36453c3c" />

↓

<img width="407" height="232" alt="image" src="https://github.com/user-attachments/assets/3b3f5a94-d787-458f-9763-ebc2ee8835f4" />

Ahora podemos observar, que el icono del usuario guest, esta cambiado. 

<img width="128" height="40" alt="image" src="https://github.com/user-attachments/assets/0e630a56-7520-4e2d-8c14-3217c05a15b4" />

Y ahora si nos podemos conectar.

<img width="299" height="270" alt="image" src="https://github.com/user-attachments/assets/bc49743c-e25e-4f2b-ab80-280d9c726884" />

Aunque, no conecta a la BD01, debido a que no tiene permisos.

<img width="433" height="196" alt="image" src="https://github.com/user-attachments/assets/8512ac73-3f80-4ed2-a182-1a4e622d459a" />

Y si nos conectamos con el usuario1, si podemos ver la BD02, debido a que para aquellos usuarios que no tienen cuenta en una BD, pero sí acceso al gestor, pueden conectarse a la BD a través de GUEST, si este usuario está habilitado en ella.

<img width="357" height="255" alt="image" src="https://github.com/user-attachments/assets/48f2148c-4e2a-493e-b52c-0d7c7a9cdde4" />

El siguiente paso es darle permisos de SELECT:  

<img width="349" height="316" alt="image" src="https://github.com/user-attachments/assets/f97e4de5-4bdb-4670-82d3-c29e2bad6b35" />

↓

<img width="141" height="132" alt="image" src="https://github.com/user-attachments/assets/71cac0ac-f916-4ca4-92a7-2026619c57a2" />

Ahora, ya podemos ver las tablas de la BD02 con ambos usuarios. 

<img width="385" height="312" alt="image" src="https://github.com/user-attachments/assets/8cc4094f-5aaa-429c-82b0-651dd1afc97a" />

↓

<img width="321" height="313" alt="image" src="https://github.com/user-attachments/assets/c07ea46e-85de-4c1b-800e-19b3831cfeb1" />

Pero no podemos modificar sus datos, solo verlos.

<img width="497" height="245" alt="image" src="https://github.com/user-attachments/assets/80643278-d4ff-4ccf-b27a-6ae41dcfcb4a" />

Para poder modificar esos valores, tenemos que otorgarle permisos de **UPDATE**. 

<img width="363" height="333" alt="image" src="https://github.com/user-attachments/assets/99ad6326-5bd3-468e-95fc-e9c7ba14bd01" />

Ya podemos modificarlos. 

<img width="544" height="219" alt="image" src="https://github.com/user-attachments/assets/0cae74b6-70d7-42ee-8fc1-e13389c9471b" />

---

## Anular los privilegios

Para anular los privilegios, tan solo tendremos que denegar los permisos dados.

<img width="549" height="112" alt="image" src="https://github.com/user-attachments/assets/263047b9-9efc-4e6b-b334-7bcc59ed6258" />

De hecho, vemos que el icono del usuario **guest** volvió a cambiar. 

<img width="70" height="25" alt="image" src="https://github.com/user-attachments/assets/abf71c88-8ba9-485c-b2a2-7af4c9bf4ff2" />

Pero debido a esto, el usuario2 ya no puede conectarse a la BD02, para arreglarlo, vamos a crear un nuevo usuario, con el inicio de sesión de usuario2.

<img width="392" height="268" alt="image" src="https://github.com/user-attachments/assets/9e895e85-f378-42c6-925b-eaa89a5a916b" />

↓

<img width="347" height="265" alt="image" src="https://github.com/user-attachments/assets/82bd3e9b-1970-4b8e-8299-874d8c1464d2" />






















