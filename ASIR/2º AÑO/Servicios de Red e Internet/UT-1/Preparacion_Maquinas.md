## Windows Server 2012

### Instalación

Y ahora empezaría a instalarse. 
Cuando ya está acabando, nos pide que pongamos una contraseña. 
Está contraseña no puede ser cualquiera, sino que tiene que cumplir unos requisitos de complejidad, los cuales cambiaremos más adelante.

<img width="693" height="276" alt="image" src="https://github.com/user-attachments/assets/a97628dc-dcb6-4caa-bc9e-cc689bfd568c" />

Después de ponerle la contraseña, ya podemos acceder a nuestro Windows Server 2012.

<img width="664" height="498" alt="image" src="https://github.com/user-attachments/assets/83b5c28a-5e43-4684-8aeb-81c9c23a424c" />

---

### Preparación de la máquina

Una vez instalado, lo primero que haremos será instalar las Guest Adittions, las cuales nos permiten poder copiar/pegar texto/archivos entre el host y la máquina y hace que la resolución de la máquina se adecue a la pantalla que estamos usando. 

<img width="357" height="218" alt="image" src="https://github.com/user-attachments/assets/8d254ec9-8e08-4192-9e17-df2231f26def" />

Al darle a la opción de **insertar imagen de CD de las Guest Adittions**, aparecerá en nuestro equipo un CD con el logo de Virtualbox, este es nuestro CD.

Lo abrimos, ejecutamos el programa instalador de las guest adittions y se instalan.

<img width="412" height="113" alt="image" src="https://github.com/user-attachments/assets/816a35bf-e2c5-4f09-b08b-1090da20b014" />

Una vez acaba, tenemos que reiniciar el equipo para que se instale de forma correcta. 

<img width="426" height="134" alt="image" src="https://github.com/user-attachments/assets/7d2354e2-2d64-4f5f-a022-fd51ef885947" />

Otra configuración que hay que hacer, es añadir una carpeta compartida host-Máquina.

<img width="254" height="175" alt="image" src="https://github.com/user-attachments/assets/15f222bb-4879-4bd5-bd4b-34c496d96fc8" />

↓

<img width="504" height="110" alt="image" src="https://github.com/user-attachments/assets/5e52f448-6c85-4ec8-bc01-7a175b94c1f7" />

Cuando iniciemos el equipo, se montará la carpeta automáticamente.

<img width="425" height="119" alt="image" src="https://github.com/user-attachments/assets/a9d61596-4c81-4506-ba15-f9f770547774" />

---

### Preparación del sistema operativo

Otra configuración que habría que hacer es desactivar las actualizaciones automáticas. 
Por suerte, en mi instalación, ya venía desactivado, así que no tuve que realizar ninguna configuración.

Pero los pasos a seguir serían los siguientes:

-  Abre el panel de control y haz clic en "Windows Update".
-  Haz clic en "Cambiar configuración" en el panel izquierdo.
-  Selecciona la opción "Nunca buscar actualizaciones" en el menú desplegable.
-  Haz clic en "Aceptar" para guardar los cambios. 

<img width="726" height="369" alt="image" src="https://github.com/user-attachments/assets/af443b0c-a94d-4451-95b0-db5d5a4ff485" />

Otra configuración por realizar es desactivar el protocolo **TCP/IPv6**. 
Para ello, ponemos en el buscador de Windows “Ver conexiones de red”, seleccionamos la conexión correspondiente>clic derecho>Propiedades y desactivamos el protocolo TCP/IPv6. 

<img width="391" height="31" alt="image" src="https://github.com/user-attachments/assets/671c292a-5f2e-4d9b-b01a-efea0b0dcc2e" />

↓

<img width="389" height="27" alt="image" src="https://github.com/user-attachments/assets/67ad4483-76d8-4c85-8e9b-e7927d8060f1" />

