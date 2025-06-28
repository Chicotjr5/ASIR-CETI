### Establece el color de las ventanas al tema oscuro y coloca el dock en la parte inferior de la ventana

Para hacer esta configuración, vamos a **Configuración>Apariencia>Estilo>Oscuro**.

![image](https://github.com/user-attachments/assets/4eb6ff30-e4d9-46ef-8991-3483bb22475b)

**Configuración>Apariencia>Dock>Posición en pantalla**

![image](https://github.com/user-attachments/assets/78246425-1e39-4547-b215-f906357ad852)

---

### Investiga cómo se pueden utilizar temas de escritorio antiguos y cambia de tema. 

Para poder usar fondos de escritorio que estaban en versiones anteriores, 
ejecutamos los siguientes comandos:

```bash
apt install ubuntu-wallpapers-*
apt install edy-wallpapers feisty-wallpapers gutsy-wallpapers
```

Si vamos a **Configuración>Fondos de escritorio** veremos que se han instalado. 

Y para poder cambiar el tema de escritorio, deberemos de instalarnos las **Gnome-tweaks**.

![image](https://github.com/user-attachments/assets/a13a4931-dcd9-4c53-adfa-456b51e8e629)

Una vez instalada, entramos y podemos cambiar la Apariencia del sistema, cambiando el tema de las aplicaciones, cursos, iconos etc.

![image](https://github.com/user-attachments/assets/d712eb8e-8833-454f-84db-5b30663d5e39)

---

### Haz que la pantalla se apague automáticamente a los 10 minutos de inactividad. 

Vamos a **Configuración>Energía>Apagar la pantalla** y le ponemos que después de 10 minutos de inactividad.

![image](https://github.com/user-attachments/assets/26fb265d-f3ba-4058-ad5e-bc6df9c054d8)

---

### Haz que el sistema entre en suspensión tras una hora de inactividad 

Y para que se suspenda tras una hora, en la misma pantalla, ponemos que el equipo se suspenda y después de una hora.

![image](https://github.com/user-attachments/assets/158ded1d-dc4a-46da-9fa5-80f22c3753c4)

---

### Busca la información del sistema operativo, procesador y memoria 

Para ver esta información, vamos a **Configuración>Acerca de**

![image](https://github.com/user-attachments/assets/9cabc8f0-ce66-44b1-91dc-8e5729d7d582)

---

### Activa las áreas de trabajo y establece 5 áreas de trabajo además de averiguar los atajos de teclado para cambiar entre ellas. 

Para configurar las áreas de trabajo, vamos a **Configuración>Multitarea** y establecemos un Nº fijo de 5 áreas de trabajo.

![image](https://github.com/user-attachments/assets/59fcfb90-6930-4eff-9122-3c57ea1d3786)

Para cambiar entre ellas, podemos dar al icono Windows de nuestro teclado y cambiar, o, **icono Windows+ctrl+flecha der/flecha izq**.

![image](https://github.com/user-attachments/assets/24274138-508d-491c-a651-b3e08a79d16d)

---

### Busca información de alguna aplicación instalable, utilizando el centro de software de Ubuntu 

Vamos a Ubuntu Software y buscamos una aplicación, bajamos la pantalla un poco y veremos información sobre ella, como: 

- Tamaño que ocupa
- Si es software seghuro o no
- Versión
- Página de contacto
- Descripción de la aplicación
- Opiniones

![image](https://github.com/user-attachments/assets/c0e83890-4312-40f5-9e8f-695f318ee289)

---

### Cambia la configuración de las actualizaciones para que no se descarguen automáticamente y para que no se notifique cuando haya una nueva versión de Ubuntu 

Vamos a **Software y Actualizaciones>Actualizaciones** y le decimos que nunca nos notifique y que no las descargue automáticamente, sino que nos avise inmediatamente. 

![image](https://github.com/user-attachments/assets/0afcadca-bbd7-401a-8df4-b96edbc330fb)

↓

![image](https://github.com/user-attachments/assets/e70b17d2-e099-42b2-a7c5-58aa996a983a)

---

### Bloquea las notificaciones para alguna aplicación. 

Vamos a **Configuración>Notificaciones>Red** (es la aplicación que yo he elegido) y desactivamos las notificaciones. 

![image](https://github.com/user-attachments/assets/060ace17-6772-4ff1-bfa0-4e3ae64a2c86)

---

### Abre el terminal. ¿Qué combinación de teclas podemos utilizar para abrirlo automáticamente? 
### Deja el terminal anclado en el dock

Para abrir el terminal, usaremos el atajo de teclado **Mayus+Ctrl+T** 
Además, que desde el propio terminal, podemos ver todos los atajos de teclado del terminal. 

![image](https://github.com/user-attachments/assets/6f0c2afe-b06d-4d39-b81e-db7f9a40ce99)

Y para poder anclarlo al Dock, buscamos la aplicación del termina>clic derecho>Añadir a Favoritos.

![image](https://github.com/user-attachments/assets/50843961-79a6-4043-a19e-a2ac525e1ec2)

---

### Crea un usuario local nuevo. Debe ser un usuario estándar

Para crear un nuevo usuario, vamos a **Configuración>Usuarios>Añadir usuario**. 

Especificamos que es un Usuario estándar, su nombre y si le damos una contraseña o la tendrá que poner el usuario cuando inicie sesión. 

![image](https://github.com/user-attachments/assets/01beab48-49c5-4f25-a00d-5a49dabf14b1)

---

### Programa un apagado del sistema a las 15:00 y que se muestre un mensaje a los usuarios diciendo “El sistema se apagará a las tres”

```bash
sudo shutdown -h 15:00 "El sistema se apagará a las 15:00"
```

![image](https://github.com/user-attachments/assets/85eda705-290b-4c86-a7b1-c055a9672f49)

---

### Visualiza todas las variables de entorno del sistema

Usaremos el comando **set**, el cual sin opciones ni argumentos, solo muestra todas las variables del sistema. 

![image](https://github.com/user-attachments/assets/7f99f160-f2f2-416c-9cdb-0719ef8ca576)

---

### Crea una nueva variable de entorno llamada MIVAR, con el valor “nueva variable”

**Imprime en pantalla su contenido para asegurarte de que se ha creado bien**
**Crea una shell hija de la actual (bash, por ejemplo) y comprueba si MIVAR existe en la shell hija**

![image](https://github.com/user-attachments/assets/6cd72528-216e-4a10-9ef3-a0c9783483be)

Como podemos ver, la variable no se hereda, así, que vamos a exportarla.

**Sal de la shell hija y exporta la variable. Abre otra shell hija y comprueba ahora que si esté la nueva variable**

![image](https://github.com/user-attachments/assets/297cab24-dcc0-4d7f-b7a9-14949adba622)

---

### Visualiza únicamente el valor de la variable HOME 

Ejecutamos el comando:

```bash
echo $HOME
```

![image](https://github.com/user-attachments/assets/13f0c56f-84f9-49dd-b828-9575f74313e2)

---

### Modifica la variable de entorno PATH para que al final incluya también tu directorio de usuario 

Para poder añadir contenido a una variable, ejecutaremos el comando:

```bash
export PATH=$PATH:/home/usuario 
```

![image](https://github.com/user-attachments/assets/1e87fff2-a80f-495c-85af-a4a41181cdaf)

---

### Cierra la shell. Comprueba si la variable de entorno PATH conserva el cambio que hiciste ¿Por qué crees que es así? 

Si abrimos una nueva Shell y volvemos a ver el contenido de la variable PATH, veremos que el cambio realizado no se ha guardado. 

```bash
echo $PATH
```

![image](https://github.com/user-attachments/assets/8d56d3b0-b51b-4103-b255-589c53d24293)

Esto es debido a que esos cambios están sujetos a la Shell desde la que se han realizado y no se guarda de manera permanente. 

Para hacerlo, vamos a **/etc/bash.bashrc** y añadimos al final:

![image](https://github.com/user-attachments/assets/23c0d424-4211-4978-a92d-d05371f06842)

Guardamos los cambios ya tenemos la ruta **/home/usuario** guardada. 

![image](https://github.com/user-attachments/assets/8dfef175-4207-436f-82c2-0ec144229bdd)

---

### Inicia sesión con el usuario que creaste anteriormente y abre un terminal intentando utilizar sudo y muestra el error que te aparece. 

Iniciamos sesión con el usuario anteriormente creado, abrimos un terminal y ejecutamos un **sudo ls**. 

Pero nos sale un error, el cual nos dice que el usuario, no se encuentra en el archivo **/etc/sudoers**, por tanto, no puede ejecutar la orden. 

Además, de que se guardará este incidente.

![image](https://github.com/user-attachments/assets/c89c0dc1-3f42-4694-b967-630f51551440)

---

### Vuelve tu usuario principal con permiso de administración y haz lo siguiente 

**Abre el archivo /var/log/auth.log y muestra el intento de hacer sudo fallido que se ha registrado.**

Si volvemos a iniciar sesión con nuestro usuario administrador y vamos al archivo **/var/log/auth.log** veremos que el intento de sudo se registró.

![image](https://github.com/user-attachments/assets/347d747d-c07c-4dc2-961d-50fd6ec53a1e)

**Edita el archivo sudoers y añade una nueva regla para tu usuario estándar. Podrá usar, solamente con los permisos del grupo adm, la orden ls.**

Vamos al archivo **/etc/sudoers** y lo editamos. 

![image](https://github.com/user-attachments/assets/0c705740-115d-4eaa-89d8-475e0c98ecc6)

↓

![image](https://github.com/user-attachments/assets/6e27a148-fa4b-44e7-8b3c-1fa524bca31e)

---

### Vuelve al usuario nuevo estándar y haz lo siguiente

**Intenta ejecutar ls con permisos de root.**

![image](https://github.com/user-attachments/assets/97c08f5e-2cf6-4a20-928d-a35bdabe655f)

No podemos, debido a que en la norma, no hemos indicado con que usuario (además de el mismo), el usuario **marcos_estandar** puede ejecutar el comando, solo hemos configurado el grupo con el que puede hacerlo.

**Intenta ejecutar ls con los permisos de tu usuario principal.**

![image](https://github.com/user-attachments/assets/74d46dbb-7e1c-48d8-8143-9069548983f0)

Si que podemos hacerlo, debido a que en la regla, decimos que el usuario **marcos_estandar** pueda usar el comando **ls**, además de usar comandos del grupo adm.

**Intenta ejecutar la orden ps (ojo, no ls) con permisos del grupo adm**

![image](https://github.com/user-attachments/assets/6a048132-0d70-4b54-87b8-9392a28fc84b)

No podemos, debido a que **no hemos autorizado** al usuario a usar la orden ps con el grupo adm, solo el comando **ls**.

**Intenta ejecutar la orden ls con permisos del grupo adm**

![image](https://github.com/user-attachments/assets/8c18c095-b2a4-40f9-baea-bf6e6fe0acef)

Obviamente si podemos ejecutar el comando, pues la norma que hemos puesto en el archivo **/etc/sudoers** era para eso. 

---

### Vuelve al usuario principal (administrador) y cambia la regla que creaste. Ahora, además del grupo adm, deberán poderse usar los permisos del usuario principal. 

Volveremos a editar el archivo **/etc/sudoers**. 

Ahora, haremos que el usuario **marcos_estandar** pueda usar el comando **/bin/ls** con los permisos del usuario administrador. 

![image](https://github.com/user-attachments/assets/8e0a36a3-0c0b-4481-b47e-52b6066f1fc2)

---

### Vuelve al usuario nuevo (estándar) y, de manera similar a antes haz y comenta lo siguiente:

**Intenta usar sudo con la orden ls y sin especificar usuario ni grupo**

![image](https://github.com/user-attachments/assets/893f3fbd-3ccd-42db-bde0-617719421379)

Al igual que antes, no podremos ejecutar el comando, debido a que al hacer sudo sin especificar usuario o grupo, este intentara ejecutar el comando con permisos de root, cosa que según la configuración establecida, no podemos hacerlo. 

**Intenta hacer sudo con la opción -u y el usuario root, ejecutando ls**

![image](https://github.com/user-attachments/assets/f43c7c40-c027-4b86-8870-086de40b2ba8)

Este comando es exactamente igual al de arriba, solo que ahora **especificamos el usuario root**, pero el resultado es el mismo, debido a que hace lo mismo  

**Intenta hacer sudo especificando tu usuario principal y la orden ls**

![image](https://github.com/user-attachments/assets/e5eb89ce-a9bd-4d14-9297-d74cee5baf3c)

Si que podemos hacerlo, debido a que hemos especificado, que **marcos_estandar** pueda ejecutar **ls** con los permisos del usuario principal.

---

### Regresamos al usuario principal (administrador) y editamos sudoers para permitir todos los usuarios y grupos y todas las órdenes. 

Y ahora, editaremos el archivo **/etc/sudoers** de forma, que el usuario marcos_estandar pueda ejecutar todos los comandos, con permisos de todos los grupos y usuarios.

![image](https://github.com/user-attachments/assets/45dd90ce-6480-49d0-8a46-e16e87ef724b)

---

### Por último, vuelve al usuario nuevo (estándar) y realiza las mismas pruebas que habías hecho la última vez, comentando lo que sucede en cada caso. 

**Intenta usar sudo con la orden ls y sin especificar usuario ni grupo**

![image](https://github.com/user-attachments/assets/dbfd1af1-62a1-4a8b-a9b9-638f4f51a810)

Ahora, si que nos deja ejecutar el comando sudo **ls**, debido a que podemos ejecutar **cualquier comando, con los permisos de cualquier usuario/grupo.** 

**Intenta hacer sudo con la opción -u y el usuario root, ejecutando ls**

![image](https://github.com/user-attachments/assets/1e88654a-43f0-47da-ae8a-ed9ea6b0ff9f)

Mismo comando, solo que especificamos el usuario root.

**Intenta hacer sudo especificando tu usuario principal y la orden ls**

![image](https://github.com/user-attachments/assets/0767c1a9-03a0-4f19-90af-03964dc18449)

Si antes nos dejaba hacerlo, es obvio que ahora también.

---

### Utilizando apt

**Actualiza la caché con la información local de los programas**

Ejecutaremos el comando 

```bash
apt update
```

![image](https://github.com/user-attachments/assets/fb3c5a58-e861-44f5-8194-fce02428bf25)

**Busca el reproductor multimedia VLC**

Usaremos el comando 

```bash
apt-cache search siege 
```

![image](https://github.com/user-attachments/assets/fa7ea1dd-91a4-423a-9c05-55d8cbccf25b)

**Muestra la información detallada de VLC**

Usamos el comando:

```bash
apt-cache show siege 
```

![image](https://github.com/user-attachments/assets/21c02d85-f006-4b3a-a734-a329fdd3393d)

---

### Utilizando apt

**Instala VLC**

Usaremos el comando:

```bash
sudo apt-get install siege
```

![image](https://github.com/user-attachments/assets/665b7c79-0ba0-4ab3-be70-fc62d1c1fd37)

**Desinstala VLC completamente, incluyendo los archivos de configuración**

Usaremos el comando:

```bash
sudo apt autoremove –purge siege
```

Con **autoremove**, le decimos que elimine el paquete y sus dependencias y con la opción **–purge** le decimos que también elimine los archivos de configuración. 

![image](https://github.com/user-attachments/assets/30ff33a9-7c8e-4872-b27d-6478cd18ed04)

---

### Instala xfce, ahora te deberá permitir elegir entre gnome y xfce al iniciar sesión. Explora la interfaz de XFCE

Para instalar XFCE usaremos el comando:

```bash
apt install xfce4
```

![image](https://github.com/user-attachments/assets/4f420b14-d582-4309-8c82-d01c654dd444)

Una vez instalado, podemos iniciar sesión desde su interfaz.

![image](https://github.com/user-attachments/assets/a16a2d4f-1dce-459e-ae69-34fe40ddc521)

↓

![image](https://github.com/user-attachments/assets/59f6ebcb-7104-4ffb-9167-64a645e2f071)

**¿Cuál de las dos interfaces te resulta más atractiva?**

Es más estética la interfaz original de Ubuntu, debido a que la de XFCE es para equipos con un rendimiento bajo.

**¿Cuál tiene mejor rendimiento?**

XFCE, pues esta pensado para equipos de bajo rendimiento.

---

### Busca en internet algún paquete de software que requiera agregar un repositorio nuevo y una clave pública 

**Descarga y añade la clave pública para el repositorio**

Para descargarla usaremos el comando:

```bash
wget  “ dirección de la clave”
```

![image](https://github.com/user-attachments/assets/2c4e511e-892a-4c84-8d86-ea589f0ec11b)

Y para añadirla, usaremos el comando:

```bash
sudo apt-key add sublimehq-pub.gpg
```

![image](https://github.com/user-attachments/assets/345821c8-ef77-4de2-8417-7b148825271b)

**Agrega el nuevo repositorio. En lugar de editar el archivo sources.list, crea un archivo nuevo en el directorio sources.list.d.  **

Crearemos un nuevo fichero en el directorio **etc/apt/sources.list.d**
Y añadimos el repositorio del paquete en el fichero nuevo:

![image](https://github.com/user-attachments/assets/db93f08d-65aa-4ca5-8afb-95f829be0d71)

**Realiza otras acciones necesarias**

Y por ultimo, ejecutamos un **sudo apt update**

![image](https://github.com/user-attachments/assets/c5a32e1e-c845-4bcf-bc92-3e005343b534)

**Instala el nuevo paquete.**

Y para finalizar, instalaremos el paquete, con un:

```bash
apt-get install sublime-text
```

![image](https://github.com/user-attachments/assets/0c8cb186-3e22-4ee7-b647-447abeeee131)

Y como podemos ver, esta instalado. 

![image](https://github.com/user-attachments/assets/ea3ddc9b-d9b0-4377-bb71-3a72f45ba37e)













