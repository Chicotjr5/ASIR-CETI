### Crea un proceso que consuma bastante CPU

Vamos a crear un script, el cual haga una operación consumiendo muchos recursos del procesador.

![image](https://github.com/user-attachments/assets/76adef98-ebd0-4d30-ba7c-ecb460119d8b)

Al ejecutarlo, vemos que empieza a consumir mucho procesador.

![image](https://github.com/user-attachments/assets/6a7cb25c-aada-4685-b7ed-f7049b039fa9)

Y en el apartado rendimiento, podemos ver como afecta este proceso a cada núcleo del procesador. 

![image](https://github.com/user-attachments/assets/a988918d-1943-40d7-b07a-f3baeffb7c35)

Ahora, para ver como afecta la prioridad a los procesos, vamos a abrir otro CMD y le vamos a dar prioridad baja y al anterior proceso, prioridad en tiempo real. 

Ordenamos el apartado detalles, para que ordene los procesos por prioridad y veremos que el proceso con mayor prioridad, se encuentra en lo más alto. 

![image](https://github.com/user-attachments/assets/c64a72dc-0d4d-4625-8204-a0406c758661)

Y el proceso con menos prioridad, estará más debajo.

![image](https://github.com/user-attachments/assets/054b4d83-4ebc-4401-b868-a49e4382eb1c)

Ahora, vamos a hacer que el proceso se ejecute en los núcleos 3 y 4. Para ello, damos clic derecho>establecer afinidad y elegimos los núcleos donde se ejecutará el proceso.

![image](https://github.com/user-attachments/assets/31e84725-dc5d-4baf-a9c1-a75cd3ee6bba)

Si volvemos al gráfico de los núcleos, veremos que el núcleo 4 ha empezado a trabajar más, pero el 3 no, esto puede darse debido a que aunque nosotros elijamos donde se va a ejecutar un proceso, el sistema se guarda el derecho de ejecutarlo donde quiera.

![image](https://github.com/user-attachments/assets/e504bbe9-6f2d-4cc4-a29a-00e36c1c738c)

---

### Utilizando órdenes del cmd

Para poder ver todos los procesos que se están ejecutando en el sistema, usaremos la orden:
```bash
tasklist.
```

![image](https://github.com/user-attachments/assets/1ccaaffa-e89b-46a2-9451-d42456188207)

Vamos a guardar toda esta lista, en un archivo CSV 
Para ello, ejecutamos la orden y redireccionamos la salida hacia el archivo **procesos.csv**.

![image](https://github.com/user-attachments/assets/732bfdcb-4067-4a32-be7e-11aaabd12d43)

Al abrir el archivo, veremos lo siguiente

![image](https://github.com/user-attachments/assets/fd10abf9-1c47-4093-ac22-840895b7a5c2)

Ahora, abriremos 3 procesos Notepad.exe y con la orden:
```bash
taskkill /im Notepad.exe
```
vamos a cerrar los 3 procesos a la vez

![image](https://github.com/user-attachments/assets/29647eb3-1036-4a21-bc4e-e3e51a683b80)

Ahora, vamos a hacer lo mismo, pero en vez de acabar con los 3 procesos a la vez, vamos a finalizarlos de uno en uno, según el PID que tengan. 

Primero obtendremos su PID con la orden **tasklist** y luego, con la orden **taskkill /f /pid xxxx**, forzaremos el cierre de cada uno de los programas.

```bash
taskkill /f /pid 10836
taskkill /f /pid 9220
taskkill /f /pid 9724
```

![image](https://github.com/user-attachments/assets/d6dd48bd-1b91-47d6-a9ea-30eae1524592)

Ahora vamos a lanzar un proceso cmd.exe y con órdenes, vamos a establecer su nivel de prioridad por debajo de lo normal.

![image](https://github.com/user-attachments/assets/17666bfc-f3b5-446b-869f-0f901608c0d0)

Si ahora vamos al administrador de tareas, veremos que el proceso se creo con un nivel de prioridad por debajo de lo normal. 

![image](https://github.com/user-attachments/assets/064067f5-20ab-4b32-8556-0b83ea44bcb0)

Ahora, ejecutaremos otro proceso, pero estableceremos que solo se pueda ejecutar en los núcleos 0 y 3.
Ejecutamos la siguiente orden: 

Y al ir al administrador de tareas, veremos que el proceso se está ejecutando en esos núcleos. 

---

### Con Powershell

Para crear un proceso con Powershell, usaremos el  cmdlet:

```bash
START PROCESS 
```

![image](https://github.com/user-attachments/assets/02200d0e-55a0-4c40-8639-66e38b9396ca)

Para ver todos los procesos del sistema, usaremos el cmdlet: 

```bash
GET PROCESS
```

![image](https://github.com/user-attachments/assets/d8747578-cfb1-4e1a-a5d1-952127942019)

Y para solo ver el proceso que acabamos de ver, buscaremos su PID y pondremos en la consola:

![image](https://github.com/user-attachments/assets/0de97aff-3243-4262-b991-8f3aeb42762a)

Ahora, lo pararemos, con el cmdlet:

```bash
STOP-PROCESS 
```

![image](https://github.com/user-attachments/assets/bd91ff24-8f43-4a7a-847c-85a1b7f5fcd8)

---

### Haz lo siguiente en el monitor de rendimiento: 

Ahora, vamos a ir al monitor de rendimiento y vamos a agregar a la gráfica, 4 nuevos parámetros.

![image](https://github.com/user-attachments/assets/a224c6a0-c761-4aed-bc3c-abd359008673)

Una vez agregados, podemos verlos en la gráfica de tiempo real.

![image](https://github.com/user-attachments/assets/00ab4b32-a368-42ae-b37e-931ec362b07d)

Ahora, cambiaremos el tipo de gráfico a barra de histograma. 

Para ello, damos **clic derecho en la gráfica>propiedades>gráfico** y cambiamos el valor **Ver a barra de histograma**.

![image](https://github.com/user-attachments/assets/d7c64474-6837-4ae7-b343-e914a57813a2)

Ahora vamos a crear un recopilador de datos. 

Para ello, vamos a **Monitor de rendimiento>clic derecho>Nuevo>Conjunto de recopiladores de datos** 

![image](https://github.com/user-attachments/assets/bd17e490-79e5-46ec-b093-c7a8a7c2d018)

Y le ponemos nuestro nombre.

![image](https://github.com/user-attachments/assets/9ca9ca30-b8ce-479f-aeeb-0f9e167e98fb)

Estos recopiladores, deberán de recopilar datos de los 4 anteriores parámetros, que recoja muestras cada 30 segundos y que se inicie por la tarde a las 18:00 y pare a las 6:00 del día siguiente. 

![image](https://github.com/user-attachments/assets/34c3424e-d7a1-43aa-9098-c9f989b6d173)

↓

![image](https://github.com/user-attachments/assets/3f9334db-f361-4ba7-86b6-cd8b0de502ba)

↓

![image](https://github.com/user-attachments/assets/c1eddcdb-d158-465e-aaf4-1187fa6072b2)


Iniciaremos el recopilador manualmente y lo dejaremos funcionando unos minutos, para ver que resultados nos salen. 
Vamos a **Ver informe más reciente**.

![image](https://github.com/user-attachments/assets/c20a7d87-d72d-4b04-a72d-29d4bb8771e4)

Y vemos los resultados del informe.

![image](https://github.com/user-attachments/assets/49febd63-d817-4fea-a349-4e804cc5b885)

Ahora, eliminaremos el recopilador de datos, borrando asi también el informe generado. 

![image](https://github.com/user-attachments/assets/64c10921-045a-4826-ba96-badc7e672bba)

---

### Elige un servicio y abre su configuración gráfica

El servicio de escritorio remoto, se encuentra detenido, así que para iniciarlo, le damos al botón Iniciar.

![image](https://github.com/user-attachments/assets/98162a01-da8c-4316-b330-8ab8340859fc)

↓

![image](https://github.com/user-attachments/assets/25ec7f1d-0f6d-4324-a5c5-38dcaedfd6fe)

En caso de que el servicio no nos hubiera dejado iniciar, de seguro habría sido porque hay algún servicio, del cual depende su ejecución, el cual no esta siendo ejecutado. 
Para solucionarlo, habría que iniciar también ese servicio

Para cambiar el tipo de inicio, seleccionaremos la opción Automático.

![image](https://github.com/user-attachments/assets/51996de3-b31f-4cc0-8184-f1a9e751ed29)

La cuenta con la que el servicio se esta ejecutando, es la cuenta de Servicio de red.


![image](https://github.com/user-attachments/assets/2956a0d7-5e1a-4c8d-971a-1932d09f8c84)

Ahora, vamos a configurar que hará el equipo, cuando este servicio, falle. 
Tras un primer error del equipo no se hará nada  
Tras un segundo error se reiniciará el servicio  

![image](https://github.com/user-attachments/assets/56b1d5e1-cac3-490f-bbe1-30b60c0e67a6)

En el tercer error se reiniciará el equipo, enviando a los equipos de la red el mensaje **“Ha fallado el servicio (nombre del servicio).** 
Se reiniciará el servidor”, 3 minutos antes del reinicio.

![image](https://github.com/user-attachments/assets/f2900745-d66e-49c9-9d2e-36f82f59c60b)

Y para acabar, vamos a ver las dependencias del servicio y las del SO respecto al servicio.

![image](https://github.com/user-attachments/assets/2fe2f6f4-1c04-4f0a-aff1-5926a704e23d)

### Abre, en el registro de Windows, la clave del servicio escogido. 

Vamos al registro de Windows, a la clave del servicio **Termservice** y vemos que el servicio, en el valor START tiene un 2, esto significa que su inicio es Automático. 

![image](https://github.com/user-attachments/assets/ed8efe85-4bcd-4a75-9a68-5e02cd079574)

Ahora, vamos  a cambiar el tipo de inicio, poniendo en el valor START un 2. 
Si vamos al servicio, veremos que se cambio el tipo de inicio.

![image](https://github.com/user-attachments/assets/6f48f1af-6d53-4374-9128-007124a304e3)

↓

![image](https://github.com/user-attachments/assets/f3fe2961-67b8-42b0-9e60-a27d47765397)

Para hacer que el servicio se inicie de forma automática retrasada, vamos a añadir una nueva clave, llamada **DelayedAutoStart**.

![image](https://github.com/user-attachments/assets/4fa655a3-64d5-48a7-85ec-826631353b3d)

Y si vamos al servicio, veremos que se configuro de forma correcta.

![image](https://github.com/user-attachments/assets/cf0203ab-127c-4817-a851-51a3eabae347)

---

### Utilizando la orden net, para el servicio y vuelve a arrancarlo

Ahora, pararemos y iniciaremos el servicio con los comandos:

```bash
net start
net stop.
```

![image](https://github.com/user-attachments/assets/edf6d8b6-40e9-41df-81f3-e34360e34f19)

---

### Utilizando la orden sc

Usaremos la orden:
```bash
SC QUERY 
```

![image](https://github.com/user-attachments/assets/418f7833-6fff-4521-b787-58c2785a8ff7)

Con la siguiente orden:

```bash
sc query state=inactive
```
podremos ver los servicios inactivos.


![image](https://github.com/user-attachments/assets/a9366bde-ed7d-4261-87dd-0d7199ceea09)

Para consultar la información del servicio **termservice**, usaremos la orden

```bash
sc queryex termservice 
```

![image](https://github.com/user-attachments/assets/8d366bb2-a38c-4cc8-9c27-6e91c6aedbbd)

Al parar el servicio, el valor ESTADO cambia a ser un 1, debido a que esta parado, además de que ya no tiene un PID asociado

![image](https://github.com/user-attachments/assets/668aa566-8c4b-4b76-a997-9b453ba29476)

Para consultar la información del servicio, usaremos el comando:

```bash
sc qc termservice
```

![image](https://github.com/user-attachments/assets/086a7644-41b8-42e7-bc0b-8cba6b3d8668)

Y para cambiar el tipo de inicio usaremos la orden:

```bash
sc config termservice start=demand 
```

![image](https://github.com/user-attachments/assets/226dcf6f-b0aa-479d-9acd-e8143b749aac)

---
