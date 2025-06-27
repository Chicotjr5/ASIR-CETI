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

Para crear un proceso con Powershell, usaremos el  **cmdlet START PROCESS** y el nombre del proceso.














































































































