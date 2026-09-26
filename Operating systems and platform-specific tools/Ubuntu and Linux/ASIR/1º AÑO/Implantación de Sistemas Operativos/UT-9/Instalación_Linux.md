### Crea una máquina virtual, con un disco duro de 50 GB y asegúrate en la configuración de la máquina virtual de que esté habilitada la UEFI

A la hora de crear la máquina virtual, debemos habilitar la opción EFI, debido a que en Ubuntu 22.04 se usa GPT, y Windows, al usar una GPT necesita de una UEFI.

![image](https://github.com/user-attachments/assets/fcd5a659-3bbe-475f-92df-62fd5b6ac69a)

Encendemos la máquina y empezamos a instalar. 
Desde esta pantalla, podemos acceder a la UEFI, para cambiar x algunos parámetros. 

![image](https://github.com/user-attachments/assets/93fb8b98-df2b-4d01-8d36-addc27e327b0)

---

### En esta máquina, instala Ubuntu, de forma documentada, con las siguientes características

**Usaras 30GB para Ubuntu, que tendrá las siguientes particiones**

- Una para el sistema montada en el directorio raíz **(/)**
- Otra para los directorios de los usuarios montada en **/home**
- La partición de swap

En la instalación, cuando llegamos a la parte de Tipo de instalación, elegiremos la opción Más opciones, para poder crear estas particiones de forma manual.

![image](https://github.com/user-attachments/assets/56dcfa78-b38c-4dc0-a094-bec3b6404d1f)

Y empezamos con la partición más importante, que será en la que se instalará el sistema y estará montada sobre /. 
Le daremos un tamaño de 20GB (recomendable darle más).

![image](https://github.com/user-attachments/assets/98e19d86-1740-47b1-b8e4-277017c99d0c)


Seguiremos con la partición que estará montada en /home, que viene a ser la partición donde se guardarán los datos de los usuarios. 
A esta partición, le daremos un tamaño de aproximadamente 8GB.

![image](https://github.com/user-attachments/assets/801f91c4-d72c-4947-8512-fbfde3b0994e)

Además, hay que crear una partición Swap, la cual no debe tener más de 2GB de espacio. 
Así que le asignamos este tamaño.

![image](https://github.com/user-attachments/assets/b207b03c-f1eb-4249-8580-7ce2c7c22b19)

Y ya estaría, pero como estamos trabajando en UEFI, el sistema necesita de una partición EFI, la cual hay que crearla manualmente. 
Le daremos un tamaño de 150 MB (el mínimo son 100MB (Microsoft))

![image](https://github.com/user-attachments/assets/4bc4f4ce-34e1-4402-9c9d-bea7c9b629ba)

Y la tabla de particiones se nos quedaría de la siguiente manera. 
El resto del espacio, lo usaremos para instalar Windows.

![image](https://github.com/user-attachments/assets/cdc39949-efee-48f8-99bf-73e372a8eed6)

---

### En los 20 GB que dejaste sin particionar, instala Windows 10 

Ahora, vamos a instalar un Windows 10, debido a que al instalar primero un Linux y luego un Windows, solo iniciaremos con Windows debido a que en la UEFI, se ha marcado como primera entrada la de Windows, así que tendremos que arreglar eso. 

![image](https://github.com/user-attachments/assets/03cec092-7be0-4e7d-bb67-a51c2d7e1267)

---

### Reinicia el sistema

Una vez instalamos Windows reiniciaremos el sistema y veremos que nos inicia con Windows y no nos da la elección de iniciar con Ubuntu o Windows

![image](https://github.com/user-attachments/assets/8b192705-88f4-4623-865e-efc357a1cf2e)

---

### Como estamos trabajando con UEFI, a diferencia de la BIOS, no necesitamos ningún gestor de arranque en los sectores iniciales (MBR y VBR) y, por lo tanto, no se ha sobrescrito nada.

#### Entra en la configuración de la UEFI de VirtualBox

Para entrar en la UEFI, deberemos presionar ESC mientras se inicia la máquina.

![image](https://github.com/user-attachments/assets/180bd843-ecc2-47aa-a9c4-4dca906c2de2)

Para ver las entradas de la UEFI, entramos a Boot Manager 
Y vemos las dos entradas, en las cuales, vemos el archivo desde donde se inician.

![image](https://github.com/user-attachments/assets/e41783fa-8fd7-4057-8c22-41035d81fd5e)

↓

![image](https://github.com/user-attachments/assets/cf5b9a8c-5261-48e6-b75b-f4aace1f880d)


Ahora, para que no nos inicie con Windows todo el rato, vamos a ordenar las entradas de la UEFI, marcando la entrada de Ubuntu como la primera, haciendo que este sea el primero sistema con el que se inicie. 

Para ello, vamos a **Boot Mainteance Manager>Boot options>Change order** 

En caso de que queramos cambiar el orden, lo que haremos será poner la entrada Ubuntu como la primera, pero no queremos hacer eso, así que lo dejamos así  

![image](https://github.com/user-attachments/assets/d5fd7b7a-20cf-4302-b297-075d22deb68a)

#### Una vez iniciado el sistema, haz lo siguiente:

Usaremos el comando:

```bash
fdisk -l /dev/sda 
```
y veremos las particiones.

![image](https://github.com/user-attachments/assets/ac073805-d79d-480a-8cee-c02922dfd4fc)

**/dev/sda1 – Swap**

- Sirve para la paginación – creada en la instalación de Ubuntu.

**/dev/sda2 - /**

- Sirve para instalar Ubuntu - creada en la instalación de Ubuntu.

**/dev/sda3 - /Home**

- Sirve para guardar los datos de los usuarios - creada en la instalación de Ubuntu.

**/dev/sda4 - EFI**

- Sin ella, no podríamos instalar ni Ubuntu ni Windows - creada en la instalación de Ubuntu. 

**/dev/sda5 – Reservada para Microsoft**

- Almacena información de inicio para Windows - creada en la instalación de Windows

**/dev/sda6 – Datos básicos de Micrsoft**

- Partición en la que se encuentra instalado Windows 10 - creada en la instalación de Windows.

---

### Haz que al iniciar la máquina, aparezca el GRUB y podamos elegir el sistema con el que arrancar

Volvemos a la UEFI y ahora si cambiamos el orden de arranque de esta, eligiendo como primera opción, a Ubuntu.

![image](https://github.com/user-attachments/assets/fa70b057-8c36-4629-8f3f-740be6c8ef1a)

Al arrancar el sistema, nos aparecerá el GRUB, pero no nos deja elegir entre Windows o Ubuntu, debido a que solo sale la opción de Ubuntu

![image](https://github.com/user-attachments/assets/20274b91-af7e-4278-927b-50ecaabfc749)

---

### Entra en Linux y edita las opciones de Grub de la siguiente manera

#### La opción por defecto debe ser Windows 
#### El tiempo de espera será de 30 segundos 

Para que a la hora de elegir que SO iniciar, nos salga Windows como predeterminado, tenemos que editar el fichero **grub**

![image](https://github.com/user-attachments/assets/60586953-16e7-42cf-a5cb-6fc78c48b85c)

Y poner en el valor **GRUB_DEFAULT** el número que corresponde a la partición de Windows que está instalada (no al número de la partición literal, si no al número de la entrada en el GRUB). 

Además, cambiaremos el valor **GRUB_TIMEOUT** para que, si no elegimos ninguna opción, arranque en la opción por defecto. 

![image](https://github.com/user-attachments/assets/98c3790d-f1b0-4623-b864-e777b6514b3d)

↓

![image](https://github.com/user-attachments/assets/ef6ed59f-1d6d-405f-b461-e24e87b24134)

#### Cambia los nombres de las entradas que aparecen para Ubuntu y Windows a los siguientes:

Para poder realizar estos cambios, vamos a editar dos ficheros, uno para cada entrada. 

Para Linux, editaremos el archivo **/etc/default/grub**  

![image](https://github.com/user-attachments/assets/46147bb8-779a-4733-ad7c-049afbc8ec78)


Dentro del GRUB, cambiaremos el valor **GRUB_DISTRIBUITOR** y pondremos el nombre que queremos que aparezca en el GRUB. 
Y también nos cambia el fondo a color azul.

![image](https://github.com/user-attachments/assets/babc5caa-fd33-4c8a-b241-487a78ed303e)

Después del cambio, hacemos un **update-grub**, reiniciamos la máquina y vemos que se cambio.

![image](https://github.com/user-attachments/assets/daa0be3a-b33b-4f7c-8aeb-bb2bcd8d7591)

---

#### Cambia los nombres de las entradas que aparecen para Ubuntu y Windows a los siguientes:

Ahora vamos con el de Windows. 
Esta vez, el fichero a editar será el **/etc/grub.d/30_os-prober**  
Nos iremos al **menuentry** de Windows, sobre la línea 161 y tendremos que añadir lo siguiente:

```bash
if [ "${LONGNAME}" = "Windows Boot Manager" ] ; then 
  LONGNAME="Implantacion de sistemas: W10" 
elif [ -z "${LONGNAME}" ] ; then   
  LONGNAME="${LABEL}"   
fi     
```

![image](https://github.com/user-attachments/assets/ad46885f-d5d3-457e-aed7-d406634f338d)

Volvemos a hacer un **update-grub**, reiniciamos la máquina y ya estaría.

![image](https://github.com/user-attachments/assets/aafbb6b9-100d-4c5c-9f90-2e4f736ce990)

---

### Dentro de las opciones del menú del Grub, existe un modo de recuperación que permite entrar al sistema con una interfaz de órdenes con permisos de root

#### Reinicia el sistema y entra en este modo

Para poder entrar, simplemente reiniciamos el sistema y en el GRUB, seleccionamos la opción **Advanced Options for Ubuntu**. 

![image](https://github.com/user-attachments/assets/db064bca-1332-4103-bce6-0d0efb9723b6)

Tendremos 2 opciones, elegimos la opción **recovery mode**.

![image](https://github.com/user-attachments/assets/4b2bfbdc-3c38-4a7e-89b2-218dd5a82cec)

Y nos inicia en la siguiente pantalla. 
Para poder entrar al sistema con **root**, simplemente elegimos la opción **Consola de superusuario** le damos enter y ya estamos dentro del sistema. 

![image](https://github.com/user-attachments/assets/e85a6c78-75c0-423b-817e-c67947108294)

#### ¿Qué ventajas y desventajas supone disponer de esta puerta trasera? 

Es una herramienta la cual carga algunos servicios básicos y es usada para reparar el SO con comandos. 

Es útil si quieres realizar alguna de las opciones que he mostrado antes, sin necesidad de entrar al sistema. 

Pero, al igual que podemos reparar el sistema, podemos llegar a romper algo, debido a que tenemos permisos de root y toda acción nos es permitida, así que un usuario inexperto que me meta ahí por equivocación (vemos que es muy fácil) puede llegar a fastidiar el sistema. 

O quizá un usuario más experto, es capaz de robar información importante, con completa facilidad.

#### Si Ubuntu está instalado en un servidor ¿crees que el riesgo de que entrara un intruso con este sistema sería alto? 
#### ¿Qué otro tipo de seguridad debería contemplarse?

Por supuesto que el riesgo sería alto, podemos entrar al sistema, con permisos y sin ningún tipo de seguridad. 
A nada que alguien acceda al equipo, tiene acceso toda la información del servidor. 

Para poder protegernos de esta vulnerabilidad, podemos ponerle una contraseña al GRUB (fossfreedom) 

O también podemos, **deshabilitar el recovery mode**, como hare en el siguiente punto.

#### Configura grub para impedir este tipo de inicio y comprueba que ya no se permite

Para hacer que ya no nos salga la opción de arrancar desde el Reocovery mode, tenemos que modificar el GRUB, más concretamente, el valor.

```bash
GRUB_DISABLE_RECOVERY
```
Actualizamos el GRUB, reiniciamos el equipo y vemos que ya no podemos acceder.

![image](https://github.com/user-attachments/assets/7ded06f2-0b73-435b-977c-44d8d6359911)

