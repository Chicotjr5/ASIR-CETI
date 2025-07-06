## Monitorización de tareas

### Ejecuta la orden ps –eo pid, rss, cmd. ¿Qué cantidad de memoria en KB se asigna a la ejecución de la orden?

```bash
ps –eo pid, rss, cmd
```

Al ejecutar esta orden, lo que estamos haciendo es que salgan los procesos por pantalla, pero solo los campos PID, RSS y CMD. 

![image](https://github.com/user-attachments/assets/aa614b53-7c07-4fec-84fc-238fe366d5ee)

Vemos que para la orden que acabamos de ejecutar, se asignan **1644KB de memoria**.

![image](https://github.com/user-attachments/assets/e681c4ab-1999-4485-b61d-0e5da718f6ca)

---

### Ejecuta ps u. ¿Qué porcentaje de memoria usa el shell? ¿Y la ejecución de la orden ps u 

```bash
ps u 
```

Este comando nos permite ver los procesos que está ejecutando un usuario en concreto. 
Al ejecutarlo, vemos que, para la SHELL, se está usando un 0.1% de memoria y para la orden, un 0.0%. 

![image](https://github.com/user-attachments/assets/4b034c65-a4b0-4d49-8791-c199b9b02687)

---

### Ejecuta la orden ps –f. ¿Cuál es el identificador del proceso padre de la ejecución del comando? ¿A quién corresponde ese identificador de proceso? 

```bash
ps -f
```

La orden **ps -f** nos permite ver los procesos, en un formato largo, ósea con más campos, como por ejemplo el campo **PPID**, el cual nos permite ver cuál es el proceso padre de un proceso. 

El **PPID** del comando es el 1497, **PID** que corresponde al proceso **-bash**, que es la consola donde se ejecutó la orden.

![image](https://github.com/user-attachments/assets/e02f9e2c-70c3-4000-869f-8049ac7c1265)

---

### Ejecuta ps –l. ¿Qué procesos se están ejecutando? ¿Cuáles están detenidos?

```bash
ps -l
```

**ps -l** nos saca una lista de procesos en formato largo de BSD, el cual es el más completo. 

Al ejecutarlo, vemos los procesos que se están ejecutando y los que están detenidos. 
El proceso **bash** está dormido, mientras que la orden está en ejecución.

![image](https://github.com/user-attachments/assets/820f2e32-a883-4b50-ac60-08f9234fb029)

---

### Visualiza todos los procesos que sean del usuario que creaste durante la instalación.

Para ver los procesos del usuario creado durante la instalación, usaremos la orden:

```bash
ps -u admin03.
```

![image](https://github.com/user-attachments/assets/6a61389d-fd15-43c1-a0aa-80f2bb11e62a)

---

### Visualiza todos los procesos que no sean del usuario que creaste durante la instalación. 

Para ver los procesos que **no** sean de un usuario en concreto, usaremos la orden:

```bash
ps -Un admin03
```

![image](https://github.com/user-attachments/assets/8e0725ae-da55-4515-9258-0900dd1b1af7)

↓

![image](https://github.com/user-attachments/assets/ea89a29c-c5d0-431f-9621-34ed6da6f7ef)

---

### Visualiza todos los procesos ordenados por tiempo de ejecución. 

```bash
ps aux –sort=-time 
```

Esta orden usa las opciones tipo **BSD** y con –sort podemos especificar porque campo queremos que salgan ordenados los procesos.

![image](https://github.com/user-attachments/assets/90c36fef-5668-4db4-b5ae-286314668c79)

↓

![image](https://github.com/user-attachments/assets/cc934a1d-28d8-4918-a573-1b02a8b43aae)

---

### Ejecuta ps r para averiguar qué procesos se están ejecutando.

```bash
ps r
```

Con este comando podemos ver los procesos en ejecución de forma jerárquica, mostrando los procesos padre junto con sus procesos hiujos.

Al ejecutarlo, solo me salía un proceso.

![image](https://github.com/user-attachments/assets/6f267f17-0a07-4888-bef5-aaafc640c672)

---

### Ejecuta top –u root para visualizar los procesos de root 

```bash
top -u <root>
```

Con este comando, podemos ver en tiempo real, los procesos que se están ejecutando del usuario root.

![image](https://github.com/user-attachments/assets/3308c5ba-d3d4-4ff7-9592-353d63b6f5f0)

↓

![image](https://github.com/user-attachments/assets/ad12bb42-ccc2-44a1-a286-4426351b44a7)

---

### Visualiza con top los procesos del usuario con el que te autentificaste.

Usaremos la misma orden, pero ahora, en vez de poner al usuario root, pondremos a nuestro usuario, el **admin03**.

![image](https://github.com/user-attachments/assets/7deb3322-e3cb-4ab1-9ea0-0d223a47ed9c)

↓

![image](https://github.com/user-attachments/assets/02a7b1f6-66b4-4e1d-85aa-0127e6f916f0)

---

### Ejecuta find / mifichero, detén el proceso con CTRL+Z.

Con esta orden, lo que hacemos es buscar el archivo **mifichero** en todo el sistema de archivos, empezando por la raíz /. 
Al detenerlo con Ctrl+Z, lo que hacemos será suspender ese proceso.

```bash
find /mifichero
```

![image](https://github.com/user-attachments/assets/8bcc9723-7296-4a48-b632-b954f24b7baf)

↓

![image](https://github.com/user-attachments/assets/70661160-d3db-4b53-9f9a-075b5837087a)

---

### Utiliza el comando kill para reanudar el proceso

Para poder reanudar el proceso, deberemos de buscar su **PID** y una vez lo tengamos, usaremos la orden **kill** para mandarle la señal -18, la cual permite reanudar un proceso suspendido

![image](https://github.com/user-attachments/assets/f6a58aad-4a4d-40d5-89f4-bfb3f76e2f3b)

Y vemos que vuelve a ejecutarse.

![image](https://github.com/user-attachments/assets/de483918-5388-4c72-ba91-fba6cb3fff9c)

---

### Ejecuta el comando sleep 25 &, localízalo mediante la orden ps e indica su estado.

Con esta orden, lo que hacemos es crear un proceso en segundo plano. 
Para ver su estado, usaremos la orden:

```bash
ps -l
```
Podemos ver que en el campo S su estado es S, lo que quiere decir que esta dormido.

![image](https://github.com/user-attachments/assets/fe3a1fb4-3582-458e-8a59-d6e8797fd28c)

---

### A continuación ejecuta sleep 250 y para el proceso. Vuelve a buscarlo con ps y mira su estado.

Ahora vamos a ejecutar un sleep 250, el cual, lo pararemos con un CTRL+Z  
En este caso, el proceso está parado.

![image](https://github.com/user-attachments/assets/1f87d732-ff43-403e-9d77-b22f81faeea7)

---

### ¿Qué estado tienen en cada caso? ¿Por qué?  

En el primer caso, el proceso esta dormido, debido a que se está ejecutando en 2º plano y el proceso no está interactuando con el usuario. 

Mientras que, al otro proceso, le hemos mandado una señal, para decirle que se detenga de ejecutar, por lo cual, estará en estado parado. 

---

### Ejecuta sleep 150 &. ¿Qué muestra la salida del comando jobs?

Al ejecutar un proceso en segundo plano, nos saldrán 2 números, uno entre corchetes, que corresponde al nº de job y su PID. 

Al ejecutar el comando Jobs podemos ver los procesos que están en segundo plano, su nº de job y su estado. 

![image](https://github.com/user-attachments/assets/81de1258-6cb9-491e-82eb-914b94867328)

---

### Ejecuta fg %n, donde n es el valor entre corchetes asignado a la ejecución de sleep 150 &. ¿Qué muestra el shell?

Esta orden, nos permite hacer que un proceso el cual está en segundo plano, pase a ejecutarse en primer plano. 

En la salida de la Shell, podemos ver el proceso que ha pasado de ejecutarse de 2º a 1º plano. 

![image](https://github.com/user-attachments/assets/386b72bb-b401-44c5-b67c-bef06e303c90)

---

### Utiliza la combinación de teclas CTRL+Z. ¿Qué muestra el shell? 

Al hacer **CTRL+Z** lo que se hace es para un proceso y la Shell nos muestra un mensaje, de que el Job [8] está parado. 

![image](https://github.com/user-attachments/assets/caa3edca-649b-420c-b771-56e2c174bc6a)

---

### ¿Qué muestra la salida del comando jobs? 

Si antes veíamos que el proceso estaba ejecutándose, ahora veremos que está parado. 
Vemos básicamente lo mismo que desde la Shell. 

![image](https://github.com/user-attachments/assets/74b56601-2978-4f98-a4be-daf87321e173)

---

### Ejecuta sleep 50 &. ¿Qué muestra la salida del comando jobs?

Volvemos a ejecutar un sleep en segundo plano y al ver la salida de Jobs, vemos que el proceso está ejecutándose en 2º plano.

![image](https://github.com/user-attachments/assets/770f96f9-14d0-4856-a06b-beb7ebc28882)

---

### Devuelve el proceso al primer plano para que finalice.

Y para ponerlo en 1º plano, ejecutamos un:

```bash
fg $[9]
```

![image](https://github.com/user-attachments/assets/c740f913-50e0-4b97-893c-bb2dddfe8bed)

---

### En un terminal ejecuta el comando sleep 100000. (tty1) 

Ejecutamos el comando sleep en el terminal **tty1.**

![image](https://github.com/user-attachments/assets/9342c8dc-4a18-403c-979d-81a56f4312d6)

---

### Vete a otro terminal y localiza el PID del proceso creado. (tty2) 

**Cambiamos de terminal con alt+F2** y dentro de él, ejecutamos un **ps -u admin03** para poder localizarlo y ver su **PID**. 

![image](https://github.com/user-attachments/assets/49f3f5ea-9205-407e-9613-6930cffe26c5)

---

### Abre un tercer terminal y usa strace para registrar las señales recibidas por el proceso. (tty3)

Para abrir otro terminal, pulsamos las teclas **alt+F3** y dentro de este terminal, vamos a ejecutar un:

```bash
strace -e trace=signal-p 1764
```
con el cual podremos ver todas las señales que recibe este proceso. 

![image](https://github.com/user-attachments/assets/a23f9c6c-b5ff-4105-8699-5dbe019cd31f)

---

### Desde tty2, envía una señal SIGSTOP al proceso. Utiliza ps para ver el estado del proceso. 

Para mandar la señal, usaremos la orden 

```bash
kill -STOP 1764.
```

![image](https://github.com/user-attachments/assets/492acdec-f79a-4edf-923d-884362033c7f)

Y con **ps** vemos que está en estado parado 

![image](https://github.com/user-attachments/assets/e4f747cb-e223-45aa-ad28-ea13aeb89141)

Esta parte la tuve que hacer 2 veces, con 2 procesos distintos con 2 PID distintos, así que por eso en unas capturas sale un PID y en otras sale otro

---

### Comprueba lo que pasa en los otros dos terminales: en tty1 usa jobs para ver el estado del proceso, en tty3 comprueba que se ha registrado la recepción de la señal.

En el terminal **tty1** ejecutamos un Jobs y vemos que se encuentra parado.

![image](https://github.com/user-attachments/assets/4d49b7fa-acbd-4b39-9fe0-436c072cb5f4)

Y en el otro terminal, vemos que recibió la señal **SGSTOP**

![image](https://github.com/user-attachments/assets/a277a15a-e73b-44a8-86c6-540b8fcc81ce)

---

### Desde tty2, envía una señal SIGCONT al proceso. Utiliza ps para ver el estado del proceso. 

Ahora le mandamos la señal **SIGCONT**, la cual hace que un proceso continue su ejecución 

![image](https://github.com/user-attachments/assets/0fbdbbdf-72c0-4804-bdc8-e3748d08010f)

---

### Comprueba lo que pasa en los otros dos terminales: en tty1 usa jobs para ver el estado del proceso, en tty3 comprueba que se ha registrado la recepción de la señal. 

En el terminal 1, con la orden Jobs, vemos que el proceso se está ejecutando.

![image](https://github.com/user-attachments/assets/b1f0b0dc-3f0c-437a-a3ab-ebb692c0603b)

Y en el 3º terminal, vemos que ha recibido la señal **SIGCONT**. 

![image](https://github.com/user-attachments/assets/267e8ea9-08b1-46a9-bdf6-9facf417ac7f)

---

### En tty1 pasa el trabajo a primer plano 

Para pasar un proceso de 2º a 1º plano, usamos la orden:
```bash
fg %número de job. 
```

![image](https://github.com/user-attachments/assets/3deddbc0-fd52-46e1-8781-bbd082e9e318)

---

### Desde tty2 Localiza el PID de la shell que se ejecuta en tty1 (busca con ps la Shell que se está ejecutando en el terminal tty1) y mátala utilizando kill.

Vamos al segundo terminal y con un **ps -u admin03** vemos el PID de la Shell donde está el proceso sleep. 

![image](https://github.com/user-attachments/assets/f8e0e2e3-9353-4b3c-818a-1aa1f9d39068)

Así que le mandamos una señal **SIGKILL** para matarla.

![image](https://github.com/user-attachments/assets/e1a12699-c29f-47e9-b864-98f0083d8c4d)

---

### Comprueba lo que pasa en los otros dos terminales. En tty3 comprueba que se ha registrado la recepción de una señal por parte del proceso de sleep. 

Si vamos al terminal 3, veremos que ha recibido una orden SIGHUP, la cual fue enviada por el proceso bash, el cual era el proceso padre de la orden sleep. 

Esta señal es la que manda un proceso padre a sus hijos cuando este acaba. 
Al recibir esta señal, el proceso hijo sleep, también fue exterminado 

![image](https://github.com/user-attachments/assets/f2c0d723-611a-4668-babe-e3791773b09f)

En el terminal 1 lo que pasa es que se cierra y nos al volver a acceder a él, nos pide iniciar sesión. 

---

### En tty1 vuelve a lanzar un sleep 100000, pero esta vez con nohup.

Ahora, vamos a hacer lo mismo que antes, pero esta vez, el proceso sleep que creemos, 
no podrá ser finalizado con una señal SIGHUP. 

```bash
nohup sleep 10000. 
```

![image](https://github.com/user-attachments/assets/a575f9ad-f1b3-4a31-bd26-50cfa111142a)

---

### Busca el PID del proceso que ejecuta el sleep. En tty3 usa strace para registrar las recepciones de señales por parte de ese proceso 

En el segundo terminal, buscamos el PID del sleep.

![image](https://github.com/user-attachments/assets/370927cf-5bf6-42e5-8049-a8e24ec13038)

Y en el terminal 3, vamos a registrar las señales que le lleguen al proceso.

![image](https://github.com/user-attachments/assets/cc23ee4a-418c-4c54-ac6a-8a6b2f45abab)

---

### Desde tty2 Localiza el PID de la shell que se ejecuta en tty1 (será hija del proceso que ejecuta tty1) y mátala.

Buscamos el PID de la Shell del terminal 1.

![image](https://github.com/user-attachments/assets/e0c5a34e-1b47-4dc7-847b-5c606d94beea)

Y matamos a la Shell.

![image](https://github.com/user-attachments/assets/c2eb76ac-bca2-4fb1-a958-ce150eb11ded)

---

### Comprueba lo que ocurre en este caso en tty1 y tty3. Observando en tty3 la salida de strace

Si vamos al terminal 3, veremos que ha recibido la señal SIGHUP que ha mandado el proceso padre. 

![image](https://github.com/user-attachments/assets/a43b440c-1f13-41dd-9aef-a4303cb2f591)

Y que en el terminal 1, se ha cerrado la sesión. 

![image](https://github.com/user-attachments/assets/43aa714a-5d72-4dbb-ab4f-553e1c44e3b9)

Pero, esta vez, aunque el proceso padre haya terminado, el proceso hijo sigue en ejecución, porque ha ignorado la señal SIGHUP que le ha mandado el proceso padre, debido a que hemos ejecutado la orden con un nohup.

Tal y como vemos en la siguiente captura:

![image](https://github.com/user-attachments/assets/93727c41-0e76-4989-8120-c7126ac9798b)

---

### Desde tty2 usa pstree para encontrar el proceso que ejecuta el sleep y su proceso padre. 

Con un **pstree** podemos ver cuál es el proceso padre del proceso sleep. 
Y vemos que es el proceso **systemd**.

![image](https://github.com/user-attachments/assets/bfd37757-7201-4207-8ed3-4010352366b5)

Cuando un proceso queda “huérfano”, es systemd quien se encarga de “adoptarlo”, debido a que es el proceso principal de Ubuntu, el primero en ejecutarse, el cual inicia el resto de servicios/procesos. 

---

## Systemd

### Para el servicio cron. Comprueba su estado. Después, vuélvelo a iniciar 

Para poder parar un servicio con systemd, usaremos la orden systemctl (la cual usemos todo el rato). Esta orden que vamos a usar ahora, es muy similar a la orden service.

```bash
systemctl stop cron.service
```

![image](https://github.com/user-attachments/assets/e51e215a-c78e-4760-b4ea-b8905c278b74)

Para ver su estado:

```bash
systemctl status cron.service
```

![image](https://github.com/user-attachments/assets/cb2913c8-b323-44e1-b6e2-69b7c90b1a4c)

Y para volver a iniciarlo

```bash
systemctl start cron.service
```

![image](https://github.com/user-attachments/assets/960328db-bd6f-4561-9f0b-b0da2726dc07)

---

### Consulta cuál es el target por defecto 

Para consultar cual es el target por defecto del sistema, usaremos la orden
```bash
systemctl get-default.
```
Vemos que el target por defecto es el **graphical.target**

![image](https://github.com/user-attachments/assets/c9b9aab0-8b3a-4948-bf6b-4db02bdfc8cc)

---

### Obtén el listado de todos los units que están inactivos 

Para ver los units que están inactivos, usaremos la orden: 

```bash
systemctl list-units –state=incative
```

Con list-units, le podemos decir que nos saque las units que cumplan ciertos requisitos, en este caso, los que estén en estado inactivo. 

![image](https://github.com/user-attachments/assets/cf844590-b4ad-4040-beb3-39fa7bd66eac)

↓

![image](https://github.com/user-attachments/assets/4cb50892-397b-4505-a027-d6bd23947af2)

---

### ¿Qué diferencia hay entre activo/inactivo (active/inactive) y habilitado/deshabilitado (enabled/disabled)? 

**Activo/Inactivo**
- Se refiere al estado actual de una unidad o servicio.  
- Un servicio “activo” está actualmente en ejecución, mientras que un servicio “inactivo” no lo está.

**Habilitado/Deshabilitado**

Se refiere a si un servicio está configurado para iniciarse automáticamente en el arranque del sistema.  

Un servicio “habilitado” se iniciará automáticamente en el arranque, mientras que un servicio “deshabilitado” no lo hará. 

---

### Consulta cuáles son los targets en los que se lanza el servicio cron.

Para poder ver los targets, en los que se lanza el servicio cron, tenemos que usar el siguiente comando:

```bash
systemctl show -p WantedBy cron.service  
```

**show**
- Es una opción del comando systemctl que muestra las propiedades de una o más unidades, trabajos o variables de configuración. 

**-p Wanted By**
- opción que permite filtrar la salida del comando show para mostrar solo la propiedad WantedBy, que indica los targets que quieren (o sea, activan) esta unidad. 

Vemos que se lanza en el target **multi-user.target.**

![image](https://github.com/user-attachments/assets/56bb4ead-c9a5-460c-b7d7-32950687dd24)

---

###  Ubuntu sigue permitiendo utilizar el concepto de nivel de ejecución. Para ello, mantiene enlaces simbólicos con los nombres de los niveles de ejecución, apuntando a targets reales de systemd. Saca por pantalla estos enlaces simbólicos, mostrando el target al que apunta cada uno

Estos enlaces simbólicos se encuentran en **/lib/systemd/system**, así que para poder verlos, usaremos la orden **ls -l** sobre este directorio.

![image](https://github.com/user-attachments/assets/44a95750-d966-4f7c-a012-3cfcf56ff571)

Buscamos los enlaces simbólicos y los encontramos.

![image](https://github.com/user-attachments/assets/bd781ee2-0964-45bb-b7ab-75bbf92a9d30)

---

### Consulta el contenido de las units para saber: 

#### En qué target se ejecuta el servicio cron 
#### Qué targets se ejecutan antes que la del servicio cron 

Para poder ver esto, tendremos que consultar la Unit del servicio cron.service, la cual se encuentra en **/lib/systemd/system/cron.service.**

![image](https://github.com/user-attachments/assets/c91a0a07-3389-4bcb-971d-07171722ec57)

---

### Comprueba que el servicio cron esté habilitado 

Para ver si el servicio **cron** está activo o no, usaremos la orden:

```bash
systemctl status cron.service 
```

![image](https://github.com/user-attachments/assets/27250ef2-615e-4092-aa4b-4a599a160bc7)

#### Busca el enlace simbólico en el directorio .wants de su target 

El directorio **/etc/systemd/systemd/multi-user.target.wants** contiene los enlaces simbólicos de los servicios al directorio donde se encuentra la unit. 

Para poder verlo, ejecutamos el comando:

```bash
ls -l /etc/systemdsystemd/multi-user.target.wants/cron.service
```

![image](https://github.com/user-attachments/assets/88f274cc-6f28-4f51-b48a-c7e55720097d)

#### Deshabilita el servicio

```bash
systemctl disabled cron.service
````

Al deshabilitar el servicio, el enlace simbólico desaparece.


![image](https://github.com/user-attachments/assets/a8b00fb0-c60c-48ca-8e48-fcefab47fdd4)

#### Comprueba que el enlace simbólico ya no está


![image](https://github.com/user-attachments/assets/a438ae3e-9c43-486e-94b5-6d1fa964ac4c)

#### Vuelve a habilitarlo y comprueba que vuelve a estar el enlace


![image](https://github.com/user-attachments/assets/02b39225-bf1e-4e1d-ab7e-9da64cffa63a)

---

### Vamos a crear un unit para un servicio con las siguientes 
características: 

Cuando se inicie el servicio, ejecutará un programa llamado morpheus que te proporcionará el profesor. Este programa lo que hace es dormir eternamente. 

Cuando se pare el servicio, hará que termine el proceso morpheus. Para hacerlo más sencillo, podemos hacer que terminen todas las posibles instancias (en caso de que se hubieran lanzado otras por otros medios) 

El servicio se iniciará automáticamente al pasar al target multiuser. 

#### Copia en el directorio /usr/bin el programa morpheus

El programa morpheus, es un bucle, el cual duerme todo el rato (como si fuera un sleep). 
Para poder ejecutarlo, pasamos el archivo al directorio /usr/bin con el comando 

```bash
mv morpheus /usr/bin
```

![image](https://github.com/user-attachments/assets/2f3d8cb5-ed94-4bb2-9ee5-e854d6f1923b)

#### Escribe la unit, cumpliendo con lo solicitado:

- Créala en /etc/systemd/system  
- Llámala morpheusd, no olvides ponerle la extensión  
- La unit deberá tener una descripción.  
- Como consejo, recuerda que las rutas de los ejecutables en las acciones de inicio y parada deben ser absolutas.  
- Elige bien el tipo, de lo contrario, al iniciar el proceso systemd no retornará

Vamos a /etc/systemd/system y creamos la unit.


![image](https://github.com/user-attachments/assets/eff603fb-4e86-400a-baf1-8208434f41f9)

La cual tendrá el siguiente código: 

![image](https://github.com/user-attachments/assets/26308217-fe56-4501-8855-3c3299271fec)

#### Lanza manualmente el servicio 

Para lanzar el servicio, usamos el comando:

```bash
systemctl start morpheus 
```


![image](https://github.com/user-attachments/assets/fb81a751-c749-45de-9edc-886051ecd968)

Para poder ver que el proceso morpheus ha sido lanzado ejecuto el comando:

```bash
ps -e | grep morpheus
```

Este comando, saca los procesos que contengan la palabra morpheus 
Vemos que tenemos 2 procesos, uno es el servicio, que no está asociado a ningún terminal y el proceso que arrancamos en el 1º terminal.  

![image](https://github.com/user-attachments/assets/ba842a9c-7125-42d2-8369-56cbb06f3cb5)

#### Para manualmente el servicio

```bash
systemctl stop morpheus.service
```

![image](https://github.com/user-attachments/assets/e311262e-2c76-41a6-a3d2-18b331e8f10c)

Como el servicio está parado, el proceso ha terminado. 

#### Habilita el servicio

```bash
systemctl enable morpheus.service
```

Al ejecutarlo, el sistema nos lanza un mensaje de que se ha creado el enlace simbólico en el directorio **.wants** hacia **/etc/systemd/system/morpheus.service**. 

![image](https://github.com/user-attachments/assets/aeb1ea3f-78f0-4a29-ae01-f0e47339ed74)

Y si hacemos un **ls -l** sobre el directorio **/etc/systemd/system/multiuser.target.wants/morpheus.service**, veremos que es un enlace simbólico hacia la carpeta antes dicha.

![image](https://github.com/user-attachments/assets/17a8cf70-b36c-451e-b7d7-11242e42b3d0)

#### Reinicia el equipo  

Para comprobar que el servicio se inicia cuando se inicia el equipo, reiniciaremos el equipo con un rebbot y cuando se inicie, veremos el estado del servidor. 

El servicio está activo

![image](https://github.com/user-attachments/assets/bb16cc71-e120-4485-9482-93892d11395a)

Y como el servicio está activo, el proceso también lo estará. 

![image](https://github.com/user-attachments/assets/1ee55d6e-d142-461f-b836-a4ed15140bc7)

---

### Una vez terminado, desconfigura de nuevo el servicio: deshabilítalo y borra el unit 

Deshabilitaremos el servicio, para que se elimine el enlace simbólico:

```bash
systemctl disable morpheus.service 
```

Luego borraremos la UNIT 

```bash
rm /etc/systemd/systemd/morpheusd.service 
```

Y para que se guarden los cambios, ejecutaremos un:

```bash
systemctl Daemon-reload
```

![image](https://github.com/user-attachments/assets/7f1a59d7-f13d-406d-9e20-a79f2d7025ce)

---

## Programación de tareas con Cron 

### Comprueba si el servicio cron está instalado

Para ver si el servicio cron está instalado o no, podemos verlo de varias formas:

- Comprobar el estado de su servicio
- Comprobar si está el archivo /etc/crontab

Yo comprobaré el estado de su servicio. 
Vemos que está activo y funcionando.

![image](https://github.com/user-attachments/assets/7658920e-e2be-4a3e-a7e2-57203abee8db)

---

### ¿Cuál sería el efecto de la siguiente línea crontab?

```bash
* * * * who > /tmp/test
```

Cada minuto, ejecuta el comando who, el cual, nos da información sobre el usuario y redirigirá la salida al archivo /tmp/test. 

---

### ¿Qué ficheros controlan los usuarios que pueden utilizar el crontab?

Son los ficheros **/etc/cron.allow** y **/etc/cron.deny**

**/etc/cron.allow**
- Los usuarios que estén dentro de este archivo podrán crear tareas programadas
- Es prioritario a cron.deny

**etc/cron.deny**

Los usuarios que estén dentro de ese archivo no podrán crear tareas programadas. 

Estos ficheros hay que crearlos manualmente. 


![image](https://github.com/user-attachments/assets/2b4b13ab-ac1c-49ae-9a05-a2abc9b7d076)

---

### Excepcionalmente se debe iniciar una tarea llamada script.sh esta noche a las 21:00h desde consola. ¿Qué comando debemos teclear? 

Usaremos el comando at, el cual hay que instalar:

```bash
apt install aptd.
```
Después de instalarlo, habría que iniciarlo para que nos deje crear tareas. 
Para poder hacer esa tarea, escribiremos lo siguiente: 


![image](https://github.com/user-attachments/assets/e7917b2c-ddb1-4388-98e5-53b8c5ba7193)

---

### Se ha cancelado la tarea. ¿Cómo listar y luego, suprimir la tarea? 

Para listar la tarea, usaremos el comando 

```bash
at -l
```

![image](https://github.com/user-attachments/assets/4cbb7d49-7068-4ba8-90dd-f374e6985504)

Y para eliminarla, 

```bash
at -r <nº de tarea>
```

![image](https://github.com/user-attachments/assets/f2f29c8f-922c-43a1-a17d-cbd6d679466c)

---

### Ejecuta el comando ps -ef para el usuario root cada 5 minutos y redirige el resultado a /tmp/ps_result sin sobrescribir los antiguos 

Aquí sí que vamos a crear una tarea usando **cron**. 
Para crearla, vamos a editar el archivo **/etc/crontab**.

![image](https://github.com/user-attachments/assets/094cba2c-f8f4-4b05-b0b3-5bfbd89e68e5)

Dentro del fichero especificaremos los siguientes parámetros:

- **Minutos**: Le diremos que se ejecute el primer minuto, incrementándose 5 minutos, por lo que se ejecutará cada 5 minutos.

El resto de campos lo dejamos en *, que indica todos los valores posibles, ósea a cada hora, todos los días de la semana, todos los días del mes. 
Especificamos el usuario y el comando que ha de ejecutarse. 

![image](https://github.com/user-attachments/assets/4bebde58-9197-4aa8-b422-0ce7032b7835)

Guardamos los cambios y si vemos el archivo /tmp/ps_result podremos ver todos los procesos del usuario root. 


![image](https://github.com/user-attachments/assets/c7b786f0-3f70-4d92-bcb8-8fc37d506a1a)

↓

![image](https://github.com/user-attachments/assets/7ba4a283-cb01-4742-ae7c-b4e553f9588f)

---

### Verifica la lista de tareas en crontab 

```bash
crontab -l
```

![image](https://github.com/user-attachments/assets/e2d231e5-9a0c-4dcd-956e-5a700cfd56d9)

---

### Programa crontab para que cada día a las 0:05 se eliminen todos los ficheros que se encuentran en el directorio /tmp

Dentro de **/etc/crontab**, pondremos la siguiente línea:

![image](https://github.com/user-attachments/assets/8674cdff-c1c5-44d9-9a18-ef7a9c5d53f0)

Con esta línea, especificamos que a las 0:05, todos los días de todos los meses se eliminen los ficheros de **/tmp**.

---

### ¿Qué línea crontab se debe escribir para ejecutar el comando checkall de lunes a viernes a las 23h., únicamente en el mes de junio? 

**23 * 6 1,5 checkall**
- Esta ejecuta checkcall a los 23 minutos pasada cada hora, los meses de Junio, los Lunes y Vienes, no es la que estamos buscando

**0 23 0 6 1-5 checkall**
- Esta ejecuta checkall a las 23 horas, el día 6 de Enero, de Lunes a Viernes, no es la que estamos buscando.

**23 * 6 1-5 checkall**
- Esta ejecuta checkcall a los 23 minutos pasada cada hora, los meses de Junio, de Lunes a Viernes, no es la que estamos buscando

**0 23 * 6 1-5 checkall**
- Esta es la línea que estamos buscando 

---

### Si ejecutamos el comando crontab -e y añadimos la línea "0 0 1 * * /root/copia_seguridad.sh" ¿Cuándo se ejecuta el script? 

Si tenemos permisos en el directorio **/root** se ejecutará a las 0:00 el primer día de cada mes. 
Y si no tenemos permisos, nunca se ejecutará. 

---

### Realiza las siguientes tareas

#### Edita el archivo crontab de tu usuario y programa la ejecución de la orden “tar –uf copia.tar ventas” para las 13:50 todos los días. 

```bash
comando crontab -e.
```

Pondremos los parámetros exactos.


![image](https://github.com/user-attachments/assets/241b281f-3b81-44b2-8a12-3501b0aceb69)

#### Lista las tareas programadas de tu usuario 

```bash
crontab -l
```

![image](https://github.com/user-attachments/assets/97fe09e3-4ec9-443d-9552-812e7d2a5762)

#### Crea el fichero /etc/cron.deny y agrega el nombre de tu usuario. Ejecuta crontab –e. ¿Qué ha pasado?

Los usuarios que estén dentro de este archivo, no tendrán permitido crear tareas programadas. 
Creamos el archivo 

![image](https://github.com/user-attachments/assets/4286c90a-0f83-4fca-b84c-8f6d5d679882)

Y metemos dentro a nuestro usuario.

![image](https://github.com/user-attachments/assets/7a28d1e9-788e-4eb7-b728-7280d8a412fa)

A la hora de hacer **crontab -e** nos saldrá un mensaje de error.

![image](https://github.com/user-attachments/assets/2bf31c68-4a00-4f61-b151-8409cd540402)

#### Crea el fichero /etc/cron.allow y agrega el nombre de tu usuario. Ejecuta crontab –e. ¿Qué ha pasado? ¿Por qué?

Haremos el mismo procedimiento con el archivo **/etc/cron.allow** este permite a los usuarios que estén dentro de él, el poder crear tareas programadas.
Creamos el archivo. 

![image](https://github.com/user-attachments/assets/ed9e0fc6-6ffd-4f67-975b-53cb90c56634)

Metemos a nuestro usuario. 


![image](https://github.com/user-attachments/assets/10d27d48-1804-4238-b03a-2ff81344e0bb)

Y al hacer **crontab -e** accedemos a nuestro archivo. 


![image](https://github.com/user-attachments/assets/cb1b023b-fc6f-4aac-9b86-0cabc4e482d9)

Esto pasa, porque el archivo **cron.allow** tiene prioridad sobre el **cron.deny** 

#### Intenta editar el fichero crontab de otro usuario, ¿qué ha pasado? 

```bash
crontab -u Marcos -e
```

![image](https://github.com/user-attachments/assets/941e7d6b-1789-417d-8578-37000bb10794)

Pero no nos deja editar el archivo. 

#### Elimina los ficheros cron.allow y cron.deny. Intenta acceder al fichero crontab de otro usuario, ¿qué ha pasado? 

Si los eliminamos y volvemos a intentar editarlo, si nos dejará acceder a él.

![image](https://github.com/user-attachments/assets/4cf071f9-8685-4d64-8b50-3a128717c55b)

Esto se debe a que todo usuario que no esté dentro del archivo **/etc/cron.allow**, no podrá crear tareas programadas. 
El usuario Marcos no estaba dentro del archivo. 

---

## Programación de tareas con Systemd 

### Programa una tarea con systemd que tenga las siguientes características:

**La tarea consistirá en añadir a un archivo llamado ultimolog que se alojará en el directorio personal de root la última línea del archivo /var/log/syslog**

**Se ejecutará cada vez que se arranque el equipo, 10 minutos después del arranque del sistema**

Para poder crear una tarea programada con Systemd, haremos lo siguiente: 

- Crear un script, que ejecute la tarea y darle permisos de ejecución
- Crear una unit de servicio que ejecute el script
- Crear una Unit de Timer
- Activar el Timer 

Un Timer es un objeto que permite ejecutar código a intervalos de tiempo específicos. 
Se utiliza para programar tareas que deben ocurrir periódicamente.  
También puede usarse para ejecutar una tarea después de un retraso específico. 
Pasamos a la creación de la tarea.

Creamos el script y ponemos el código que se ejecutara:

![image](https://github.com/user-attachments/assets/51442b65-0464-4442-b787-c470bd998473)

Le damos **permisos de ejecución**

![image](https://github.com/user-attachments/assets/13685611-1f59-4398-bf35-1b31b9dac915)

Creamos la **Unit de servicio**, que ejecutara el script recién creado. 

![image](https://github.com/user-attachments/assets/0198aa7a-b2e7-47ec-b755-a9de2bdbbebb)

↓

![image](https://github.com/user-attachments/assets/97a5bf9f-8fe6-441a-884e-3fe9ed24d026)

---

### Programa una tarea con systemd que tenga las siguientes características:

Para que se guarde la Unit, tendremos que recargar los servicios, con el comando:
```bash
systemctl Daemon-reload
```
Entonces, volvemos para iniciar la unit y vemos su estado.

![image](https://github.com/user-attachments/assets/1ecdc761-db57-4ab2-97f8-c5168f9ae072)

Estando así quiere decir que está bien hecha la Unit y que ejecutará el script (yo me confundí y pensaba que estaba mal porque no veía nada de color verde (típico cuando inicias un servicio) y me tiré media hora intentando averiguar qué pasaba). 

Si intentamos ver el archivo **/root/ultimolog**, veremos que dentro del archivo se encuentra la última línea del archivo **/var/log/syslog**.

![image](https://github.com/user-attachments/assets/e3447644-324e-418b-ab84-6d6218b48886)

Todo muy bonito, pero ahora hay que crear el Timer, que el procedimiento es igual a una Unit de servicio, pero con la extensión **.timer**

![image](https://github.com/user-attachments/assets/11420ea0-ca74-4acd-8e5f-42e9ce732cc0)

La estructura es la siguiente: 
Ponemos la Unit que se va a ejecutar y cada cuanto tiempo. 
Posteriormente, el target al que hace referencia. 

![image](https://github.com/user-attachments/assets/918c3a85-c62a-4e14-b6c7-887edbc9d9e0)

---

### Programa una tarea con systemd que tenga las siguientes características: 

Habilitamos el timer.

![image](https://github.com/user-attachments/assets/91c71321-3e41-4c14-bdb8-a11d68a0bffa)

Y si comprobamos el estado del servicio, veremos que ahora si sale un puntito verde.

![image](https://github.com/user-attachments/assets/710537f2-eb55-4700-9dac-97c243280880)

---

### Programa una tarea con systemd que tenga las siguientes características

**La tarea consistirá en guardar en un archivo llamado procesospesados el PID, nombre del ejecutable y consumo de CPU de los 5 procesos que tienen mayor uso de la CPU (consulta el manual de ps para ver cómo se puede ordenar y seleccionar campos sin necesidad de usar cut ni sort).**

**Se ejecutará cada tres horas (no se puede usar el parámetro OnCalendar)**

Ahora hay que hacer otro script, siguiendo el mismo procedimiento que en el anterior caso el cual contendrá este código:

![image](https://github.com/user-attachments/assets/1273886f-283f-47cf-beed-0dfbd32bc82a)

Y le damos permisos de ejecución, si no, no podrá ejecutarse el script. 

![image](https://github.com/user-attachments/assets/3c548cb7-6d3d-4421-8cd9-44be9bbd01f9)

---

### Programa una tarea con systemd que tenga las siguientes características

Seguimos y creamos la Unit de servicio que ejecutará el script.
Creamos la Unit. 

![image](https://github.com/user-attachments/assets/9ab1302e-a61e-44c2-a1d4-ba6c394d7b23)

Y la configuramos.

![image](https://github.com/user-attachments/assets/2092b05c-e42d-4b90-b222-4e0d3ce186c8)

Recargamos los servicios, iniciamos la Unit y vemos su estado.

![image](https://github.com/user-attachments/assets/9f4460a6-a959-4160-985b-317257c4b8b6)

Pasamos a crear el Timer.

![image](https://github.com/user-attachments/assets/0030943c-1c5c-4a14-b842-e4df95ff299e)

Lo configuramos, poniendo el parámetro OnUnitActiveSec=3h para que se ejecute cada 3 horas (así no tenemos que usar el parámetro OnCalendar, que lo usaremos en el siguiente Timer). 

![image](https://github.com/user-attachments/assets/70cfc74d-f30d-4c85-96f0-6937bb969ab0)

Habilitamos el Timer y vemos el estado del servicio

![image](https://github.com/user-attachments/assets/f53cbbaa-fbf3-4fb7-9a34-30fc2b7d17fb)

↓

![image](https://github.com/user-attachments/assets/e7471755-6625-433c-8c48-c36e85f059de)

---

### Programa una tarea con systemd que tenga las siguientes características:

Para comprobar el funcionamiento de la tarea programada, vamos a **/root/procesospesados** y vemos su contenido.

![image](https://github.com/user-attachments/assets/8367f33c-de00-4e60-bf5f-46162149eca1)