Además, para que este cambio se haga efectivo, podemos modificar el registro del sistema. 

Vamos a: 
**HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\TCPIP6\Parametres
**

<img width="601" height="349" alt="image" src="https://github.com/user-attachments/assets/fa91fcc0-fb47-46d2-a63a-1f87a725c63e" />

Y creamos un nuevo valor de DWORD de 32 bits llamado **DisabledComponentes** cuyo valor será: **ff** 

<img width="325" height="159" alt="image" src="https://github.com/user-attachments/assets/0ae22674-6e41-45c9-8089-e3e13fd2b0a0" />

La siguiente configuración que haremos será cambiar la IP.

Vamos a **“Ver conexiones de red”, seleccionamos la conexión correspondiente>clic derecho>Propiedades>TCP/IPv4** y ya aquí ponemos la configuración que corresponda. 

En mi caso:

- IP: 192.168.203.031/16
- Gateway: 192.168.200.1
- DNS: 8.8.8.8

<img width="520" height="312" alt="image" src="https://github.com/user-attachments/assets/c0050dc7-863a-4e4f-9f83-ca95437a6fd6" />

Ahora, vamos a cambiar el PROMT del CMD. 
Para ello, tenemos que crear una nueva variable de entorno del sistema.

<img width="439" height="493" alt="image" src="https://github.com/user-attachments/assets/f1c113c0-a282-4230-9e40-c071568c3ebc" />

Esta variable tendrá por nombre PROMT y su valor será el siguiente:

<img width="434" height="180" alt="image" src="https://github.com/user-attachments/assets/404625a5-83fa-47eb-8775-29aac2def1f6" />

Así que, si ahora abrimos el CMD, saldrá lo siguiente:

<img width="452" height="42" alt="image" src="https://github.com/user-attachments/assets/e5d95972-5059-4dfc-9f56-85adef0c2a9c" />

Como última configuración a realizar, vamos a editar las directivas de contraseñas para cambiar la contraseña. 

Para ello, buscamos **“Directiva de seguridad local”**

<img width="388" height="160" alt="image" src="https://github.com/user-attachments/assets/8701772f-2a9d-493e-b46d-b2873a51d129" />

Dentro de las directivas de seguridad local, vamos a **Directivas de cuenta>Directiva de contraseñas** y editaremos la directiva de **“La contraseña debe cumplir los requisitos de complejidad”**

<img width="724" height="209" alt="image" src="https://github.com/user-attachments/assets/fcf00268-020b-4e17-b7fa-08d2f8574c44" />

Una vez editado, vamos a **Panel de control>Cuentas de usuario>Administrar cuentas>Cambiar una cuenta>Cambiar la contraseña**. 

<img width="445" height="145" alt="image" src="https://github.com/user-attachments/assets/95862188-4f1b-44da-b664-1ee612890ec5" />

Y cambiamos la contraseña.

<img width="393" height="207" alt="image" src="https://github.com/user-attachments/assets/e9e8588c-7bbb-41fd-8298-c0a8e16918d2" />

---

## Windows 7

### Preparación máquina 

Haremos la misma preparación que con la máquina de Windows Server. 
El nombre de la máquina será **07-W7-03**

<img width="613" height="178" alt="image" src="https://github.com/user-attachments/assets/72b36387-f3c3-430c-9bed-96ddfa247f88" />

Y cambiaremos el adaptador por un **Adaptador puente**. 
Cuyos últimos dígitos de la MAC serán: **070302**

<img width="593" height="285" alt="image" src="https://github.com/user-attachments/assets/5c761b3d-cd86-4338-b9a5-2f88455487ac" />

---

### Instalación 

Iniciamos la máquina e iniciamos la instalación.

<img width="521" height="345" alt="image" src="https://github.com/user-attachments/assets/ee30f30b-4518-4f7a-9563-2612bf0d3205" />

Lo único distinto en la instalación es que el usuario no es Administrador y si podemos poner la contraseña que queramos.

