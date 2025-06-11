## Índice

- [Introducción](#introducción)
- [Fork Bomb](#fork-bomb)
- [Formas de mitigarla](#formas-de-mitigarla)
  - [Limitar el nº de procesos](#limitar-el-nº-de-procesos)
- [Formas de monitorizarlo](#formas-de-monitorizarlo)

## Introducción

En esta práctica se va a hablar de las **Fork Bomb**

Es un tipo de ataque o script malicioso que se aprovecha de la capacidad del sistema para crear procesos. Se replica a sí misma indefinidamente usando llamadas como `fork()`, saturando así el sistema con tantos procesos que se vuelve inutilizable o se bloquea.

Se va a crear una **Fork Bomb** y se va a ver una forma para mitigarla


---

### Fork Bomb


![1 1](https://github.com/user-attachments/assets/6413f3d9-c834-4f64-8394-06a08babadaf)


**: ()**
- Define una función llamada :

**: | :**
- La función se llama a sí misma y redirecciona la salida usando una tubería a otra llamada de la misma función.

**&**
- Hace que la función se ejecute en 2º plano para que los procesos hijos no mueran.

**;:**
- Finalización y llamada de la función

Si ejecuto esta bomba, mi equipo se llenará de procesos al instante, congelándose el equipo y haciéndome imposible el detener la bomba, quedando como último recurso apagar el equipo.

![1 3](https://github.com/user-attachments/assets/c88b3b4c-cd7f-4838-84cc-5fc669178197)



---

### Formas de mitigarla

#### Limitar el nº de procesos

Una de las formas más comunes, es limitar el nº de procesos que se pueden crear / ejecutar. 
Para limitar el nº de procesos que un usuario puede ejecutar se usa el comando ulimit. 
Este comando permite mostrar y configurar los límites de recursos para el usuario actual. 
Con un **ulimit -a** vemos los límites que ya tiene establecidos el usuario Kali. 

![4 1](https://github.com/user-attachments/assets/fb48eb7d-a1ed-4d27-8ce8-143ae93e665b)


De todos los límites que vemos, el que más interesa es el de los procesos el cual se establece con un **ulimit -u**.

```bash
ulimit -u
```

![4 2](https://github.com/user-attachments/assets/0210fca9-9a20-45cd-b086-2c19c186b4e7)


Si ahora ejecuto la **Fork Bomb** esta será interrumpida, puesto que el nº de procesos que se están creando, supera el límite establecido al usuario.

![4 3](https://github.com/user-attachments/assets/6a18c71c-6230-41cb-8330-b8a21f4aa3c6)


--------

Pero veo un problema en esta medida y es que si bien limitamos el nº de procesos para un usuario específico, si existe otro usuario en el equipo y ejecuta la **Fork Bomb** esta no se interrumpirá. 

Para aplicar esta configuración a todos los usuarios, sin tener que poner el mismo comando x veces, estableceremos los limites duros y blandos, editando el archivo **/etc/security/limits.conf**

![4 4](https://github.com/user-attachments/assets/baa051f6-0a32-4cfd-a343-df18605add5f)


Dentro del archivo pongo las siguientes líneas:

![4 5](https://github.com/user-attachments/assets/a40c8b1e-d9b5-4e44-aad1-fec6d6a98b37)


Con * digo que el límite se establezca a todos los usuarios (menos root), luego especifico que el límite sea blando (soft) o duro (hard), seguido del valor que limitaremos **(nproc = numero de procesos),** junto con su límite.

**Para aplicar estos cambios, reinicio el sistema.**
Ahora los límites duro y blando del usuario Kali son los mismos que los que acabo de configurar.

![4 6](https://github.com/user-attachments/assets/83c4f99b-3ab7-4063-b68d-983eebcc2275)


Si tuviéramos otros usuarios en el sistema, también tendrían estos límites.
Si intento ejecutar la **Fork Bomb** ahora, no podré.

![4 7](https://github.com/user-attachments/assets/25f2131d-dbf9-417e-b72c-bc6624579081)


---

### Formas de monitorizarlo

Una de las forma más efectiva de monitorizar este tipo de eventos es con una herramienta / script que guarde logs aunque se apague el sistema. 
Si no establecemos las medidas de mitigación previamente mencionadas y alguien ejecuta la **forkbomb** lo único que quedará es apagar el equipo. 
Si al volverlo a encender no sabemos que ha pasado, no podremos establecer medidas para evitarlo.

La solución que he propuesto es crear un script, el cual registra el uso de la CPU y la RAM cada 5 minutos y lo manda a un log.

Tiene la siguiente estructura:

![5 1](https://github.com/user-attachments/assets/c2558d1f-a246-470d-b270-eac846974e27)


Para que se ejecute, le doy los permisos necesarios:

```bash
chmod 755
```

![5 2](https://github.com/user-attachments/assets/57aee797-9bde-4152-aeba-b6d8f03e701a)


Para probar si funciona o no, lo ejecuto y reviso el archivo de log.

![5 3](https://github.com/user-attachments/assets/c04822c7-9409-42ab-97ab-a2c76ad8cfa0)


↓

![5 4](https://github.com/user-attachments/assets/c52d6e90-dd2e-4b46-a94c-7ea13dab8472)


Pero hay un problema. Este script solo registrará los datos cuando lo ejecute, si no lo ejecuto no se registra nada, lo mejor sería hacer que este script se ejecutase cuando se inicie el sistema.

Para solucionarlo, instalo **anacron** el cual es un programador de tareas **similar a cron**, con la diferencia de que no necesita que el sistema esté en ejecución. 

```bash
apt install anacron
```

![5 5](https://github.com/user-attachments/assets/4757e714-ece1-4f13-bc69-146c67aa103c)


Ya instalado, voy a crear la tarea que ejecute el script en cada inicio del sistema editando el archivo **/etc/anacrontab**.

![5 6](https://github.com/user-attachments/assets/594cd4d7-6ff6-4214-b486-adca741d0457)


La tarea para ejecutar es la siguiente:

![5 7](https://github.com/user-attachments/assets/ef97135b-cd62-433c-875d-5a67feac3b3d)


**@reboot**
- Indica que se ejecutará cuando se inicie el sistema
**0**
- En cuantos minutos después de arrancar el sistema, se ejecutará la tarea
**Monitor_system**
- Es un identificador único para la tarea
**/home/Kali/monitor.sh**
- La ruta del script que debe ejecutar

Y para terminar, creo un enlace simbólico al script en **/etc/cron.daily**. 
Esto hará que se ejecute el script en cada inicio, según las políticas de **cron.daily**.

![5 8](https://github.com/user-attachments/assets/d68422bf-ea21-44cf-9bd1-b2b4f3789e96)


Si ahora ejecuto la **Fork Bomb** (teniendo que apagar el equipo) con este script recogeré los datos de la memoria y la CPU.

![5 10](https://github.com/user-attachments/assets/5f95d864-8c36-4b95-a01d-9101e6d2b015)


↓

![5 11](https://github.com/user-attachments/assets/483b6ee8-7938-497f-a2b7-f4f4a88ef6a7)
