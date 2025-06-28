### Programa las siguientes tareas en Linux, usando crontab 

**Los días de diario (de lunes a viernes), cada hora, hace un volcado del listado de archivos del directorio de tu usuario a un archivo llamado volcadoarchivos que se localice en tu directorio personal.**

Para poder hacer esta tarea, ejecutaremos la orden: 

```bash
crontab -e
```

![image](https://github.com/user-attachments/assets/0e172c09-78a2-45d0-aaa5-06564f3eec66)

Dentro de él especificaremos la orden a ejecutar y cada cuanto tiempo lo hará. 

Especificaremos que haga un listado de los directorios de nuestro directorio de usuario y ese resultado, lo redirigiremos al archivo volcadoarchivo.  

Y que lo haga cada hora a en punto,  de Lunes a Viernes

![image](https://github.com/user-attachments/assets/bb37975b-8dc6-42d7-b080-68557aebb9cd)

**Los lunes, jueves y domingos, excepto los de los meses de julio y agosto, abre una ventana con el mensaje “Te toca hacer la colada”, a las 2 y 25 de la tarde **

En el mismo fichero, pondremos la siguiente tarea: 

A las 14:25 de cada Lunes, Jueves y Domigo (menos de los de Julio y Agosto) se abrirá una ventana con el mensaje “Te toca hacer la colada” 

![image](https://github.com/user-attachments/assets/50113c78-8234-496d-8a7e-5a5840c9d191)

**Todos los viernes a las 9 de la tarde se apaga automáticamente el ordenador. Recuerda que las órdenes de apagado las debe ejecutar root.**

Seguimos en el mismo fichero y ahora especificaremos la siguiente tarea: 

A las 9 de la noche, los Viernes, se apagará el ordenador.

![image](https://github.com/user-attachments/assets/7d01e9ee-43d7-4514-b5ac-6ea184750ad5)

**Elimina todos los programas creados. Para los programas de tu usuario personal.**

Para poder borrar todas las tareas que hemos creado con nuestro usuario, usaremos el comando: 

```bash
contrab -r
```

![image](https://github.com/user-attachments/assets/5ee11636-2769-45b0-8527-048c981d0b2e)

↓

![image](https://github.com/user-attachments/assets/9feb97a8-348e-4bbd-8ace-0cc5c58974fa)

---

### Usando anacron, haz que se cree un volcado como el apartado a del ejercicio anterior pero una vez por semana, de forma que si el equipo estuviera apagado en ese momento, se ejecute al arrancarlo. 

Para poder crear tareas con anacon, deberemos editar el archivo **/etc/anacrontab**

![image](https://github.com/user-attachments/assets/c411d433-9b5c-41df-853d-73fc5abe705f)

Dentro de este fichero, crearemos la tarea programada: 

![image](https://github.com/user-attachments/assets/a4e48165-7753-479e-9c28-68099502411a)

Como podemos ver, se ejecutara una vez a la semana (podríamos haber usado el alias @weekly) y con un retraso de 1 minuto después de iniciarse

### Con at

**Programa un volcado de la lista de los archivos de tu directorio de usuario a un archivo, para que se realice el 15 de julio de este año a las cinco y cuarto de la tarde. Hazlo escribiendo la orden en un archivo y pasándole ese archivo como parámetro a at**

Primero, crearemos un archivo con la orden a ejecutar:

![image](https://github.com/user-attachments/assets/fb84ffb4-fdce-457b-96c6-c259fe63a23a)

Y en el siguiente paso, ejecutaremos el comando:

```bash
at -f comando.sh 17:15 1023-07-15 
```

![image](https://github.com/user-attachments/assets/044c1075-d52d-40c6-bf9d-18bb3019c2c9)

**Programa la misma tarea para que se ejecute dentro de 3 horas. En esta pregunta deberás escribir la orden en la entrada estándar.**

Ahora, en vez de pasar la orden a través de un archivo, lo haremos a través de la entrada estándar, poniendo primero la orden y redirigiéndola al comando at, al cual, diremos que se ejecute dentro de 3 horas

![image](https://github.com/user-attachments/assets/2d343453-4d36-4406-acce-f4c6c5d69e43)

**Observa la lista de tareas programadas**

Usaremos el comando atq, el cual permite ver las tareas programadas con el comando at:

![image](https://github.com/user-attachments/assets/a1d35a60-dbcc-48ae-a2c5-a9f5034d69b7)

**Cancela las tareas que has programado**

Usaremos la orden **atms** y le pasaremos el nº de la tarea como parámetro para poder eliminarla.

![image](https://github.com/user-attachments/assets/b9691aa1-21d8-4625-b2d3-c4ca68e5dd52)

---

### Utilizando cpio y cron, programa un sistema de copias de seguridad en el que se realice una copia completa cada domingo y una copia incremental el resto de los días. Puedes utilizar scripts y archivos para almacenar las fechas de las copias. 

Lo que haremos en esta pregunta, será crear unos scripts, los cuales contendrán las órdenes para poder crear las copias de seguridad. 

![image](https://github.com/user-attachments/assets/39900ace-cb7a-4057-b250-66b6d02efbfe)

Seguido, a estos archivos les daremos permisos de ejecución, para que podamos ejecutarlos. 

![image](https://github.com/user-attachments/assets/4178fddf-cf51-403d-8940-6301b88a47d7)

El siguiente paso, será crear una tarea programada, para que ejecute el script (y por tanto se haga la copia de seguridad). 

Entraremos dentro del archivo **/etc/crontab** y escribiremos la programación de cada tarea.

![image](https://github.com/user-attachments/assets/cd86b5f3-abeb-47df-a951-5844ab13906b)

↓

![image](https://github.com/user-attachments/assets/dab81e26-af28-4559-954e-770d6a4c0bef)

Como especifica el enunciado, las copias completas se harán cada domigo, mientras que las incrementales se harán el resto de días. 

Las horas son a gusto del administrador.

---

### Haz lo mismo que en la pregunta anterior, pero usando tar en lugar de cpio. Debes utilizar las opciones de tar para copias incrementales en vez de archivos propios con fechas. 

Ahora, usaremos la orden tar para hacer las copias en vez de cpio, así que el script variará un poquito, aunque haremos más o menos lo mismo para poder hacer este sistema de copias de seguridad. Primero será crear los scripts con las órdenes para poder realizar las copias de seguridad. 

![image](https://github.com/user-attachments/assets/59bc3e40-5eed-49a0-b251-1f6035edace9)

Lo siguiente, será darles permisos de ejecución:

![image](https://github.com/user-attachments/assets/22dc4b5d-5f17-49de-a8ca-75a0d962974d)

Y por último, programar las tareas para que se ejecuten cuando les toque

![image](https://github.com/user-attachments/assets/fddfade5-4e93-4978-bf26-cc8821f6122d)








