<img width="412" height="176" alt="image" src="https://github.com/user-attachments/assets/4b83c4a4-a9e7-41d9-9471-1e34e87fa794" />

↓

<img width="416" height="228" alt="image" src="https://github.com/user-attachments/assets/dbd18335-ebe0-4a44-91b5-1b6631ea1704" />

---

### Preparación del sistema operativo 

En Windows 7 no hay que hacer tantas configuraciones como en Windows Server 2012. 
Por ejemplo, la configuración de las directivas de contraseñas no hay que hacerla, pero el resto sí. 
Una de ellas, es cambiar la IP del equipo, para ello buscamos **“Ver conexiones de red”** y nos saldrá nuestra interface. 

<img width="396" height="81" alt="image" src="https://github.com/user-attachments/assets/a132a133-fccc-4195-8f01-2880833589ab" />

**Clic derecho>Propiedades>TCP/IPv4**

<img width="284" height="243" alt="image" src="https://github.com/user-attachments/assets/7264718a-180c-4b97-bdfe-3e988cc5c294" />

Y ya cambiamos la configuración TCP/IP por la siguiente:

<img width="565" height="239" alt="image" src="https://github.com/user-attachments/assets/5074bccf-d990-4b9d-a37a-c225940c9a6b" />

Otra configuración que tenemos que hacer, es cambiar el PROMPT del sistema. 
Para ello, haremos lo mismo que en Windows Server. 
Crearemos una nueva variable de entorno del sistema, que se llame PROMPT y cuyo valor será el siguiente.

<img width="628" height="198" alt="image" src="https://github.com/user-attachments/assets/46e4d1c9-3b30-4680-b0a3-055a5dcb2116" />

Que da como resultado: 

<img width="524" height="58" alt="image" src="https://github.com/user-attachments/assets/437229f8-d02e-44b7-9dec-af12cffacf3b" />

Ahora, desactivaremos IPv6. 
Tenemos que ir a **Ver conexiones de red>Clic derecho>Propiedades>TCP/IPv6** y desactivarlo. 

<img width="443" height="29" alt="image" src="https://github.com/user-attachments/assets/181f96d8-e4c1-434f-969e-e829665218d9" />

↓

<img width="445" height="26" alt="image" src="https://github.com/user-attachments/assets/ae3c8748-2aba-4c5e-8536-66e3ed680d1d" />

Y al igual que en Windows Server 2012, las actualizaciones automáticas ya están desactivadas, así que no hay que hacer ninguna configuración.

<img width="666" height="247" alt="image" src="https://github.com/user-attachments/assets/c0d8aee1-e11c-4a4d-b086-28e9f95502c4" />

Y no se nos puede olvidar, el habilitar la carpeta compartida con el Host.

<img width="404" height="281" alt="image" src="https://github.com/user-attachments/assets/d7f07881-50c9-4f58-bc19-5dbd0ff1d597" />

↓

<img width="361" height="91" alt="image" src="https://github.com/user-attachments/assets/5f25f19f-e5e7-45b8-8053-b4f004c19cd2" />

---

## Ubuntu Desktop 22.04 

### Preparación máquina

La preparación de la máquina de Ubuntu-Desktop, es igual al resto, solo hay que 
cambiar el nombre de la máquina.

<img width="310" height="147" alt="image" src="https://github.com/user-attachments/assets/84970cab-67c2-40c5-aaaa-28caa2cd71cf" />

El adaptador, para ponerlo en **modo puente** y cambiar la MAC. 

<img width="633" height="295" alt="image" src="https://github.com/user-attachments/assets/d402919e-03fa-4c22-b11c-086a0e1ea9fe" />

---

### Instalación

En la instalación de Ubuntu no hay que especificar nada en especial, lo único importante, es poner el usuario y la contraseña del equipo.

---

### Preparación Sistema Operativo 

