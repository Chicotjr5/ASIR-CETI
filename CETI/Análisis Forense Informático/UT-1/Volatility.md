
## Índice
- [Introducción](#introducción)
- [Instalación Volatility](#instalación-volatility)
- [Comprueba que el hash SHA1 del volcado de memoria coincide con c95e8cc8c946f95a109ea8e47a6800de10a27abd. ¿Cuál es su hash SHA256?](#comprueba-que-el-hash-sha1-del-volcado-de-memoria-coincide-con-c95e8cc8c946f95a109ea8e47a6800de10a27abd-cuál-es-su-hash-sha256)
- [¿Cuál es el perfil más apropiado de Volatility para este volcado de memoria?](#cuál-es-el-perfil-más-apropiado-de-volatility-para-este-volcado-de-memoria)
- [¿Cuál es el ID del proceso que está usando el notepad.exe?](#cuál-es-el-id-del-proceso-que-está-usando-el-notepadexe)
- [¿Cuál es el nombre del proceso hijo de wscript.exe?](#cuál-es-el-nombre-del-proceso-hijo-de-wscriptexe)
- [¿Cuál era la dirección IP del ordenador cuando se realizó el volcado de memoria?](#cuál-era-la-dirección-ip-del-ordenador-cuando-se-realizó-el-volcado-de-memoria)
- [Conociendo el PID infectado, ¿puedes determinar cuál es la dirección IP del atacante](#conociendo-el-pid-infectado-puedes-determinar-cuál-es-la-dirección-ip-del-atacante)
- [¿Cuántos procesos están asociados con VCRUNTIME140.dll?](#cuántos-procesos-están-asociados-con-vcruntime140dll)
- [Obtener hash de proceso infectado](#obtener-hash-de-proceso-infectado)
- [¿Cuál es el LM (Lan Manager o LanMan) hash de la cuenta de Bob?](#cuál-es-el-lm-lan-manager-o-lanman-hash-de-la-cuenta-de-bob)
- [¿Qué constante de protección de memoria VAD (Virtual Address Description) utiliza el nodo 0xfffffa800577ba10](#qué-constante-de-protección-de-memoria-vad-virtual-address-description-utiliza-el-nodo-0xfffffa800577ba10)
- [¿Qué protección tiene la memoria VAD (Virtual Address Description) en la dirección inicio 0x00000000033c0000 y finalización 0x00000000033dffff?](#qué-protección-tiene-la-memoria-vad-virtual-address-description-en-la-dirección-inicio-0x00000000033c0000-y-finalización-0x00000000033dffff)
- [Había un proceso de Visual Basic Script (VBS) que estaba funcionando en el ordenador, ¿cuál es el nombre del script?](#había-un-proceso-de-visual-basic-script-vbs-que-estaba-funcionando-en-el-ordenador-cuál-es-el-nombre-del-script)
- [Una aplicación estaba corriendo el 2019-03-07 23:06:58 UTC. ¿Cuál es el nombre de ese programa?](#una-aplicación-estaba-corriendo-el-2019-03-07-230658-utc-cuál-es-el-nombre-de-ese-programa)
- [¿Qué se había escrito en el block de notas (notepad.exe) cuando la memoria fue capturada?](#qué-se-había-escrito-en-el-block-de-notas-notepadexe-cuando-la-memoria-fue-capturada)
- [¿Cuál es el nombre corto del archivo en el registro 59045?](#cuál-es-el-nombre-corto-del-archivo-en-el-registro-59045)
- [Este ordenador fue explotado con meterpreter ¿Cuál fue el PID infectado?](#este-ordenador-fue-explotado-con-meterpreter-cuál-fue-el-pid-infectado)

## Introducción

En esta práctica se va a usar la herramienta de **volatility** con la cual se analizará una memoria RAM extraida de un equipo para buscar información comprometedora.

---

### Instalación

Para poder instalar volatility, se usa el siguiente script:

![1 1](https://github.com/user-attachments/assets/3d07099f-692c-446b-914d-9a02907a1c59)


Pero antes de ello, hay que ejecutar los siguientes comandos:

![1 2](https://github.com/user-attachments/assets/42145e96-8f78-44f7-b8f5-a0291bdf33ed)


Esto lo que hace es crear el directorio **/etc/apt/keyrings** y después guardaremos en ese directorio la clave pública de un servidor de claves de Ubuntu. 
Luego se comprueba que existe y actualiza los repositorios.

Ya con el programa instalado, lo ejecuto con:

`python2 /opt/volatility/vol.py`

---

### ¿Cuál es el perfil más apropiado de Volatility para este volcado de memoria?

Para poder usar muchos plugins de Volatility se debe conocer el perfil de la memoria. 
Este **"Perfil"** se refiere a un conjunto de configuraciones específicas que Volatility usa para interpretar correctamente la memoria volcada de un sistema, definiendo:

- Tipo del SO
- Versión del SO
- Arquitectura
- Estructuras internas del kernel necesarias para analizar la memoria de forma correcta

Comando:

`python2 /opt/volatility/vol.py -f 1.-Memory.dump imageinfo`

![1 6 1](https://github.com/user-attachments/assets/4d2d6287-e85d-44d7-8494-764d30a63481)

En este caso el perfil que necesito usar es Win7SP1x64.

---

### ¿Cuál es el ID del proceso que está usando el notepad.exe?

Para poder ver una lista de todos los procesos que se estaban ejecutando en el momento en el que se extrajo la memoria usaré el plugin **pslist**.

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 pslist`

![2 1](https://github.com/user-attachments/assets/4f7df525-b274-41b7-a370-0d337785eb54)


La información que se muestra es:

- Dirección de memoria 
- Nombre del proceso 
- ID del proceso 
- ID del proceso padre 
- Numero de hilos asociados al proceso 
- Número de handles abiertos 
	- Archivos 
	- Registros etc 
- ID de la sesión del usuario 
- Indica si el proceso es de 32b o 64b 
- Hora a la que se inició.

Para poder ver precisamente el PID de Notepad.exe filtramos el resultado por **Notepad.exe**

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 pslist | grep "notepad.exe`

![2 2](https://github.com/user-attachments/assets/69f11d80-c430-41d7-bedc-113e1575dd25)


El PID es **3032**.


Otra forma de ver la misma información pero de una manera algo más ordenada, se puede usar **pstree**.

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 pstree`

![2 3](https://github.com/user-attachments/assets/b5a9eca0-0867-4a5d-9bc9-446f2149345a)


---

### ¿Cuál es el nombre del proceso hijo de wscript.exe?

Aprovechando la reciente ejecución busco dentro de todos los procesos el proceso **wscript.exe:**

![3 1](https://github.com/user-attachments/assets/f675c6c9-b2eb-4fc0-9c2f-1555fbf9fe59)


Los procesos hijos son **UWkpjFjDzM.exe** y **cmd.exe**, siendo algo sospeshosos.

---

### ¿Cuál era la dirección IP del ordenador cuando se realizó el volcado de memoria?

Para poder obtener información sobre las conexiones del equipo uso el plugin **netscan**:

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 netscan`

![4 1](https://github.com/user-attachments/assets/fdb699a6-2f63-407c-9ad7-b70b706ac61a)


Ahora mismo el resultado que más me interesa es el primero pues me da información sobre la IP del equipo.

![6 2](https://github.com/user-attachments/assets/a35d509f-5817-4230-8c84-6b7f494d19ca)


---

### Conociendo el PID infectado, ¿puedes determinar cuál es la dirección IP del atacante

Esta información se podría buscar de varias formas.
Una es buscando la conexión del proceso UWkpjFjDzM.exe y guardar la IP destino:

![6 1](https://github.com/user-attachments/assets/e218d6d1-4d03-4c57-a61b-2c7464628951)


Y otra es filtrando por **ESTABLISHED** y ver cual de esas conexiones corresponde al proceso malicioso:

![6 2](https://github.com/user-attachments/assets/77aaf30c-7792-4f8d-9174-6ee35bdf4d4c)


La IP es **10.0.0.106** y la conexión se hizo por el puerto **4444**

---

### ¿Cuántos procesos están asociados con VCRUNTIME140.dll?

**VCRUNTIME140.dll** es una biblioteca de enlace dinámico (DLL) que forma parte de las Microsoft Visual C++ Redistributable. Esta DLL contiene funciones esenciales que los programas desarrollados en C++ usan para ejecutarse en Windows. 
Para ver la información solicitada se precisa del suso del plugin **dlllist** y filtrar por el nombre de la librería:

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 dlllist | grep “VCRUNTIME140.dll”`

![7 1](https://github.com/user-attachments/assets/8aaa7d56-6df6-41e7-8e7c-fa3736758cdf)


---

### Obtener hash de proceso infectado

Ahora he de obtener el hash del proceso malicioso. 
Para ello tengo que volcar el contenido de ese proceso a un archivo y sacar el hash de ese archivo. 
Para volcarlo uso el plugin **procdump**:

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 procdump -D volcado -p 3496`

![8 1](https://github.com/user-attachments/assets/6512fed4-b50f-4abd-9e98-c46080d1c47c)


Obtengo los hashes md5 y sha256:

`md5sum executable.3496.exe`
`sha256sum executable.3496.exe`

![8 2](https://github.com/user-attachments/assets/3620872b-ef9c-4eb8-921d-ede4eb11fe4a)

Si paso el ejecutable por virustotal…

![8 3](https://github.com/user-attachments/assets/7c5073c3-e4a0-439a-8d36-2ba3b1007863)


---

### ¿Cuál es el LM (Lan Manager o LanMan) hash de la cuenta de Bob?

El **LM (LanMan o LAN Manager hash)** es un método antiguo de almacenamiento de contraseñas en Windows, utilizado en versiones antiguas del sistema operativo. Se almacena en el archivo SAM (Security Account Manager) y se usa para la autenticación de usuarios en redes Windows. 

Si el hash LM aparece como **AAD3B435B51404EEAAD3B435B51404EE**, significa que **no se está usando LM y solo se usa NTLM** (una mejor práctica de seguridad).

Para poder ver esta información uso el plugin **hashdump**.

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 hashdump`

![9 1](https://github.com/user-attachments/assets/a9d40c4b-2281-4525-9f55-e6f45a3e29a8)


Este usuario está usando NTLM.

---

### ¿Qué constante de protección de memoria VAD (Virtual Address Description) utiliza el nodo 0xfffffa800577ba10

El VAD es una estructura en la memoria utilizada por el **gestor de memoria de Windows** para administrar regiones de direcciones virtuales asignadas a procesos.

**"Nodo 0xfffffa800577ba10"**
- Se refiere a una dirección en la memoria donde se encuentra un nodo VAD específico.

**"Constante de protección de memoria"**
- Hace referencia a los permisos que tiene la región de memoria descrita por el VAD, como READ, WRITE, EXECUTE, etc.

Para obtener esta información uso el plugin **vadinfo** y filtro la información por el nodo.

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 vadinfo | grep -A 10 “0xfffffa800577ba10”`

![10 1](https://github.com/user-attachments/assets/e76faef9-60c1-4bb3-87df-5e50f86d81fd)


En este caso es **PAGE_READONLY**

---

### ¿Qué protección tiene la memoria VAD (Virtual Address Description) en la dirección inicio 0x00000000033c0000 y f inalización 0x00000000033dffff?

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 vadinfo | grep -A 10 “0x00000000033c0000”`

![11 1](https://github.com/user-attachments/assets/cc0cf5e6-79c3-4d13-994d-a68010ac9164)


**PAGE_NOACCESS**

---

### Había un proceso de Visual Basic Script (VBS) que estaba funcionando en el ordenador, ¿Cuál es el nombre del script?

Para poder ver esta información hay que usar el plugin **cmdline** y filtrar el resultado por **vbs**:

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 cmdline | grep -i “vbs”`

![12 1](https://github.com/user-attachments/assets/7b457e99-736e-49cd-8f87-ecaed4731f08)


El nombre del script es **vhjReUDEuumrX.exe**

---

### Una aplicación estaba corriendo el 2019-03-07 23:06:58 UTC. ¿Cuál es el nombre de ese programa?

Para poder ver esta información usaré el plugin **shimcache** y filtramos por la hora y fecha.

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 shimcache | grep “2019 03-07 23:06:58”`

![13 1](https://github.com/user-attachments/assets/b41c29ef-3acb-424a-974a-73be4e44189a)


---

### ¿Qué se había escrito en el block de notas (notepad.exe) cuando la memoria fue capturada?

Este proceso lleva su tiempo de llevar a cabo. 
Primero localizamos el proceso **Notepad.exe**.

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 pstree | grep -i “notepad”`

![14 1](https://github.com/user-attachments/assets/294c416e-a400-4e6c-9d1c-29f957c3a892)


Ya localizado vuelco su contenido a un archivo:

![14 2](https://github.com/user-attachments/assets/91dc49b9-48db-4cc8-a354-1e92915d47c1)


Ahora para ver el contenido del fichero usaría el comando strings pero la cantidad de información que me saca no me permitiría encontrar la información que busco.

`strings 3032.dmp | less`

![14 3 1](https://github.com/user-attachments/assets/9cea326c-d604-404b-b0e5-673513f3023d)


↓

![14 3](https://github.com/user-attachments/assets/7e3e4c74-85c1-4758-bdd7-70d5b741434f)


Así que voy a usar el plugin **volshell**. 
Este plugin otorga una interfaz de comandos interactiva la cual permite analizar una memoria de una forma más avanzada.

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 volshell -p 3032`

![14 5](https://github.com/user-attachments/assets/a391046d-1d17-4ccd-993a-918f21401361)


Para obtener la información que quiero ejecuto los siguientes comandos:

`current_proc = proc() # Obtiene el objeto del proceso actual`
`offset_proc = current_proc.v() # Extrae su dirección virtual en memoria`
`cc(offset_proc) # Cambia el contexto al proceso seleccionado`
`peb = current_proc.Peb # Accede al PEB (Process Environment Block)`
`print(peb) # Imprime la dirección del PEB`

![14 6](https://github.com/user-attachments/assets/347262d7-7912-4e33-94d4-85987c7fb00c)


De la salida de estos comandos nos quedamos con el último número y ahora ejecuto el comando:

`dt(“_PEB”,8796092870656)`

Este comando se utiliza para analizar la estructura del Process Environment Block (PEB) de un proceso en Windows.

![14 7](https://github.com/user-attachments/assets/8aa86645-ec44-4735-ba2c-2b4b8a8c473f)


De estos datos me quedo con **ProcessHeaps** y **NumberOfHeaps**
![14 8](https://github.com/user-attachments/assets/6f55b0d7-7f5b-4d5b-863c-db7d8d7edafd)


Ahora accedo con la dirección que nos marca **ProcessHeaps**, y selecciono tantas áreas como las que nos marca **NumberOfHeaps**.

![14 9](https://github.com/user-attachments/assets/05adeca6-40bd-4ebf-97ec-7729de623104)


Selecciono la primera línea y al estar puesta en Little **Endian** le damos la vuelta.

![14 10 1](https://github.com/user-attachments/assets/ece0bcab-89e5-40be-904c-b7b29432e46c)


Con el plugin **vaddump** extraigo el rango de páginas descrito por un nodo **VAD**.
Obtendré un fichero **.dmp** por cada una de las áreas que utilizaré más adelante.

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 vaddump -p 3032 base0x00000000140000 -D volcado -D volcado`


![14 10](https://github.com/user-attachments/assets/4954cc7f-de33-4e89-ae94-a218dda84522)


Estas son todas las extracciones que he realizado:

![14 12](https://github.com/user-attachments/assets/957c8deb-fda7-4f1f-9ace-bb02d829cab3)


Pero las únicas que me interesan son las de Notepad.exe así que con un strings saco su contenido, el cual lo paso a un fichero:

![14 11](https://github.com/user-attachments/assets/6262fc42-cf56-441d-b0db-8effca1b7053)


Saco el contenido de este fichero filtrando por la palabra “flag”

![14 13](https://github.com/user-attachments/assets/f3798d6a-e0f4-4371-8fbb-524c34e035fa)


El contenido es **REDBULL_IS_LIFE**

---

### ¿Cuál es el nombre corto del archivo en el registro 59045?


Para poder ver esta información uso el plugin **mftpaser** y filtrando los resultados por **59045**

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 mftparser | grep “59045”`

![15 2](https://github.com/user-attachments/assets/3c789d28-20c9-4585-b55e-1b3e1a483b27)


Y ahora hago lo mismo pero filtrando por XLS:

`python2 /opt/volatility/vol.py -f 1.-Memory.dump –profile=WinSP1x64 mftparser | grep “XLS”`

![15 1](https://github.com/user-attachments/assets/52dbb10c-84af-4acd-9304-20ef0ae0da7c)


---

### Este ordenador fue explotado con meterpreter ¿Cuál fue el PID infectado?

Para poder ver esta información vuelvo a usar el plugin **netscan** y esta vez filtro por el puerto **4444**

![16 1](https://github.com/user-attachments/assets/f2193a14-ebd0-4393-8a66-634ac9e20356)


El PID es **3496**
