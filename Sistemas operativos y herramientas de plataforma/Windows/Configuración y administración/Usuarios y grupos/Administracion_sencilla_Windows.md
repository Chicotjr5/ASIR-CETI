
### Crea gráficamente, en el administrador de equipos, 2 usuarios locales llamados Zeus y Hefesto

Para crear los usuarios, iremos al **Administrador de equipos>Usuarios y grupos locales>usuarios**.

Una vez dentro, daremos **clic derecho>Usuario nuevo** 
El primer usuario, Zeus, deberá cambiar su contraseña en el siguiente inicio de sesión. 

![image](https://github.com/user-attachments/assets/eb0eefa6-04c5-43bb-904f-76d0770892a1)

Y Hefesto, tendrá contraseña, y podrá cambiarla si quiere, además de que tendrá una vigencia máxima de 42 Días 

La vigencia máxima se ve en la **Directiva de seguridad local>Directivas de cuenta>Directiva de contraseñas**.

![image](https://github.com/user-attachments/assets/d01bfd26-4566-438a-b111-724bd71df3ce)

↓

![image](https://github.com/user-attachments/assets/519e8a2f-3fa1-4255-b225-85ae1cb127b5)

---

### Crea otros dos usuarios, esta vez mediante órdenes, llamados Ares y Atenea 

Para poder crear usuarios, usaremos el comando **net user** 

```bash
net user Ares ares /add /times:L-V,8:0-15:00 /passwordchg:no /expires:never

/add # Se añade un usuario
/times # Se especifican las horas a las que se podrá conectar el usuario
/expires # Cuando caducará la cuenta o si no lo hará
/passwordchg # Si puede cambiar la contraseña o no
```

Para hacer que la cuenta no expire, usaremos el comando:

```bash
wmic useraccount
```

![image](https://github.com/user-attachments/assets/919d2fef-96d8-4fc9-9067-d648b3666e13)

Y para el usuario Atenea, usamos el mismo comando, pero le diremos que si puede cambiar y que la cuenta expira en una semana.

![image](https://github.com/user-attachments/assets/b94ebad6-9b6c-462e-b453-d05ae1cb2eb9)

---

### Cambia la contraseña del usuario Ares desde el administrador de equipos

Para cambiar la contraseña, damos clic derecho sobre el usuario y seleccionaremos la opción **Establecer contraseña**.

![image](https://github.com/user-attachments/assets/8f908b1e-a3b0-4ef6-867a-8bce358c1a31)

Y le ponemos una nueva contraseña. 

![image](https://github.com/user-attachments/assets/d0ee43ef-5643-4736-8b68-dee2472e7db9)

---

### Gráficamente, en el administrador de equipos, crea dos grupos: uno llamado “Padres” y otro llamado “Mentores”.  
### Mete a Zeus en ambos grupos y quítalo de cualquier otro grupo, incluyendo “Usuarios”. 

Para poder crear un grupo, damos **clic derecho>Grupo nuevo**.
Y para añadir miembros, seleccionaremos la opción **Agregar**.

![image](https://github.com/user-attachments/assets/ffe5e961-a9d4-4f5c-adc6-b5052f922e20)

Para buscarlos, vamos a **opciones avanzadas>buscar** y seleccionamos a Zeus. 
Y ya tenemos a Zeus añadido al grupo Padres.

![image](https://github.com/user-attachments/assets/21e686fd-6e7e-485f-ba65-6546108e695d)

↓

![image](https://github.com/user-attachments/assets/db5419fb-74e3-4f62-b2c6-24f8d406201f)

Repetimos el proceso con el grupo Mentores:

![image](https://github.com/user-attachments/assets/c117dadf-3f5c-4b5e-a1c7-e7b3ec62ef36)

Y ahora quitaremos a Zeus de cualquier otro grupo en el que esté. 

Seleccionamos al usuario, vamos a la pestaña Miembro de, seleccionamos el grupo usuario y le damos a la opción Quitar. 

Ahora tenemos a Zeus en los 2 grupos que creamos.

![image](https://github.com/user-attachments/assets/036c8196-c257-4d51-b7cb-b925b2589b92)

---

### Todo mediante órdenes: crea un grupo llamado “Hijos”. Mete dentro a Ares, Hefesto y Atenea y quítalos de cualquier otro grupo

Para crear el grupo hijos, usaremos el comando:

```bash
net localgroup Hijos /add
```

![image](https://github.com/user-attachments/assets/14e6300c-8da0-45c3-8d58-c8ba755a4785)

Para añadir miembros, pondremos: 

```bash
net localgroup Hijos Ares Hefesto Atenea /add
```

![image](https://github.com/user-attachments/assets/45359c6d-78f1-4fde-be0e-efa51b9b210a)

Y para quitarlos de otro grupo: 

```bash
net localgroup Usuarios Atenea /delete
```

![image](https://github.com/user-attachments/assets/5ed6407c-4675-4b87-ab7e-03e987404db6)

---

### Establece directivas de contraseña:

Para configurar las directivas de contraseña, iremos a las **Directivas de Seguridad Local>Directivas de cuenta>Directivas de contraseña**. 

Primero, hacemos que las contraseñas de los usuarios, deben cumplir los requisitos de complejidad. 

![image](https://github.com/user-attachments/assets/e5b11c2d-1459-497f-be3e-6e3ef9d290b6)

Lo siguiente, será configurar al sistema que recuerde las 2 últimas contraseñas usadas por el usuario, para que no las vuelva a usar.

![image](https://github.com/user-attachments/assets/4fefa6b2-d090-416f-998d-8bca833735b7)

Para poder probar su funcionamiento, tendremos que activar las 2 siguientes directivas de seguridad.

![image](https://github.com/user-attachments/assets/44b07b55-7f03-4af0-9e69-c93d841dc548)

↓

![image](https://github.com/user-attachments/assets/1e751f52-721c-434b-af41-235ffd1ad1e8)

Para probar la directiva de complejidad, le pondremos una contraseña simple, y nos saldrá el mensaje de que no cumple los requisitos de complejidad.

![image](https://github.com/user-attachments/assets/429a7edb-1302-4301-864d-e97088244611)

Para la otra directiva, entraremos con un nuevo usuario y pondremos una contraseña que hayamos usado antes y nos aparecerá el siguiente mensaje. 

Podemos ver que realmente son el mismo mensaje, pero en este mensaje nos dice tanto que o la contraseña no cumple con los requisitos de complejidad o con los del historial del domino, haciendo referencia al historial de contraseñas.

![image](https://github.com/user-attachments/assets/fe339e24-2aa2-4368-b220-2ad9f79f4882)

Ahora le indicaremos al sistema que las contraseñas de los usuarios caduquen a los 15 días.

![image](https://github.com/user-attachments/assets/f6a4e9ce-392e-4f3c-a7ec-1341d48faeb6)

Y que los usuarios podrán cambiar su contraseña a los 5 días de ponerla, para que no la estén cambiando todo el rato. 

![image](https://github.com/user-attachments/assets/14bd6894-864a-4246-8c3a-70dc6622ee0b)

Y por último, configuraremos que las cuentas se bloqueen después de 3 intentos fallidos. 

![image](https://github.com/user-attachments/assets/c6fd4db1-b8de-4d9c-9bad-30993c73aa7e)

Para comprobar su funcionamiento, intentaremos iniciar sesión con el mismo usuario 3 veces, para que se nos bloquee la cuenta.

![image](https://github.com/user-attachments/assets/f30b3c54-4d96-4633-ae50-db2c046bb10b)

Para desbloquearla, vamos a los usuarios y desmarcamos la opción de “La cuenta esta bloqueada”. 

![image](https://github.com/user-attachments/assets/b041cbc0-19b4-4095-9bfa-bbb3d76217dc)

↓

![image](https://github.com/user-attachments/assets/069cee99-5fc0-4966-9907-141dc54f836f)

---

### Script 

```bash
@echo off
rem Narcos Chicote 06/02/2023
setlocal enabledelayedexpansion

set numparam=0
for %%a in (%*) do (
    set /a numparam+=1
)
if not %numparam% EQU 3 (
    echo Deben pasarse 3 parámetros exactamente >&2
    exit /b 1
)

net localgroup %1 /add

if not exist %2 (
    echo El archivo no existe >&2
)

if not exist %3 (
    md %3
) else (
    if errorlevel 1 (
    echo Error, no se pudo crear el directorio >&2
    exit /b 1 )
)

for /f "delims=; tokens=1" %%a in (%2) do (
    set variable_random=!random!
    net user %%a !variable_random! /add /logonpasswords:yes
    net localgroup %1 %%a /add
    )
for /f "delims=; tokens=1" %%a in (%2) do (
    echo Usuario:%%a
    echo Contraseña:!variable_random!
    ) >> %3\usuarios.txt
```

Si lo ejecutamos, realiza lo siguiente:

![image](https://github.com/user-attachments/assets/b2e034ed-a320-46db-a18f-87417dc273b2)

Vemos que ha creado el directorio y el archivo.txt con el nombre de los usuario y su contraseña.

![image](https://github.com/user-attachments/assets/d1134155-90c8-4a54-936a-20f1525baf1a)

Y también ha creado a todos y cada uno de los usuarios y los ha metido al grupo que crea con el nombre del primer parámetro que le pasamos.

![image](https://github.com/user-attachments/assets/3d427992-3fe8-4f60-a34c-7391a2c6fdcd)

---

### Realiza las siguientes operaciones con powershell 

#### Crear Usuario

![image](https://github.com/user-attachments/assets/d3559df1-9a8a-4337-81d3-bff78b990a1d)

#### Crear Grupo

![image](https://github.com/user-attachments/assets/7e460812-0492-4531-a879-3cc9318ca373)

#### Añadir usuario al grupo

![image](https://github.com/user-attachments/assets/93ef72f6-24ac-471d-8592-30a021bc2ef8)

#### Eliminar grupo y usuario

![image](https://github.com/user-attachments/assets/e37c9bde-3e57-4550-97ad-4950684662f5)

---

### Crea la siguiente estructura de directorios en la carpeta de tu usuario usando CMD

Para crear una estructura de directorios, usaremos el comando md y pasaremos las rutas de cada carpeta

![image](https://github.com/user-attachments/assets/b8d6f9a1-198d-47cd-b282-f3342ec89ea7)

---

### Elimina la herencia de forma gráfica para el directorio hijos, eliminando los permisos 

Para configurar los permisos y la herencia de una carpeta, vamos a **Propiedades>Seguridad>Configuración Avanzada**.

![image](https://github.com/user-attachments/assets/e9a48910-a0cc-44ac-a420-d59576db36d4)

Y damos clic sobre el botón donde pone **Deshabilitar Herencia.**

![image](https://github.com/user-attachments/assets/c3113fa5-6194-4c10-9b59-57594b3e2292)

Y nos aparecerán 2 opciones para deshabilitar la herencia: 

Si queremos quitar TODOS los permisos que hayan heredado los archivos/ directorios que estén dentro de la carpeta, seleccionaremos la segunda opción, debido, a que con la primera, se elimina la herencia, pero se mantienen los permisos, creándose una nueva ACL por cada directorio/archivo.

![image](https://github.com/user-attachments/assets/3ce0749c-43af-4f29-b53a-d27a55043843)

---

### Elimina la herencia con órdenes para el directorio padres, copiando los permisos que antes heredaba

Ahora vamos a hacer lo mismo, pero en el CMD. 

Usaremos la orden **icalcs** y para deshabilitar la herencia (pero que se mantengan los permisos) usaremos la opción **/inheritance :d**.

![image](https://github.com/user-attachments/assets/e2b2456d-abc8-498b-8728-77bf06a8b6ce)

Si vamos a la interfaz gráfica para ver la herencia, veremos que se encuentra deshabilitada.

![image](https://github.com/user-attachments/assets/a8db5e73-b5bc-436b-98bb-054ac0c1eea1)

---

### Herencia y permisos gráficos

Para hacer esto, tenemos que hacer que el grupo Padres e Hijos tengan permisos de Solo Lectura, asi que vamos a dárselos. 

Vamos a **Seguridad>Opciones Avanzadas>Editar** y ponemos que solo tengan permisos de Lectura (se lo podemos poner desde los permisos básicos o avanzados).

![image](https://github.com/user-attachments/assets/46e44bb0-7245-4735-8776-af1ec68f5e42)

Podemos ver, que ya solo tienen permisos de lectura. 

![image](https://github.com/user-attachments/assets/c3b3cea1-72bc-43ac-84de-ac340c48a196)

Para comprobarlo, entramos con un usuario que se encuentre en uno de esos grupos y vemos que podemos ver el contenido de la carpeta, pero no podemos crear ni archivos ni directorios dentro de ella.

![image](https://github.com/user-attachments/assets/1a242d56-b276-4835-8c07-da6fbf2e3199)

Y mucho menos, podremos eliminarla.

![image](https://github.com/user-attachments/assets/a1f3d74e-c4f8-4a04-bd9b-270b84bd2040)

↓

![image](https://github.com/user-attachments/assets/f4fa13b9-11f0-4a2c-891e-ce9d8263d1ee)

Ahora, haremos que Zeus tenga permisos de lectura y de escritura, pero no pueda eliminar contenido de la carpetas Hijos y Padres. 
Para ello, le establecemos los siguientes permisos:

![image](https://github.com/user-attachments/assets/365bc851-f8be-40a0-96d6-0467ff13a918)

Para comprobarlo, iniciaremos sesión como Zeus y veremos que podemos crear directorios, pero no eliminarlos.

![image](https://github.com/user-attachments/assets/c22fcb91-b4e4-4cea-be29-5fe7954b9a0d)

↓

![image](https://github.com/user-attachments/assets/c9bb6667-4940-458c-88c5-ccb6bcc29840)

Ahora, veremos los permisos efectivos del usuario Zeus después de aplicar una serie de permisos y denegaciones sobre la carpeta hijos. 
Primero, denegaremos la lectura al grupo padres.

![image](https://github.com/user-attachments/assets/0a79e142-b3a4-4fd0-9191-b5b3d12f9daa)

Y le daremos al grupo Mentores, el permiso **“Cambiar permiso”**.

![image](https://github.com/user-attachments/assets/c3c66420-b732-4c8b-995a-573fec1ef2c2)

Si vamos a ver el acceso efectivo de la carpeta Hijos para el usuario Zeus, veremos que, por la parte del usuario, posee los permisos de los que ya disponía, los permisos **de escritura** no los tiene porque el **grupo padres** los tiene **denegados** y posee el permisos de **cambiar permisos** porque el grupo **mentores** si dispone de él.

![image](https://github.com/user-attachments/assets/8d44a449-29a3-4059-ba7d-cc1bf1827fd7)

Ahora tenemos que dar permisos de **Lectura y Toma de posesión a** Zeus sobre la carpeta **Ares_c** 

![image](https://github.com/user-attachments/assets/1ef5974f-9cdf-4e4f-954d-b65b278a98ee)

Ahora, daremos al grupo Hijos permisos de lectura para la carpeta Hijos, pero no de modificación.

![image](https://github.com/user-attachments/assets/2207b6e4-f3dd-4722-bf1a-c7e216878701)

Además, les denegaremos el permiso de lectura sobre la carpeta Padres, para que no puedan ver su contenido. 

![image](https://github.com/user-attachments/assets/136f7679-ed45-4269-a3ca-56a9daed158f)

Ahora permitiremos a cada usuario creado el crear o eliminar cualquier objeto dentro de sus carpetas personales, pero no le daremos el permiso de Eliminar, para que no pueda eliminar su propia carpeta personal.

![image](https://github.com/user-attachments/assets/f83e3eac-ce6f-4c7a-8af9-f981a4a1d71e)

Comprobación con el usuario **Ares**

![image](https://github.com/user-attachments/assets/dccb271c-dc0f-49d1-a876-ba9936a72d75)

↓

![image](https://github.com/user-attachments/assets/bbf33534-3099-4761-9214-3a63b32db216)

---

### Entra en el sistema como el usuario Zeus y hazlo propietario del directorio Ares_c

Ahora tendremos que hacer que Zeus se haga propietario de la carpeta Ares_c 
Esto puede hacerlo, debido a que anteriormente le dimos permisos de **Tomar posesión**. 

Si lo hacemos de forma gráfica, además de deber tener el permiso, deberemos ser Administradores (Zeus no lo es) debido a que la toma de posesión de un archivo, esta regulada por el Control de Cuentas.

![image](https://github.com/user-attachments/assets/92a05945-3d4a-4ad3-8704-95f0719150c5)

Así que meteremos la contraseña del Administrador y nos haremos propietarios. 

![image](https://github.com/user-attachments/assets/e3f01068-4f32-46bf-8f5e-30847ca22965)

Y ya somo propietarios. 

![image](https://github.com/user-attachments/assets/83cb6b79-a6e3-436c-9f60-03b9c9cac1bc)

Este problema no lo tendremos si tomamos la posesión de la carpeta desde el CMD. 
Usaremos la orden **TakeOwn /f** y la ruta del directorio.

![image](https://github.com/user-attachments/assets/db63b2e7-b4bc-42a1-b061-01487e828ec7)

Y veremos que ya somos propietarios 

![image](https://github.com/user-attachments/assets/e79d62d2-520d-41d4-b36c-91fa8a6b3a59)








