Lo primero que vamos a hacer, es instalar las guest additions, para que la carpeta compartida funcione y para que la pantalla se ajuste a la resolución. 
Insertamos el CD de instalación y lo abrimos, entonces, ejecutaremos el archivo **autorun.sh**.

<img width="413" height="361" alt="image" src="https://github.com/user-attachments/assets/93c545fa-b24a-416d-a330-d693cc91a277" />

Pero nos saldrá un error, debido a que antes, tenemos que instalar el siguiente paquete: 

<img width="885" height="27" alt="image" src="https://github.com/user-attachments/assets/613c6141-3dbf-4168-8a32-e1893bedee08" />

Después de instalar el paquete, ejecutamos el script de nuevo y se instalan de forma normal y sin ningún tupo de problema. 

En Ubuntu no tenemos que hacer tantas configuraciones como en Windows (permitir contraseñas no complejas, quitar actualizaciones automáticas etc.) 
Pero tenemos que seguir haciendo, así que vamos a ello. 
La que toca ahora es deshabilitar IPV6.

Para ello, vamos al menú desplegable que se encuentra en la **parte superior derecha>Cableado Conectada>Configuración de red cableada>Engranaje>IPv6>Desactivar**

<img width="310" height="189" alt="image" src="https://github.com/user-attachments/assets/475e7a12-9bda-4821-a8fb-821290364526" />

↓

<img width="479" height="84" alt="image" src="https://github.com/user-attachments/assets/5cc72173-7c62-4854-842c-28f4f6d1ccf1" />

↓

<img width="667" height="230" alt="image" src="https://github.com/user-attachments/assets/fbe12952-52e5-4ad8-84cb-8d0bbd54214a" />

Una vez desactivado IPV6, podemos configurar la red. 
Esto lo podemos hacer con interfaz gráfica o con ficheros de configuración. 
Obviamente, la segunda opción es más recomendable y preferible, así que es la que vamos a hacer.

Abrimos el fichero **/etc/netplan/01-network-manager-all.yaml**

<img width="808" height="20" alt="image" src="https://github.com/user-attachments/assets/7eb78e20-969c-4085-a00b-4f0ee75b474a" />

Y ponemos la configuración de red que nos ha dado el profesor.

<img width="580" height="324" alt="image" src="https://github.com/user-attachments/assets/248baadd-2db7-4556-82e1-72d0eba5458c" />

Guardamos los cambios y para aplicarlos, ejecutamos el comando:

```bash
sudo netplan apply 
```

<img width="612" height="28" alt="image" src="https://github.com/user-attachments/assets/93150ff6-4f43-4b5f-b3ce-54e89dfc72e3" />

Para comprobar que se guardo la configuración de red, ejecutamos un:

```bash
ifconfig
```

<img width="718" height="179" alt="image" src="https://github.com/user-attachments/assets/a8d4cc70-62fc-43fc-bb27-45339be98e40" />

Ahora nos tenemos que asegurar de que la carpeta compartida está montada y disponible. 
Gracias a que Ubuntu Desktop tiene interfaz gráfica, no tenemos que montar manualmente la carpeta o hacer alguna configuración extra. 

Ejecutamos un 

```bash
ls /media/sf_Mquinas_compartida/
```
y visualizamos la carpeta “Hola” la cual fue creada anteriormente para comprobar el acceso a la carpeta compartida en las máquinas virtuales. 

<img width="830" height="59" alt="image" src="https://github.com/user-attachments/assets/6dda35c2-4b16-4717-9317-eb5d2bdd2489" />

---

### Conexión SSH 

En el Ubuntu desktop vamos a realizar una conexión SSH con el Ubuntu-Server. 
Para poder hacerla, tenemos que ejecutar el comando ssh pasando la IP del servidor como parámetro. 

```bash
ssh 192168.203.33
```

