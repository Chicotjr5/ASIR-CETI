## Crear maquina virtual

### Descargar ISO de la página de Microsoft

En esta práctica vamos a crear una máquina virtual, en la que instalaremos W 10 y WXP, para romper el gestor de arranque y repararlo. 

Antes de crear la máquina, tenemos que obtener las ISO. 
Para ello, vamos a la página de Microsoft y nos descargamos la herramienta MediaCreationTool, el cual es un software que nos permite crear dispositivos de arranque y obtener la imagen ISO que necesitamos. 

Lo bueno de este software, es que siempre nos va a dar la ISO con la última actualización de Windows 10.

![image](https://github.com/user-attachments/assets/1b5ec26c-46bc-426c-b9d3-dffd64fb0d51)

### Obtener ISO

Al arrancar el programa y aceptar los términos y condiciones, nos da 2 opciones:

- **Actualizar este equipo ahora**
  - Para actualizar el equipo de forma manual, en vez de esperar a que se actualice por Windows Update
- **Crear medios de instalación**
  - Para crear dispositivos de arranque, para instalar Windows en equipos
 
![image](https://github.com/user-attachments/assets/5276ba67-b120-4ce0-970e-79b2f6f73fc1)

Al darle a siguiente, nos da a elegir otra vez entre 2 opciones:

- Unidad USB
  - Para crear el USB de arranque directamente
- Archivo ISO
  - Para crear el archivo ISO y guardarlo en el sistema
 
Obviamente queremos la ISO, así que elegimos la segunda opción

![image](https://github.com/user-attachments/assets/045c3941-9b3b-433d-a45c-e13ee54b9654)

Le decimos donde guardar la ISO y empieza a crearla. 


![image](https://github.com/user-attachments/assets/539b3c88-a2d8-41c9-b259-b909e13ea001)

↓


![image](https://github.com/user-attachments/assets/6e3a85f0-15ec-4250-a784-cf2062034808)

### Crear y configurar máquina virtual 

Una vez tenemos la ISO, podemos comenzar con la creación y configuración de esta. 
A la hora de crearla, tenemos que seleccionar que va a ser para WXP, debido a que la máquina va a instalarse con los drivers de Wxp, que son reconocidos por W10. 

Si seleccionásemos que sea de W10, a la hora de instalar WXP, no podría porque no reconocería los dispositivos. 

Esta máquina contará con un disco de 50 GB y una memoria de video de 128 MB  


![image](https://github.com/user-attachments/assets/0a917e3b-ffbd-4025-b425-50eef49ea512)

Otra cosa a tener en cuenta, es que tenemos que **deshabilitar la opción de habilitar UEFI**, debido a que vamos a trabajar sobre **MBR** y UEFI posee GPT.

![image](https://github.com/user-attachments/assets/37ea1c16-8480-47ac-a09a-897cf40e398d)

## Instalar W10 

Una vez finalizada la máquina, le ponemos la ISO que nos acabamos de descargar y empezamos la instalación

![image](https://github.com/user-attachments/assets/c73ebfcb-3d3b-4349-a540-7878a12980a7)

Después de especificar que no tenemos clave de producto y la versión a instalar (da igual que versión pongamos) llegamos a la parte del tipo de  instalación. 

Podemos elegir entre Actualización (que sirve para actualizar el equipo, debido a que solo esta disponible si el equipo ya tiene una versión de Windows). 

O entre Personalizada, en la que podemos seleccionar el disco/partición donde instalar Windows, además de poder formatear discos y particiones.

![image](https://github.com/user-attachments/assets/2f1b5658-97fa-4e69-9e2c-9945a591b5c3)

Obviamente vamos a elegir **Personalizada**, donde tenemos la siguiente pantalla.

![image](https://github.com/user-attachments/assets/e2a061d9-c806-416a-a058-11f202bc3e87)

Como podemos ver, tenemos el disco duro de 50GB sin formatear y sin particiones. 
Así que al darle al botón **Nuevo**, especificaremos el tamaño de **30GB** para una nueva partición. 

![image](https://github.com/user-attachments/assets/7ac02c15-f803-4e19-ac68-d81e8bbbc096)

Al darle al botón **Aplicar**, nos sale una ventana en la que nos dice que Windows va a crear una particion adicional, donde se encontrará el MBR.

![image](https://github.com/user-attachments/assets/e25a6deb-2923-4307-85f0-7cb7c995bbca)

Como podemos ver, se ha creado una partición más, donde esta el BCD y otros archivos de arranque. 
El espacio no asignado de 20GB, lo usaremos para la instalación de **Wxp**. 

![image](https://github.com/user-attachments/assets/e68c20b2-e57e-4b75-a2af-a4756c1b9fd9)

## Instalar WXP

Ahora instalemos Wxp, el cual va a sobreescribir el gestor de arranque, permitiéndonos solo encender con Wxp. 
Metemos la ISO y empezamos la instalación. 
Obviamente, para empezar la instalación, tenemos que presionar Enter 

![image](https://github.com/user-attachments/assets/b55fd868-9fb9-4ae3-abe3-b9732ebe6228)

Al darle a entrar, nos enseña todas las particiones que tenemos. 
Elegiremos la partición de 20GB que no hemos usado antes para instalar ahí Wxp. 

![image](https://github.com/user-attachments/assets/ff5ce6b1-4e33-44d5-8c8f-506531afc5b6)

Al seleccionar la partición, le decimos que le de un formato NTFS rápido.

![image](https://github.com/user-attachments/assets/33f67d11-a2b1-44fb-83d1-8b49ee9a9542)

Después de esperar un poco, se instala e inicia Wxp. 

![image](https://github.com/user-attachments/assets/c02bfe91-a5d7-42f6-93b9-592139f0db1f)

Y atendiendo a la pregunta de si podemos instalar un Wxp de 32 bits en una máquina de 64 bits, la respuesta es que si podemos, debido a que 64x soporta software de 32 bits, en cambio, si lo hiciéramos al revés, no se podría, debido a que 32x no soporta 64 bits. 

## Reparar arranque

Como explique anteriormente, al instalar Wxp al final, este sobrescribe el gestor de arranque, poniendo el suyo propio y borrando el bcdmgr, debido a que en esa época no existía, así que implanta su propio MBR.

Y como no tenemos el bcdmgr, el sistema no detecta que W10 está instalado y no lo muestra, accediendo directamente a Wxp. 

Así que esto lo tenemos que arreglar. 
Para ello, iniciamos la máquina desde el instalador de W10 y en vez de darle a Instalar equipo, le damos a Reparar el equipo.

![image](https://github.com/user-attachments/assets/16b4bfa6-52eb-4ee2-9008-9c89d46b3ef1)

Nos sale una pantalla en la que podemos iniciar sesión con Windows 10 (no funciona), solucionar problemas o apagar equipo. 
Obviamente, seleccionamos la opción de **Solucionar Problemas**.

![image](https://github.com/user-attachments/assets/a4420721-0ec6-441a-a19e-d763d4d1e75a)

Al entrar en este menú, tenemos varias opciones para reparar los posibles errores que tengamos. 
Pero nosotros lo haremos vía código, así que usaremos el símbolo del sistema.

![image](https://github.com/user-attachments/assets/c86fd0f2-787b-40f5-9b81-6f5e4c021d47)

Y accedemos a la consola, para ejecutar los respectivos comandos. 
Y tenemos que ejecutar la consola con el instalador de W10, debido a que si intentamos reparar el MBR y el BCD con el instalador de XP, este los va a dejar igual que como estaban, así que no nos sirve.

![image](https://github.com/user-attachments/assets/7ecacd3f-0bc7-42b5-9824-a064cebe8ba7)

Lo que tenemos que hacer el reparar el MBR y el BCD. 
Para ello ponemos los siguientes comandos

```bash
bootrec.exe /fixmbr Escribe un nuevo MBR compatible con Windows 10. 
```
- Escribe un nuevo MBR compatible con Windows 10


```bash
bootrec.exe /fixboot 
```
- Escribe un nuevo sector de arranque en la partición del sistema utilizando un sector de arranque compatible con Windows 10
- Pero al ejecutar esta última orden, nos dice **Acceso denegado**, debido a la partición del disco, al archivo BCD y a los problemas del administrador de arranque.
- Para arreglarlo, ejecutamos la orden:

```bash
bootsect /nt60 sys 
```

- **Bootsect.exe** actualiza el código de arranque maestro para las particiones de disco duro para cambiar entre Bootmgr y NT Loader (NTLDR).
- **NT60** aplica el código de arranque maestro compatible con Bootmgr a SYS o ALL
- **SYS** Actualiza el código de arranque maestro en la partición del sistema que se usa para arrancar Windows. 

![image](https://github.com/user-attachments/assets/825c8744-0f49-488b-b628-be069601b401)

Una vez arreglado, al arrancar la máquina, solo iniciamos desde W10, debido a que el instalador de W10 volvió a sobrescribir el MBR y el BCD, así, que tendremos que añadir editar nosotros de forma manual el BCD para poner iniciar desde WXP.

## Añadir entrada de WXP

### Crear entrada 

Para poder editar el BCD, tenemos que usar el terminal de Windows 10. 
Para empezar, ponemos el comando **bcdedit** para ver las entradas que tenemos en el BCD. 

Podemos ver que no tenemos por ningún lado la entrada de WXP, así que la añadiremos manualmente. 
Para ello, usamos el comando:

```bash
bcdedit /create {NTLDR} /d “Windows XP “Práctica1T3” 
```
**NTLDR** es el identificador de la entrada 

![image](https://github.com/user-attachments/assets/9b45b55e-0550-41c2-9ce1-97bc0cff9f8c)

### Aportar valores a la entrada creada 

Una vez creada la entrada, tenemos que aportar una serie de valores. 
Le diremos que su partición será la E: (la de Wxp, si hacemos esto estaría mal y no nos funcionaría porque la partición activa es la de MBR) y la ruta del programa que carga, el cual es **NTLDR**. 

Para ello usamos los comandos: 

```bash
bcdedit /set {NTLDR} device partition=E: 
```
- Especificar partición
  
```bash
bcdedit /set {NTLDR} path \NTLDR
```
- Especificar ruta del programa que tiene que ejecutar

![image](https://github.com/user-attachments/assets/55c630b4-71e7-4a16-9da5-a3220c2b3bc6)

Y para acabar, modificamos el orden en el que se mostrará la entrada recién creada, para que BCD use el gestor de arranque de Windows 10 y nos muestre su menú de inicio. 

Usamos el comando:

```bash
Bcdedit /displayorder {NTLDR} /addlast
```

![image](https://github.com/user-attachments/assets/e6468015-a14f-4f9f-a886-8e180c645070)

### Comprobar funcionamiento

Al reiniciar el sistema, vemos que podemos elegir entre los dos SO instalados, por lo que esta parte esta bien realizada. 

![image](https://github.com/user-attachments/assets/f4361703-0a75-4e3d-b982-d34635eae4cc)

El problema viene cuando queremos iniciar Wxp. 
Nos da el siguiente error

![image](https://github.com/user-attachments/assets/708bc3a2-c4aa-4abd-9842-23f29f1be639)


Este error nos indica que falta el archivo \NTLDR el cual es el que permite arrancar Wxp. 
Y como comenté antes, al elegir la partición, teníamos que haberle asignado la partición activa y no en la que viene instalado el SO.

### Arreglar entrada 

Para arreglar esto, tenemos que volver a editar la entrada de Wxp. 

Volvemos a iniciar W10 y nos vamos al administrador de discos, para ver cuál es la partición activa y ver que letra de unidad posee. 

La partición activa es la de **Reservado para sistema**, la cual **no tiene** una letra de unidad asignada, así que se la tenemos que asignar. 

Damos clic derecho sobre la partición y damos a la opción **Cambiar la letra** y le asignamos una letra (en este caso, la F:) 

![image](https://github.com/user-attachments/assets/c0b90d6a-0629-468d-ae97-3842637f400e)

Pero ¿Por qué tenemos que cambiar la partición? 
Esto es debido a que el programa **NTLDR** no se encuentra en la partición de Wxp, si no que se encuentra en el la partición de **Reservado para el sistema**, la cual es donde se encuentra el MBR 
Al asignar la unidad de partición, debimos asignarle la partición del **MBR**. 

Pero veremos más adelante que esto a MI no me ha funcionado, a otros compañeros si.

Volvemos a editar la entrada, marcando que su partición es la F: y que el programa a ejecutar se encuentra en **/NTLDR**. 

![image](https://github.com/user-attachments/assets/3ed1f603-7026-49a1-aa8d-77d6fa8491cd)

Pero no ha funcionado este método.

### Añadir manualmente el programa NTLDR en la partición de XP

Una forma menos ortodoxa de hacerlo, es coger manualmente el programa NTLDR y copiarlo a la partición de XP. 

![image](https://github.com/user-attachments/assets/f9adb86b-b3d8-4e3f-af40-ef15d7026a15)

↓

![image](https://github.com/user-attachments/assets/f1ab268a-368f-44b5-9029-29dce53ac993)

Y por consiguiente, tenemos que volver a editar la entrada y decirle que su partición es la de Wxp. 
Al encender la máquina y seleccionar Wxp, ahora si que si nos deja iniciarlo. 

![image](https://github.com/user-attachments/assets/e722e905-044f-4c90-a7b9-adf1cca43e9b)

## Crear nueva entrada para iniciar W10 en modo seguro 

Ahora vamos a crear una entrada para iniciar W10 en modo seguro 
Lo que vamos a hacer, será copiar la entrada de W10 y decirle que inicie en modo seguro con los siguientes comandos: 

```bash
bcdedit /copy {current} /d “Windows 10 modo seguro” 
bcdedit /set {id de la entrada} safeboot minimal
```

![image](https://github.com/user-attachments/assets/986bdc47-d9e5-449b-85ed-54c20bba1884)

Al iniciar otra vez la máquina, vemos que tenemos una nueva entrada.

![image](https://github.com/user-attachments/assets/e50018d9-e5df-4037-9668-ab828ad724ac)

## Ver archivos que conforman la partición del sistema

Ahora vamos a ver los archivos de **bootmgr** y **BCD** 
Para ver esto, tenemos que asignarle una letra de unidad.

![image](https://github.com/user-attachments/assets/f36ec082-a0c9-4d2a-8e78-979fd23341bd)

Después de esto, vamos a la unidad y entramos, pero veremos que no hay nada, esto es porque las carpetas están ocultas como carpetas del sistema.

Así que tenemos que hacer que se vean. 

Vamos a **Vista>Opciones>Cambiar opciones de carpeta y búsqueda>Ver>** y desmarcamos la opción: 
**Ocultar archivos protegidos del sistema operativo**

![image](https://github.com/user-attachments/assets/0b0c147f-8eed-4184-b6d2-b2dee0d96b40)

Ya podemos ver los archivos de esta partición, pero solo nos interesan los archivos **bootmgr**.

![image](https://github.com/user-attachments/assets/da8f6632-6cd5-4a82-953a-70f31707e5c8)

Y los archivos que conforman el BCD:

![image](https://github.com/user-attachments/assets/3e3621a6-1d28-4327-8eb2-3c92ea0322f7)

## Instalar W10 con UEFI 

Ahora vamos a crear una máquina virtual con W10, pero en vez de usar una BIOS normal, vamos a usar una UEFI. 
Para crearla, tenemos que habilitar la opción de:  
**Habilitar EFI (solo SO especiales)**

![image](https://github.com/user-attachments/assets/ddad543a-fce5-4140-89ae-3ca8cf2781ab)

Una cosa a tener en cuenta, es que como esta va a ser la máquina que vamos a usar durante el curso, tenemos que elegir que sea la versión PRO. 

![image](https://github.com/user-attachments/assets/6f9407a2-9ae9-469c-8649-ab4029b24b0a)

Al elegir el disco, podemos observar que se crean 3 particiones: 
- Donde estará la UEFI
- Una partición de recuperación
- Y la partición del sistema

![image](https://github.com/user-attachments/assets/991470bb-87bf-4a25-b5c4-e54fc03461ff)

Dejamos que se instale, configuramos un par de cosas y ya habríamos acabado. 

![image](https://github.com/user-attachments/assets/eccb848f-03e2-4d74-a6b2-3cdb285d4eb9)

## Ver las particiones desde el administrador de discos

Si vamos al administrador de discos, veremos las 3 particiones creadas

![image](https://github.com/user-attachments/assets/4813fc87-41b0-49d4-9c9a-5ce14992cb64)

## Crear USB con varios SO arrancables usando Yumi 

Ahora, vamos a crear un USB con 2 SO arrancables. 
Para poder hacerlo, usaremos **Yumi**, el cual es un software para crear dispositivos de arranque, el cual, nos permite poder tener más de 2 instaladores en el mismo USB (cosa que con otros softwares como Rufus, no funciona). 

Iniciamos **Yumi** y nos sale una pantalla, para elegir el USB que usaremos y que tipo de instalación será, si Windows, Linux o alguna otra

![image](https://github.com/user-attachments/assets/c0ce7588-4b5f-44bd-8e31-b7cb1ce7644a)

↓

![image](https://github.com/user-attachments/assets/8798236e-b475-4913-bea8-a1973472169a)

Después de elegir el S.O y la ISO que usaremos, empieza a crear el USB

![image](https://github.com/user-attachments/assets/fc26aa62-deef-47e3-aef5-62ee5fd81fb5)

↓

![image](https://github.com/user-attachments/assets/b4ab3d33-5686-4fd8-80ff-7c74a053fe89)

Para poder comprobar que funciona, vamos a conectar un USB a la máquina virtual. 
Para eso, tenemos que añadir un nuevo controlador y encender desde el Boot Manager para poder iniciar con el USB.

![image](https://github.com/user-attachments/assets/5f3bfe05-e327-4a42-a118-f1480e189c69)

↓

![image](https://github.com/user-attachments/assets/ff6bae3c-6b3d-4afe-8026-c5dab6d26fdc)

Al iniciar con el USB, vemos que podemos elegir entre iniciar con Ubuntu o con Windows. 
Así que para probar que funciona, iniciaremos con Ubuntu.

![image](https://github.com/user-attachments/assets/5db5f69f-17f5-41d9-b60e-0d6ede591902)

↓

![image](https://github.com/user-attachments/assets/77097220-1628-43b9-a6d2-57b7ea6fb87f)


## Instalar W11 en una máquina virtual

### TPM

Para finalizar esta práctica, veremos como instalar W11 en una máquina virtual. 
Tenemos que tener en cuenta, que si no contamos en el TPM 2.0, no podremos instalarla. 
Pero, ¿Qué es el TPM?

**Módulo de Plataforma de Confianza**

Se trata de un pequeño chip que debe venir instalado en la placa base de tu ordenador.  

Este chip **es un criptoprocesador seguro**, que sirve para **almacenar las claves de cifrado de Windows** y proteger así la privacidad de tus archivos más sensibles.

Se trata de un chip que viene instalado en estado pasivo en algunos equipos, aunque no en todos.  

Con instalado en estado pasivo quiere decir que viene desactivado de fábrica, y que tendrás que activarlo de forma manual mediante el software de UEFI o el propio sistema operativo que tengas en tu ordenador. En la mayoría de ordenadores, se activa desde la BIOS/UEFI.

### Empezar instalación

Para instalar W11, obviamente hay que crear una máquina virtual, que contará con los requisitos mínimos de W11 (4GB Ram, un disco duro de más de 64GB, que el procesador tenga mínimo 2 núcleos, etc), además de necesitar un software de virtualización compatible con W11 (en caso de VirtualBox, a partir de la versión 6.1.28). 

Creamos la máquina con estas características y iniciamos la instalación.

![image](https://github.com/user-attachments/assets/ba54cb12-fd87-4aee-a015-b0f787887695)

Pero aunque tengamos en la máquina los requisitos mínimos, esto no es suficiente y nos dice que no cumplimos los requisitos mínimos. 

![image](https://github.com/user-attachments/assets/e4fd5c00-555e-4f9e-8288-07e73309a9cd)

### Arreglar problemas

Como podemos ver, W11 no se instala, así que vamos a hacer un par de ajustes. 

Presionamos **alt+F10** y nos saldrá un CMD, en el cuál pondremos el comando:  
```bash
regedit # El cual sirve para abrir el registro del sistema
```

![image](https://github.com/user-attachments/assets/21230e7c-8915-4034-befd-c50c32edd5c3)

Una vez abierto, vamos a **HKEY_LOCAL_MACHINE>SYSTEM>Setup** y creamos una nueva Clave llamada **LabConfig** 

![image](https://github.com/user-attachments/assets/012e2958-206e-462b-8047-c5e795589156)

Dentro de esta clave, crearemos 4 valores de DWORD, los cuales serán:

```bash
BypassTPMCheck 
• BypassCPUCheck 
• BypassRAMCheckç  
• BypassSecureBootCheck 
```

Todos estos valores sirven para decirle a W11 que se salte la comprobación del TPM, CPU, RAM y secure boot.

![image](https://github.com/user-attachments/assets/883f2a84-7297-4353-a664-67c9bb01cb04)

Y a cada uno de estos valores, le daremos un valor de 1.

![image](https://github.com/user-attachments/assets/b634f27f-1242-4a94-af88-9697117138e8)

### Finalizar instalación

Al cerrar el registro, salimos del instalador y volvemos a empezar el proceso y al llegar a la elección de la versión de W11, ya no nos saldrá más la pantalla de antes, si no que nos dejará seguir con la instalación. 

![image](https://github.com/user-attachments/assets/4dbeea61-9a40-4bdc-9660-a9a4d18b0806)

↓

![image](https://github.com/user-attachments/assets/c3853a26-04ab-44e3-909f-9238cbf84384)















