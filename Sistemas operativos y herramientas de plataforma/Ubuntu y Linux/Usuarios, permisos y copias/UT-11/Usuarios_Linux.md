### Crea un usuario llamado Gandalf, utilizando la orden useradd 

- **Deberá tener un comentario que incluya su nombre completo Gandalf el Gris**
- **Deberá utilizar la Shell bash**
- **Deberá crearse automáticamente junto con el usuario su directorio personal en /home y asignárselo.**

Para hacver todo esto, uso la orden:

```bash
useradd -m -s /bin/bash -c “Gandalf el gris” Gandalf
```

![image](https://github.com/user-attachments/assets/a8194bed-6feb-4542-b656-f8aaaf7c9600)

---

### Establece un password para el usuario Gandalf

```bash
passwd Gandalf
```

![image](https://github.com/user-attachments/assets/661588f5-9c05-4b74-a43b-a13286b3ba62)

---

### Haz que para el usuario Gandalf, cuando abra una nueva shell (que no sea de inicio de sesión), se cree automáticamente una variable de entorno llamada minombre que contenga tu nombre completo 

Para poder hacer este apartado, tendremos que editar el archivo **/home/Gandalf/.bashrc**

![image](https://github.com/user-attachments/assets/637a795a-b211-438a-a93e-71aaddba556e)

Nos iremos al final del fichero y pondremos lo siguiente: 

```bash
export minombre = ”Marcos Chicote”
```

![image](https://github.com/user-attachments/assets/7963e270-2441-4667-89ab-b349a61362cd)

Abriremos un terminal con el usuario Gandalf y veremos que se creó la variable. 

![image](https://github.com/user-attachments/assets/b778c0b7-1fa5-4414-a986-fc4ffab47652)

---

### Haz lo mismo que en el apartado anterior pero para que se copie en los perfiles de los usuarios que se creen nuevos a partir de ahora. 

Ahora, en vez de editar el archivo **.bashrc** de un usuario concreto, lo haremos del directorio **/etc/skel** en donde se encuentran las plantillas por defecto, que usa Ubuntu cada vez que se crea un usuario nuevo. 

Editamos el fichero y ponemos lo mismo.

![image](https://github.com/user-attachments/assets/2d8a3a6e-8db7-47d4-a3c7-399a79f0c06a)

↓

![image](https://github.com/user-attachments/assets/a4995fb2-0e89-48cf-ac3c-4893e0e6da8b)

---

### Crea un usuario llamado Radagast, utilizando adduser 

**El login del usuario debe empezar con mayúscula. Como adduser tiene un sistema de comprobación de nombres recomendables, deberás hacer algo para que te permita que empiece por mayúscula**

En la orden **adduser**, usaremos la opción **–force-badname** la cual nos permite poner caracteres que en principio no podríamos.

**Establece todos los datos que te vaya solicitando, incluyendo el password y el nombre completo (Radagast el Pardo)**

Según nos va pidiendo datos, nosotros los iremos rellenando

![image](https://github.com/user-attachments/assets/837fb038-c336-4b10-a2a6-20c7fc8d2f61)

**Comprueba que en su archivo de configuración se ha copiado la variable que configuraste en el punto anterior. Abre sesión con el usuario y comprueba que puede ver la variable con su valor.**

Si abrimos un terminal con el usuario **Radagast**, podremos visualizar la variable anteriormente creada.

![image](https://github.com/user-attachments/assets/6dbeb514-fb79-4130-a164-c710786bcadd)

---

### Crea los siguientes grupos: 

Usaremos la orden:

```bash
groupadd <nombre del grupo>
```

![image](https://github.com/user-attachments/assets/f99e49f9-6e7e-4e44-a887-f2dae95ed7d5)

---

### Establece como grupo principal, tanto para el usuario Gandalf, como para Radagast, el grupo Magos.

Usaremos la orden:

```bash
usermod -g Magos Gandalf/Radagast
```

![image](https://github.com/user-attachments/assets/243deecb-2a1c-4804-a5f7-cf152bf39242)

↓

![image](https://github.com/user-attachments/assets/73161893-d3d8-4cb3-87c9-c6f97426fdfa)

Y para poder ver que se cambio el grupo, ejecutaremos la orden id **“Login”** que nos permite ver el **UID del usuario y sus grupos**, tanto los principales como secundarios.

---

### Establece como grupos secundarios los siguientes

**Gandalf pertenecerá a los grupos: Grises, Barbudos y Espadachines**

```bash
usermod -G Grises,Barbudos,Espadachines Gandalf 
```

![image](https://github.com/user-attachments/assets/cbf21658-b20a-46ef-9b0a-db9b24e610b5)

**Radagast pertenecerá a los grupos: Barbudos y Campestres**

```bash
usermod -G Barbudos,Campestres Radagast
```

![image](https://github.com/user-attachments/assets/2a37de54-94c7-4f49-8e73-5f3d92ea6cac)

---

### Crea, utilizando la orden useradd un usuario llamado Saruman

- **Deberá tener un comentario con su nombre completo: Saruman el Blanco**
- **Deberá usar la Shell sh**
- **Deberá crearse automáticamente junto con el usuario su directorio personal en /home y asignársele.**
- **Deberá tener como grupo principal, el grupo Magos**
- **Deberá tener como grupo secundario, el grupo Barbudos**
- **Deberás asignarle en la propia orden useradd un password. La encriptación del password deberá realizarse con SHA-2 de 512 bits. La salt deberás especificarla tú, utilizando 8 caracteres**

```bash
useradd -c “Saruman el Blanco” -m -s /bin/sh -g Magos -G Barbudos   -p `mkpasswd -m sha-512 -S feralo14 Fnando14#` Sarum
```

Comprobamos que se creo el usuario Saruman con los datos que le proporcionamos:

![image](https://github.com/user-attachments/assets/e7c21a9a-2f4b-484c-9b6e-e81ec70f9a5d)

↓

![image](https://github.com/user-attachments/assets/ca37e172-3f81-4502-9ac2-dc185a22ecaf)

---

### Sin cerrar sesión (y mediante la interfaz de texto), haz un cambio de usuario para trabajar con el usuario Saruman y comprueba que funciona el password asignado

**¿Qué diferencia observas en el prompt? ¿Por qué?**

Podemos ver, que el prompt se reduce al signo del dólar, indicando que estamos con un usuario normal. 

Esto es debido, a que anteriormente le especificamos al usuario, que su Shell seria la sh. 

Así que nos esta mostrando una Shell sh

**Vuelve al usuario con el que estabas antes**

Para volver con el usuario anterior, usaremos la orden **exit**

![image](https://github.com/user-attachments/assets/8032cb03-f9a1-45ee-96a3-f4ad497ae8ba)

---

### Cámbiale al usuario Saruman el nombre completo (ahora se llamará Saruman el Sabio) y haz que ahora use la Shell bash.

Para poder cambiar los parámetros de un usuario, deberemos de usar la orden:

```bash
usermod -c "Saruman el Sabio" -s /bin/bash Saruman
```

**Cambia de nuevo de usuario para trabajar con Saruman y comprueba los cambios en el prompt**

Para poder cambiar de usuario, usaremos la orden 

```bash
su Login 
```

Y podemos ver, que ahora, el usuario usa un terminal bash.  

![image](https://github.com/user-attachments/assets/afcda70a-522c-4a5a-b840-66c4fd57ff4b)

---

### Para el usuario Saruman, cambia los siguientes parámetros de la contraseña: 

- El día del último cambio de contraseña será hace una semana
- El número de días máximo antes de cambiar la contraseña serán 5
- El número de días en que la contraseña seguirá activa desde que expiró el plazo para cambiarlo será de 5.

Para poder cambiar los parámetros de la contraseña de un usuario, usaremos la orden:

```bash
chage -d 2023-05-01 -M 5 -I 5 
```

![image](https://github.com/user-attachments/assets/c8fa28ce-c5bb-4d10-9217-162642eae372)

**Cambia al usuario Saruman ¿Qué pasa y por qué?**

Si cambiamos al usuario Saruman, nos saldrá un mensaje de que tenemos que cambiar la contraseña. 

Esto es debido a que la contraseña fue cambiada hace 5 días y para poder cambiarla, tenemos 5 días, pasado ese plazo, se bloqueará la cuenta, pero además, tenemos otros 5 días para cambiar la contraseña después de ese plazo 

![image](https://github.com/user-attachments/assets/32494d89-2421-45f6-85bb-b61dc8b68186)

**Vuelve a establecer los parámetros de contraseña igual que antes, pero en el tercer punto ahora establece un día**

![image](https://github.com/user-attachments/assets/71874f7c-bf42-442e-bed6-5db5151e5a61)

**Vuelve a cambiar al usuario Saruman ¿Qué pasa ahora y por qué?**

Si volvemos a intentar cambiarnos al usuario Saruman, no podremos, debido a que nuestra cuenta se ha bloqueado. 

Ya no tenemos esos 5 días para poder cambiar la contraseña sin que se bloquee la cuenta puesto que solo tenemos uno, así que se bloquea la cuenta. 

![image](https://github.com/user-attachments/assets/30f636ac-7f6d-4c5b-bba3-9892fe1f901a)

**Soluciona el problema con la cuenta de Saruman, sin cambiar las fechas (ni días) de las contraseñas**

Para poder solucionar este problema, deberemos de cambiar la contraseña del usuario, para que el día de la última modificación de la contraseña se resetee. 

![image](https://github.com/user-attachments/assets/2a5f15d6-7da5-4fa6-9442-eb9cbd30f31b)

---

### Para el usuario Radagast, cambia la fecha de expiración de la cuenta (ojo: de la cuenta, no de la contraseña) a ayer. 

Para poder cambiar la fecha de expiración de la cuenta, usaremos la orden:

```bash
chage -E 2023-05-07 Radagast 
```

![image](https://github.com/user-attachments/assets/afc43c42-55fd-4573-96d6-f1d9744b1a49)

**Intenta entrar con el usuario Radagast**

Si intentamos entrar con el usuario, veremos que no podemos, debido a que la cuenta expiró ayer

![image](https://github.com/user-attachments/assets/b313bbac-bd5f-473b-995e-34f0d84e6447)

**Soluciona el problema del usuario Radagast**

Como solución, podremos que la cuenta caducará dentro de un año.

![image](https://github.com/user-attachments/assets/afae35d9-bc8a-408b-a3c2-f57227932766)

---

### Hazte copias de los archivos de configuración de los usuarios, los grupos y las contraseñas 

**Escribe aquí las rutas absolutas de dichos archivos**

Usaremos la orden cp para poder copiar el contenido de los archivos, a otros. 
Usaremos rutas absolutas.

![image](https://github.com/user-attachments/assets/3ff7ff11-fdfd-4968-9f37-b736fc9393cf)

**Copia aquí las líneas de dichos archivos que se hayan creado o modificado con los ejercicios anteriores y comenta qué significa cada campo (incluyendo las partes del campo del password). **

![image](https://github.com/user-attachments/assets/37ee871d-0f7f-4e57-a1de-a1f93328b838)

- Saruman . Nombre del usuario
- x - Contraseña
- 1002 - UID del usuario
- 1010 - UID del grupo principal
- Radagast el Pardo,33,3314552,2134455,polar
  - Comentario respecto al usuario, con información como el nombre completo, el nº de habitación, el nº de oficina en estructura GECOS
- /home/Radagast - Directorio personal del usuario
- /bin/bash - Shell por defecto que usará el usuario

![image](https://github.com/user-attachments/assets/3e84768b-b1dc-4c08-8544-598405c7997e)

- Gandalf - Nombre del grupo
- X - Contraseña del grupo
- 1007 - GID del grupo

![image](https://github.com/user-attachments/assets/b4b6e439-de0f-43ce-96a3-e56a7c18126e)

- Gandalf - Nombre del usuario
- $y$j9T - Hash usado para cifrar la contraseña
- $sr7/--.$ - Salt usada para cifrar la contraseña
- Sol2/-- - Contraseña cifrada
- 19485 - Fecha de última modificación
- 0 - Vigencia mínima
- 999999 - Vigencia máxima
- 7 - Días de advertencia
- : - Inactive
- 19850 - Caducidad
- : Reservado

---

### Elimina los usuarios y los grupos que has creado

Para los usuarios, usaremos la orden:

```bash
userdel
```

![image](https://github.com/user-attachments/assets/5f11d0b4-8b75-4167-b952-329a3cfe7f87)

Y para los grupos, la orden:

```bash
groupdel
```

![image](https://github.com/user-attachments/assets/35207a5d-4708-48db-abe3-a5667d3066ff)

↓

![image](https://github.com/user-attachments/assets/e0b60e5a-bef2-4f87-8d3e-9be50c42ad93)