<img width="664" height="601" alt="image" src="https://github.com/user-attachments/assets/06faccb8-81e4-43ba-95b7-89ca5e7f03d2" />

Vemos que hemos podido conectarnos sin ningún problema, además de que podemos hacer cosas como instalar paquetes o crear archivos, iniciar servicios etc.

<img width="552" height="57" alt="image" src="https://github.com/user-attachments/assets/dec9d446-42d2-40c9-932c-b7f899fff445" />

---

## Ubuntu Server

### Preparación de la máquina

Como en el resto de las máquinas, vamos a ponerle su respectivo nombre

<img width="347" height="74" alt="image" src="https://github.com/user-attachments/assets/02125777-280f-496c-a036-f448fafee9c5" />

Y con su adaptador de red en modo puente y su MAC cambiada 

<img width="643" height="321" alt="image" src="https://github.com/user-attachments/assets/8685dfe6-b66b-4495-8b6e-e0d229d425bd" />

Y no se nos puede olvidar, el habilitar la carpeta compartida, la cual, gracias a que instalamos una interfaz gráfica, se montará ella sola en **/media**.  

<img width="377" height="235" alt="image" src="https://github.com/user-attachments/assets/e3f92d39-04b4-458e-9fc3-2959b334f64d" />

---

### Instalación

Para la instalación de Ubuntu server, solo deberemos tener en cuenta 3 cosas: 
La configuración de la IP, la cual podemos hacer ahora, o después, configurando el fichero **/etc/netplan/01-network-manager-all.yaml**
Yo lo configuro junto con la instalación.

<img width="493" height="393" alt="image" src="https://github.com/user-attachments/assets/f5e5d232-e39f-4423-b62f-d0fbd23ee8a3" />

La configuración de la cuenta de usuario, también la tenemos que hacer aquí, así que la configuraremos según la plantilla que nos ha dado el profesor

<img width="607" height="297" alt="image" src="https://github.com/user-attachments/assets/940658b3-e0fa-4e7d-a3f2-f6dbd9d44e7a" />

Y, por último, tenemos que marcar la opción de Instalar servidor SSH. SSH es un protocolo que se utiliza para administrar servidores de forma remota, el cual, permite a un usuario realizar una variedad de tareas en el servidor. 

Las conexiones realizadas a través de SSH son seguras ya que toda la información se transmite de forma encriptada.  

Esto lo convierte en uno de los medios más seguros para trabajar en un servidor. SSH es utilizado ampliamente en la administración de servidores Linux a través de conexiones remotas.  

En resumen, un servidor SSH sirve para permitir una conexión remota segura y encriptada para que cualquier usuario pueda transferir información y administrar el servidor remotamente.

<img width="663" height="190" alt="image" src="https://github.com/user-attachments/assets/859654dc-9b9f-4a66-9645-8d81e83a6777" />

---

### Preparación SO


Lo único que tenemos que hacer en el servidor, es instalar las Guest additions y hacer que la carpeta compartida funcione. 

Para instalar las Guest additions, primero tenemos que montar **/dev/cdrom** (disco que contiene las Guest additions) en una carpeta para poder ver su contenido. 

Al igual que en Ubuntu cliente, tenemos que instalar el paquete **gcc make perl** porque si no la ejecución del script no funcionará. 

<img width="788" height="83" alt="image" src="https://github.com/user-attachments/assets/8ab67a00-89cb-45fe-bc28-d63e0b9d1ee7" />

Ahora nos metemos dentro de la carpeta montada y tenemos que ejecutar el script **VBoxLinuxAdditions.run** 
Nos volverá a salir un error, debido a que ahora nos pide instalar el paquete **bzip2 tar**. 
Así que lo hacemos. 

<img width="776" height="109" alt="image" src="https://github.com/user-attachments/assets/64776d87-1bf7-4a0e-91c4-22fc4971f2f1" />

