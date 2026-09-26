## Tipos de Sistemas Operativos

### Según los requerimientos temporales

#### Sistemas operativos sin requerimientos temporales

**S.O por lotes**

- Sistema operativo que no interactúa directamente con la computadora
- En su lugar, hay un operador que acepta trabajos similares y los agrupa en lotes que se encarga de clasificar los trabajos con necesidades similares

![image](https://github.com/user-attachments/assets/580da99f-f641-4dc6-be3b-e0625e5b449c)

**Sistemas operativos con requerimientos temporales**

- Flexibles
- Rígidos-Tiempo real
  - Sistema operativo ligero que se utiliza para facilitar la multitarea y la integración de tareas en diseños con recursos y tiempo limitados, como suele ocurrir en los sistemas integrados.
  - Y al que se le exige corrección en sus respuestas bajo ciertas restricciones de tiempo
  - Si no las respeta, se dirá que el sistema ha fallado
  - Para garantizar el comportamiento correcto en el tiempo requerido se ¡necesita que el sistema sea predecible

![image](https://github.com/user-attachments/assets/23b250d2-f308-42bf-ba82-ab1af9f5c4b2)

---

### Según el número de usuarios 

#### Monousuario

- Sistema operativo que sólo puede ser ocupado por un único usuario en un determinado tiempo ; un ejemplo son las versiones domésticas de Windows antiguos o MS/DOS
- Administra recursos de memoria procesos y dispositivos de las PC'S
- Es un sistema en el cual el tipo de usuario no está definido y, por lo tanto, los datos que tiene el sistema son accesibles para cualquiera que pueda conectarse.

![image](https://github.com/user-attachments/assets/08791c4b-3ee8-49b6-84b4-4ab20ee37b2a)

#### Multiusuario

- Sistema operativo que puede ser usado por varios usuarios; algunos ejemplos son cualquier Windows actual, cualquier GNU/LINUX o cualquier MAC OSX
- Estos usuarios pueden tener distintos niveles jerárquicos siendo usuarios normales o administradores (estos son los que más privilegios tienen).
- Prácticamente casi todos los S.O actuales son multiusuario

![image](https://github.com/user-attachments/assets/f99d40be-2e2f-46cb-b9fa-07dd0a3bd472)

↓

![image](https://github.com/user-attachments/assets/07253f9d-5feb-4b35-9206-f5a51b71a9f5)

↓

![image](https://github.com/user-attachments/assets/d1fcf97f-2b4d-4619-81c0-8e615e6ade45)

---

### Según el tipo de licencia

#### Software libre

- Software que respeta la libertad de los usuarios y la comunidad. A grandes rasgos, significa que los usuarios tienen la libertad de ejecutar, copiar, distribuir, estudiar, modificar y mejorarlo

- Pero que sea libre no significa que sea gratis.

![image](https://github.com/user-attachments/assets/14728c1c-36cd-458f-bcc0-507483536234)

#### Copyleft

- La mayoría de las licencias usadas en la publicación de software libre permite que los programas sean modificados y redistribuidos.
- Estas licencias definen clara y explícitamente las condiciones bajo las cuales pueden realizarse copias, modificaciones y redistribuciones, con el fin de garantizar las libertades de modificar y redistribuir el software registrado.

![image](https://github.com/user-attachments/assets/4dcc7dd6-08dc-4294-a100-2ea3c4c95472)

#### GPL

- Es la licencia que acompaña los paquetes distribuidos por el Proyecto GNU, más una gran variedad de software que incluye el núcleo del sistema operativo Linux.
- Es la licencia más ampliamente usada en el mundo del software y garantiza a los usuarios finales la libertad de usar, estudiar, compartir (copiar) y modificar el software.
- Su propósito es declarar que el software cubierto por esta licencia es software libre y protegerlo de intentos de apropiación que restrinjan esas libertades a los usuarios.
- La licencia GPL puede ser usada por cualquiera, ya que su finalidad es proteger los derechos de los usuarios finales (usar, compartir, estudiar y modificar)

![image](https://github.com/user-attachments/assets/54eb550b-f305-4e82-af44-b654e5df2413)

#### Donationware

- Programas completamente funcionales, cuya licencia sugiere a cualquiera que los utilice que haga una donación al autor, para sufragar los gastos de desarrollo del programa, o a alguna organización. 

---

### Según el tipo de licencia

#### Software propietario

- Es aquel cuya copia, redistribución o modificación están, en alguna medida, prohibidos por su propietario
- Para usar, copiar o redistribuir, se debe solicitar permiso al propietario o pagar.

![image](https://github.com/user-attachments/assets/049c879e-530c-4867-9206-c81381f34af9)

#### Software comercial

- Software, libre o no, que es comercializado, es decir, que existen sectores de la economía que lo sostiene a través de su producción, su distribución o soporte.
- Estas licencias restringen las libertades de los usuarios a usar, modificar, copiar y distribuir el software

![image](https://github.com/user-attachments/assets/b12d0cb9-e619-4ab2-ba0c-55dab61363f1)

#### Freeware

- Sistemas operativos/programas que permiten la redistribución, pero no la modificación, y que incluyen su código fuente
- Es un programa gratuito, sin embargo, no es libre
- En este tipo de licencia el autor puede restringir su programa al uso empresarial, redistribución no autorizada, modificación por usuarios y otro tipo de restricciones

![image](https://github.com/user-attachments/assets/6701645e-2c55-4b00-bb83-d272bf8584e8)

#### Software de dominio público

- Software libre que no tiene un propietario, por ende no existen derechos de autor, licencias o restricciones de distribución.
- Por este concepto, el software de dominio público se diferencia de un freeware, el cual conserva los derechos de autor
- El software de dominio público puede ser libremente utilizado, copiado o alterado, porque legalmente nadie es dueño de los derechos de restringir su uso

![image](https://github.com/user-attachments/assets/fa02096e-bc9d-4990-8b57-917e45029d29)

---

### Según el N.º de procesos simultáneos

**Monoproceso**

Solo permiten que se realice/ejecute un proceso a la vez, pero simulan la multitarea/multiproceso cambiando de proceso de forma muy rápida. 

El S.O tiene bien definidas la estructura de la memoria en donde la aplicación deberá de gestionar su propia memoria virtual.  

La gestión de memoria en este proceso es muy simple

Cuando el S.O. carga una aplicación se comprueba que haya espacio suficiente en el proceso , se carga el código del programa y se pone en ejecución.  

A partir de entonces, no hay casi nada de gestión en la memoria por hacer hasta que el proceso termina y el próximo programa debe de ejecutarse. 

Si la aplicación es muy grande, puede tener que recurrirse a superposiciones; carga partes de si mismo según sea necesario.  

Por ejemplo, si se trata de un paquete de procesamiento de texto, puede no cargar las rutinas de impresión hasta que el usuario desea imprimir

![image](https://github.com/user-attachments/assets/087cca3e-aa17-476a-ad6c-bfc651693d43)

**Multitarea**

Un sistema operativo multiproceso coordina las operaciones de las computadoras multiprocesadoras.  

Ya que cada CPU en una computadora de multiproceso puede estar ejecutando una instrucción, el otro procesador queda liberado para procesar otras instrucciones simultáneamente. 

Los procesadores comparten la memoria principal y la E/S, y están interconectados mediante un bus u otro tipo de sistema de interconexión, de manera que el tiempo de acceso a memoria es aproximadamente el mismo para todos los procesadores. 

Los primeros Sistemas Operativos Multiproceso realizaban lo que se conoce como:

**Multiproceso asimétrico**

- Una CPU principal retiene el control global de la computadora, así como el de los otros procesadores.
- Esto fue un primer paso hacia el multiproceso, pero no fue la dirección ideal a seguir ya que la CPU principal podía convertirse en un cuello de botella. 

**Multiproceso simétrico**

- En un sistema multiproceso simétrico, no existe una CPU controladora única
- La barrera a vencer al implementar el multiproceso simétrico es que los Sistema Operativo tienen que ser rediseñados o diseñados desde el principio para trabajar en un ambiente multiproceso

![image](https://github.com/user-attachments/assets/6ac33f9a-57c4-460e-8714-79a2c624161b)

---

### Según el N.º de procesadores en uso simultáneo 

#### Uniproceso

Un sistema operativo uniproceso es aquél que es capaz de manejar solamente un procesador del ordenador, de manera que si el ordenador tuviese más de uno le sería inútil. El ejemplo más típico de este tipo de sistemas es el DOS y el MacOS

#### Multiproceso

Se refiere al número de procesadores del sistema, que es más de uno y éste es capaz de usarlos todos para distribuir su carga de trabajo.  

Generalmente estos sistemas trabajan de dos formas

- **Asimetrica**
  - Cuando se trabaja de manera asimétrica, el sistema operativo selecciona a uno de los procesadores el cual jugará el papel de procesador maestro y servirá como pivote para distribuir la carga a los demás procesadores, que reciben el nombre de esclavos. 
- **Simétrica**
  - Cuando se trabaja de manera simétrica, los procesos o partes de ellos (threads) son enviados indistintamente a cual quiera de los procesadores disponibles, teniendo, teóricamente, una mejor distribución y equilibrio en la carga de trabajo bajo este esquema.

Un aspecto importante a considerar en estos sistemas es la forma de crear aplicaciones para aprovechar los varios procesadores. 

Existen aplicaciones que fueron hechas para correr en sistemas uniproceso que no toman ninguna ventaja a menos que el sistema operativo o el compilador detecte secciones de código paralelizable, los cuales son ejecutados al mismo tiempo en procesadores diferentes. 

![image](https://github.com/user-attachments/assets/4a72994b-29e6-450b-9ecc-ab8bbc7c79a5)

---

### S.O en red

Son aquellos que están pensados para posibilitar la conexión y comunicación de varios ordenadores autónomos dentro de una red. 
Así, el sistema operativo en red puede proporcionar varios servicios a los ordenadores que se conecten a él (clientes). 

**Características**

- Conecta todos los equipos y recursos de la red.
- Gestión de usuarios centralizada.
- Proporciona seguridad, controlando el acceso a los datos y recursos
- Debe validar los accesos (claves, certificados, sistemas biométricos, etc.) y aplicar las políticas de seguridad
- Coordina las funciones de red, incluso con las propias del equipo
- Comparte recursos (lleva a cabo la coordinación y los privilegios a la hora de compartir). Por tanto, mejora notablemente la utilización de los recursos. 
- Permite monitorizar y gestionar la red y sus componentes

Ejemplos

- Windows Server
- Ubuntu Server
- LANastic
- Novell Netware
- LAN Manager
- OS X Server

![image](https://github.com/user-attachments/assets/e447b96f-5014-4eeb-9bcb-784c14467bae)

## Kernel

### ¿Qué es el Kernel y funciones? 

Es núcleo o corazón del sistema operativo, y se encarga principalmente de mediar entre los procesos de usuario y el hardware disponible en la máquina, es decir, concede el acceso al hardware, al software que lo solicite, de una manera segura; y el procesamiento paralelo de varias tareas. 

**Funciones:**

- Gestiona recursos mediante servicios de llamada
- Distribuye los recursos de la mejor forma para que los componentes externos e internos del ordenador puedan trabajar en conjunto
- Se encarga de:
  - Conceder permisos
  - Facilñitar la comunicación entre programas
  - De gestionar las diversas labores de un dispositivo
  - Manejar el procesador, periférico y almacenamiento el sistema

---
 
### Niveles de protección de Kernel

Los sistemas operativos de hoy en día ofrecen por lo general  anillos de protección que proporcionan diferentes niveles de privilegios: de menor a mayor. Estos últimos los crea el procesador y no el sistema operativo. 

Cuando un programa se ejecuta el sistema operativo le asigna una zona de memoria RAM que se asignan a un anillo de protección.  

El objetivo es separar los programas sensibles, como el kernel del sistema, y los programas de o de los usuarios. 

![image](https://github.com/user-attachments/assets/a2ca2217-89e9-4cac-9c6e-4845436f760c)

---

### Tipos o arquitecturas del kernel

**Kernel monolítico**

- Un Kernel grande para todas las tareas.
- Es el único responsable de la gestión de la memoria y de los procesos, de la comunicación entre procesos y proporciona funciones de soporte de drivers y hardware.
- Los sistemas operativos que usan el kernel monolítico son Linux, OS X y Windows.

![image](https://github.com/user-attachments/assets/44295093-bca0-42ba-be29-4ea44491cc13)


**Microkernel**

- Se diseño intencionadamente de un tamaño pequeño para que en caso de fallo no paralice todo el sistema operativo.
- Está dividido en varios módulos.
- Como ejemplo de aplicación solo existe el componente Mach de OS X, ya que hasta ahora no hay ningún sistema operativo con Microkernel. 

![image](https://github.com/user-attachments/assets/33cd6b33-c94a-4d46-bcb0-89b42d3fd21e)

**Kernel híbrido**

- La combinación del Kernel monolítico y el Microkernel se denomina Kernel híbrido
- En este caso, el Kernel grande se hace más compacto y modulable. Otras partes del Kernel pueden cargarse dinámicamente. Esto ya ocurre en cierta medida en Linux y OS X

![image](https://github.com/user-attachments/assets/25453b4f-54bc-4195-ba27-ba84970cb8f0)

## Funciones y capas de un SO

La tarea principal de un S.O es la de administrar las tareas y recursos del equipo, coordinar el hardware y organizar los archivos y directorios en los dispositivos de almacenamiento del ordenador. 

Aunque tiene muchas otras funciones:

- Gestionar el intercambio de memoria interna entre las diversas aplicaciones.
- Hacer arrancar el ordenador.
- Ejecutar varios programas al mismo tiempo y determinar en qué orden y en cuánto tiempo se deben ejecutar (multitarea).
- Ofrecer una seguridad al usuario o usuarios que lo usen.
- Ofrecer una experiencia satisfactoria con su uso.

**Capa 1/Núcleo**

Es el encargado de llevar la cuenta de todos los procesos activos y de la planificación de los mismos, al seleccionar cuál de ellos ocupara tiempo del procesador. 

Esta capa es muy importante, dado que define el rendimiento del sistema. Prueba de ello es el rendimiento que obtuvo Windows XP, al ser creado sobre la base de un núcleo UNIX. 

**Capa 2/Entrada y salida básica**

Proporciona funciones primitivas para la gestión de la memoria secundaria, es decir, se encarga de proveer las primitivas necesarias para la localización, escritura y lectura de bloques de datos en el disco duro, sin llegar a proporcionar muchos detalles.  
Cabe señalar que en esta capa la información almacenada no se representa como archivos, la cual es una implementación de una capa superior. 

**Capa 3/Gestión de memoria**

Administra la memoria principal o memoria RAM, se encarga de asignar los bloques de memoria a los procesos y de liberarlos cuando los procesos han terminado. 

Así también se encarga de retirar algunos procesos de la memoria y almacenar una imagen de ellos en el disco duro, con la finalidad de simular que existe más memoria de la que realmente existe de forma física, el cual es un proceso que denominamos memoria virtual.

**Capa 4/Sistema de archivos**

Esta capa proporciona las funciones necesarias para almacenar la información en archivos, se apoya en las primitivas de la capa2 y la decisión de que procesos hacen uso de memoria se ubican en esta capa

**Capa 5. Interprete de comando**

En esta última capa se ubica la interfaz visible para el usuario, ya sea como una línea de comando o como una GUI (Interfaz Gráfica de Usuario), con la cual el usuario comunica y que esta capa traduce al conjunto de primitivas de las capas anteriores.

![image](https://github.com/user-attachments/assets/6d2519af-9acb-4238-9b12-4c30590c3967)

## Gestión de procesos

### ¿Qué es un proceso?

En informática, un proceso se trata básicamente de un programa que entra en ejecución.  

Los procesos son una sucesión de instrucciones que pretenden llegar a un estado final o que persiguen realizar una tarea concreta.  

O también serán las distintas tareas que tendremos que hacer hasta llegar a una solución. 

![image](https://github.com/user-attachments/assets/e56c82d5-5658-4ae9-84dd-87fcfe576f10)

---

### Imagen de un proceso

La Imagen de Proceso de Salida puede tener varias definiciones: 
Es el área de memoria de la CPU que contienen los valores obtenidos a partir de la ejecución del programa de control que está alojado en la RAM

**Esta imagen contiene**

- Código del programa
- Datos
- Área de pila
  - Funciona con estructura LIFO (Last Input First Out)
  - Sirve para, que cuando saltamos a una función, sepamos a donde hay que volver
 
![image](https://github.com/user-attachments/assets/559d577c-0399-47b4-9444-70085d9de9e9)

- Bloque de control del proceso
  - Identificadores:
    - Nº que se le da a un proceso o al usuario que ha lanzado el proceso.
  - Contexto:
    - Lo que estamos haciendo
  - Información de control:
    - Guarda la información del sistema para que gestione los procesos (el tiempo que lleva x proceso, el siguiente proceso a ejecutar etc)
   
![image](https://github.com/user-attachments/assets/6b7f8ae4-4746-42ca-8693-2a9fe24259a0)

---

### ¿Qué es un hilo/thread? 

Es un **proceso ligero o subproceso**; es una secuencia de tareas encadenadas muy pequeña que puede ser ejecutada por un sistema operativo. 

Cada hilo, tiene **sus propias instrucciones y un estado de ejecución**, es decir, unos valores en los registros con los que el procesador sabe en qué fase se encuentran. 

Todo **proceso** parte inicialmente con un único **hilo principal**, aunque el sistema operativo ofrece llamadas al sistema que permiten al programador crear y destruir hilos. 
Por tanto, **un proceso está compuesto por uno o más hilos**

**Ventajas**

- Menor espacio que se ocupa en la RAM (un hilo es más pequeño que un proceso)
- Se tarda menos en crear y eliminar el hilo
- Se tarda menoComunicación más sencillas en crear y eliminar el hilo

![image](https://github.com/user-attachments/assets/fd7e1b7d-1ca1-4aea-ba41-c153a5f63238)

---

### Diagrama de estados de un proceso  

Los procesos se encuentran en diferentes estados según las necesidades del equipo, sus recursos, y la coordinación y manipulación por parte del S.O. 

De estos distintos estados, los más básicos serían:  

- Nuevo
  - Se trata de la **creación de un proceso**. Los **procesos** en este estado están **cargados en la memoria**, pero **no están acaparando recursos de la CPU**
  - Una vez **se admite el proceso** pasa a estado **Preparado o Activo**.
- **Preparado**
  - Procesos que están cargados y listos para pasar al estado activo, pero que por cualquier causa aún no han cambiado al estado activo.
- **Activo**
  - Cuando el proceso **acapara los recursos del procesador** y se está ejecutando, está en estado activo.
  - **Cada proceso activo ocupa un hilo del procesador**
- **Bloqueado**
  - Los procesos entran en este estado cuando necesitan algún recurso que no ha sido dispuesto durante su ejecución
  - **Esperan a un evento antes de volver al estado Preparado.**
- **Terminado**
  - Sucede cuando un proceso termina (puede terminar automáticamente o lo podemos terminar nosotros) y se elimina.
 
![image](https://github.com/user-attachments/assets/b39fb12b-2db4-445c-b8eb-d7e60a87971d)

Otros estados son los Estados de Suspensión y son:

- **Activo suspendido**
  - Sucede cuando el proceso se ha suspendido, por cualquier causa, pero no presenta motivos para ser bloqueado.
- **Bloqueado suspendido**
  - Sucede cuando se espera un evento concreto, pero aún no ha desaparecido la causa de su bloqueo
  - Es un **estado de transición entre el bloqueo** y el estado **Activo Suspendido**

## Algoritmos

Dados los siguientes procesos, con sus tiempos de llegada y de ejecución

![image](https://github.com/user-attachments/assets/426d68cf-6ef8-421e-8247-9fc6e1fcd5fa)

↓

![image](https://github.com/user-attachments/assets/112538aa-46f7-4b0f-aceb-1575b4180d38)


### FIFO

![image](https://github.com/user-attachments/assets/5c9234b1-d105-4942-ad37-74309b8a94bf)

↓

![image](https://github.com/user-attachments/assets/255e0c05-0351-4375-b8e1-96d41908d206)

### Round Robin. Cuanto=2

![image](https://github.com/user-attachments/assets/86ce7890-abec-454e-9248-f20d2d189700)

↓

![image](https://github.com/user-attachments/assets/dce482f5-19c5-4e07-a311-e4b913f90d62)

### Round Robin. Cuanto=3

![image](https://github.com/user-attachments/assets/ec44dfc3-662b-41f0-b807-f997962d5e00)

↓

![image](https://github.com/user-attachments/assets/ed24ab09-a3d7-4153-80a6-a706be00ec66)

### SPN

![image](https://github.com/user-attachments/assets/66f726d6-648e-4ee8-aeed-d1e82ea0743a)

↓

![image](https://github.com/user-attachments/assets/6484c8d4-1ec5-4090-abb7-5a5165bcbdb1)

### SRT

![image](https://github.com/user-attachments/assets/fd0eb756-3909-449b-be29-af2ce642665b)

↓

![image](https://github.com/user-attachments/assets/a8afcdc1-e2e0-48d3-8258-f3fea2236622)

### HRRN

![image](https://github.com/user-attachments/assets/8641db33-8454-4b7c-814f-1517c317f872)

↓

![image](https://github.com/user-attachments/assets/b28d3053-2f2e-463b-a489-19abbe8598e1)