Después de instalarlo volvemos a ejecutar el script, entonces se instalarán las Guest additions, por lo que ya tendremos la carpeta montada, 
En el propio VirtualBox, a la hora de crear la carpeta compartida, nos dice el lugar de montaje, yo la puse en /media, por lo que debería de estar ahí.

<img width="725" height="29" alt="image" src="https://github.com/user-attachments/assets/67af3a63-f50c-481b-a60a-0bb0a36242b3" />

Ejecutamos un 

```bash
sudo ls /media
````
y vemos que la carpeta compartida está montada. 

<img width="605" height="62" alt="image" src="https://github.com/user-attachments/assets/9951b49a-9f8d-435d-b801-409a90e11b10" />

---

## Conectividad

Una vez finalizada todas las configuraciones de todas las máquinas virtuales, ahora vamos a probar la conectividad entre ellas, haciendo un PING entre ellas. 
Para no estar media hora haciendo 12 pines, vamos a seguir el siguiente orden:

<img width="398" height="393" alt="image" src="https://github.com/user-attachments/assets/40f18fe5-4403-4231-bc12-4dcc9dc93b78" />

Pero antes, tenemos que habilitar una regla de entrada en el Firewall de los Windows, debido a que, si el Firewall está activado, este bloquea los PING de máquinas remotas.

Así que vamos a **Configuraciones avanzadas de Firewall>Reglas de Entrada>Nueva Regla** 

<img width="227" height="125" alt="image" src="https://github.com/user-attachments/assets/74dbf705-53f2-4b49-91c4-abf59e845c60" />

↓

<img width="278" height="59" alt="image" src="https://github.com/user-attachments/assets/9ad4f82a-1eac-4b34-9fc1-5bf7e5e6025a" />

Y se nos abrirá un asistente para crear la regla. 
Lo primero será definir el tipo de regla, nosotros elegiremos una **regla personalizada.**

<img width="469" height="245" alt="image" src="https://github.com/user-attachments/assets/84e9ce29-eb0d-4dc3-9757-0d4ffee22f6d" />

Lo siguiente es definir a quien afecta, diremos que a **todos los programas**.

<img width="750" height="99" alt="image" src="https://github.com/user-attachments/assets/b5dcb062-7674-4fcf-aece-6e151b12f036" />

Ahora tenemos que definir el tipo de protocolos y puertos que están afectados por la regla. 
Como el Ping es una conexión ICMPv4, usaremos ese protocolo. 

<img width="567" height="270" alt="image" src="https://github.com/user-attachments/assets/585e3516-63f0-4121-b639-86dfa8ab5561" />

En la siguiente parte, nos deja poner las IP a las que afecta. 
Podríamos poner las IP de los equipos que hemos configurado, pero vamos a poner que aplica a cualquier IP. 

<img width="449" height="350" alt="image" src="https://github.com/user-attachments/assets/af2dc051-7fce-4cb3-869d-7fb80f88891c" />

Esta regla **permitirá la conexión**.

Y lo último sería darle un nombre. 
Esto mismo haríamos en Windows 7. 
Así que ya podemos probar la conectividad.

**WServer 2012 – Windows 7**

<img width="493" height="167" alt="image" src="https://github.com/user-attachments/assets/36c978dd-c6d6-4ad8-aa1f-508049b688f2" />

**Windows 7 – Ubuntu cliente**

<img width="485" height="175" alt="image" src="https://github.com/user-attachments/assets/e195b59e-0e09-4ac5-9b81-4ad8aa87d23b" />

**Ubuntu cliente – Ubuntu Server**

<img width="592" height="188" alt="image" src="https://github.com/user-attachments/assets/d991e6b6-494b-42cb-a8ab-c6a09c556a26" />

**Ubuntu Server – Windows Server.**

<img width="651" height="208" alt="image" src="https://github.com/user-attachments/assets/2e22af62-286a-4c84-add9-a214c92edeb3" />













