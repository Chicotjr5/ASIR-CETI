# Uso de la herramienta HWINFO

## Accede a Program - Syustem Summary

### Identifica el modelo de tu procesador y las siguientes características:

![image](https://github.com/user-attachments/assets/e5632890-1158-41dc-9b6b-f54a607b6b4d)

### ¿Cuántos módulos de memoria RAM tiene tu equipo? ¿De qué capacidad? Indica su tipo, frecuencia y latencia (CL).

![image](https://github.com/user-attachments/assets/4c5abc1b-3077-41c9-979d-8be54cf71d91)

### Identifica la GPU, su interfaz y su memoria. 

![image](https://github.com/user-attachments/assets/6a1d337c-b88d-4081-9d02-c99882499236)

### Señala el modelo de placa base y el chipset, además de localizar la versión y fecha de la BIOS

![image](https://github.com/user-attachments/assets/449e3f16-c2d7-4909-86b5-677537fee7d5)

### Describe cuántas unidades de almacenamiento secundario tiene el equipo, identificando su interfaz, capacidad y tipo.

![image](https://github.com/user-attachments/assets/b3beeef2-6864-4b2a-ade7-990711023f0d)

## Localiza informaicón sobre los siguientes componentes

### Monitor

![image](https://github.com/user-attachments/assets/249cecf5-bef4-4b32-b50b-8fecdbbfd951)

### Audio

![image](https://github.com/user-attachments/assets/1368654c-300c-4b85-b3d5-dbf8b64b7bf0)

### Red

![image](https://github.com/user-attachments/assets/853a7951-3683-425d-a995-369c580b1318)

### Puertos

![image](https://github.com/user-attachments/assets/6407273e-d177-4b30-b8e4-8f3e79ad6641)

## ¿Qué es un benchmark? Ejecuta un benchmark en HWiNFO con las opciones por defecto

Técnica usada para registrar el desempeño general de un sistema para un modelo de uso definido. 
Se mide el desempeño de algunos componentes individuales como CPU, memoria, o tarjeta de gráficos.

### ¿Sobre qué componentes permite realizar el benchmark? 

![image](https://github.com/user-attachments/assets/c8ce5bd4-9537-4b22-8f25-9092df54628c)

### Ejecuta el benchmark y obtén un gráfico comparativo respecto a otros equipos del desempeño de los siguientes elementos: 

![image](https://github.com/user-attachments/assets/2e53741a-5d2e-4dc7-b4cc-461ede11c6c2)

↓

![image](https://github.com/user-attachments/assets/4c6e4fb7-de75-4871-af42-f1bfb9f91584)

## Desde la opción Sensors

### Localiza los datos sobre el voltaje actual, mínimo, máximo y medio de cada uno de los núcleos del procesador. 

Desde la opción Sensores, podemos ver información sobre todo tipo de componentes y elementos. 
Como, por ejemplo, los voltajes de los núcleos de la CPU.

![image](https://github.com/user-attachments/assets/da06d325-2344-4e3e-8ef5-0270b3a116c2)

### Localiza los datos sobre la temperatura de los siguientes componentes

**CPU PACKAGE**

![image](https://github.com/user-attachments/assets/ee2769a6-c244-48e8-b6f2-9273a6e43a71)

**Core #1 ... Core #x**

![image](https://github.com/user-attachments/assets/b1245a2f-f676-4c53-ae5d-6030a1317ecf)

### Disco duro

![image](https://github.com/user-attachments/assets/b86b611e-d2b5-413e-8d88-0b6f4dd39377)

### GPU 

![image](https://github.com/user-attachments/assets/7062a2f2-74a6-4a69-a0cb-78fa0ebc821f)

## Guarda un informe en un fichero de texto

Para guardar un informe, seleccionaremos la opción Save Report y elegiremos la opción Text Logfile, para que se guarde como un fichero de texto. 

Y podemos elegir los datos que se guardarán. 

![image](https://github.com/user-attachments/assets/b14c0fa6-69cf-4a26-8507-412c1d81204f)

↓

![image](https://github.com/user-attachments/assets/67688437-6691-42e5-89ec-067ff2d3b6d6)

# Uso de la herramienta CPU-Z 

## Observa la pestaña CPU

###  Identifica el modelo de tu procesador, tecnología de fabricación (en nm), número de núcleos e hilos y frecuencia actual del reloj (incluyendo valor del multiplicador y frecuencia del FSB). 

### Identifica las características de los distintos niveles de la memoria caché. 

![image](https://github.com/user-attachments/assets/a574f763-4b03-44b5-9841-5c5d2b6526b6)

## Observa la pestaña Mainboard:

### Indica el fabricante y modelo de la placa base.
### Identifica el chipset (puente norte y puente sur).
### BIOS: Indica el fabricante, la versión y la fecha. 
### Señala cuál es la interfaz utilizada para los gráficos. 

![image](https://github.com/user-attachments/assets/1cb8d7ff-6342-40af-8681-636db1e4c4b6)

### Investiga qué es el LPCIO.

El LPCIO es un controlador básico de **entrada-salida** que controla las salidas de entrada de nivel de chip de la placa madre como monitorear el voltaje de la CPU, la velocidad del ventilador. 

Además, es el controlador que usan los programas de este tipo para recoger la información de cada componente.

## Observa la pestaña Memory

### ¿Qué tipo de memoria tiene? ¿De qué capacidad?
### ¿Está configurada en Dual Channel? 
### ¿Qué es FSB:DRAM? 

![image](https://github.com/user-attachments/assets/13bf3fb5-5788-4cf4-8457-e6dbf4bc02de)

### Indica los valores de las latencias y su unidad de medida.

**CAS Latency**
Cuánto tiempo debe esperar la computadora antes de que realmente pueda comenzar a leer datos de la memoria 

**RAS to CAS delay**
Especifica el número de ciclos de reloj entre el momento en que la luz estroboscópica de fila activa una fila hasta que la columna en esa fila (que define una celda o bit de memoria) se puede leer o escribir 

**RAS Precharge**
Indica el tiempo que tarda la memoria en colocarse sobre una fila.

**Cycle Time**
El tiempo, generalmente medido en nanosegundos, entre el inicio de un acceso a la memoria de acceso aleatorio (RAM) hasta el momento en que se puede iniciar el siguiente acceso 

**Row Refresh Cycle Time**
Es un tiempo en ciclos para actualizar una fila en un banco de memoria. Por lo tanto, un menor tiempo de ciclo de actualización de filas (tRFC) da como resultado un mejor rendimiento.

## Observa la pestaña SPD

### Indica los slots de memoria ocupados indicando para cada uno de ellos el tipo de módulo, su fabricante y su capacidad. 

### Indica el estándar utilizado en los módulos de memoria RAM y su frecuencia. ¿Por qué el valor de la frecuencia es la mitad del especificado en el módulo? Por ejemplo, si un módulo es DDR4-3200 el valor de la frecuencia que se puede leer con las herramientas de diagnóstico está en torno a 1600MHz. 

### ¿Qué se puede observar en la tabla de tiempos de los módulos? 

![image](https://github.com/user-attachments/assets/5760fc77-28fd-4e7d-80bf-e9893ed2b716)

## Observa la pestaña Graphics:

### ¿Qué información se proporciona sobre la GPU?

### En caso de estar disponibles, indica la frecuencia y la memoria de los gráficos.

![image](https://github.com/user-attachments/assets/f423deb3-6918-4723-a188-5b5b1411ef40)

## Accede a la pestaña Bench

### Haz clic sobre Bench CPU y obtén gráficos comparativos de los resultados con una CPU de gama más alta y una CPU de gama más baja. 

![image](https://github.com/user-attachments/assets/e4233941-ceff-4ac2-993f-8e35e52ba56d)

### ¿Cuál es la diferencia entre CPU Single Thread y CPU Multi Thread? 

**Single Thread  **
Hacemos un benchmark sobre un solo hilo. 

*Multi Thread **
Hacemos un benchmark sobre todos los hilos de la CPU.

## Accede a la pestaña About:

### Guarda en un informe con formato .HTML los datos del hardware que ofrece CPU-Z 

Le damos a la opción **Save Report (.HTML)** y le damos un nombre y ubicación.

![image](https://github.com/user-attachments/assets/1821bac0-3575-4099-a293-cd764e702d08)

↓

![image](https://github.com/user-attachments/assets/ac36fe95-be11-4cea-b1b9-bdf4656dd4f6)


### Obtén un resumen en tiempo real de todas las frecuencias de funcionamiento del sistema.

Si le damos a la opción “clocks”, podemos obtener un resumen de las frecuencias. 

![image](https://github.com/user-attachments/assets/aa9fee16-7e29-4f01-a55d-883f512ea834)

# Uso de la herramienta OCCT

## Habilita y configura la temperatura crítica de seguridad

Después de instalar la herramienta, la ejecutamos, vamos a **Ajustes>Seguridad>Temperatura crítica** y establecemos una temperatura límite. 

![image](https://github.com/user-attachments/assets/d84088c0-11d7-4855-baaf-bebfe4516373)

## ¿Qué representa cada una de las gráficas de uso del sistema?

![image](https://github.com/user-attachments/assets/4c064944-d397-484e-a9ec-38919f8bd6bb)

## Observa los datos de “Monitoreo e información del sistema”


**Temperatura**

![image](https://github.com/user-attachments/assets/65357017-9c00-44c5-b7f9-b17dbc70be22)

**Voltaje**

![image](https://github.com/user-attachments/assets/c711e334-39f0-4b7b-acb8-46dd1902c168)

**Ventiladores**

![image](https://github.com/user-attachments/assets/23b3ed35-c94f-4662-9efc-651c6ccf12fd)

**Consumo**

![image](https://github.com/user-attachments/assets/3cd53a1d-1f8e-4136-819c-148cfcfc7718)

**Frecuencias**

![image](https://github.com/user-attachments/assets/f25b6057-21f2-4225-bcc0-c8408e9ed3df)

## Indica los valores máximos para la CPU de

**Temperatura**

![image](https://github.com/user-attachments/assets/9a623b36-b1cb-43e0-b04e-a18cb364e4a8)

**Voltaje**

![image](https://github.com/user-attachments/assets/ecfe97cd-7009-4e97-a612-ee4221d88042)

**Ventiladores**

![image](https://github.com/user-attachments/assets/e694fd71-b646-458e-a7bc-5d89cd5e3f2e)

**Consumo**

![image](https://github.com/user-attachments/assets/6cd7e08e-a04e-4982-bfa1-deba04e780fc)

## Investiga en su página web qué permite testear cada una de las pruebas OCCT 

**Linpack**

Prueba originaria de Intel, tiene como **objetivo estresar su CPU y memoria**.  
Las opiniones difieren sobre esta prueba y su capacidad para detectar errores. 
Contiene dos fases: 
- Muchos cálculos
- Comprueba resultados 

La duración de cada fase depende de la cantidad de Memoria. 
Las opiniones difieren sobre esta prueba, debido a que la prueba de la CPU es la más 
eficaz, pero en algunos casos, Linpack puede detectar errores que la CPU no puede. 
Funciona mejor en CPU de Intel. 

**3D**

Esta prueba cargará tanto su GPU como su VRAM mediante el uso de una combinación muy estresante de renderizado 3D y sombreadores. 

Esta prueba llevará su GPU al límite; sin embargo, a diferencia de las CPU, las tarjetas GPU no están diseñadas para funcionar al 100 % de su capacidad. 
Están diseñados pensando en los juegos, donde la GPU siempre ve un uso máximo del 70%, ya que la CPU tiene su parte de trabajo por hacer. 

Esto da como resultado que esta prueba probablemente active las protecciones integradas de su tarjeta gráfica (OCP, OVP, etc.) que, a su vez, limitarán las frecuencias de la tarjeta durante la prueba, aunque la misma prueba viene con unos limitadores, para que no se lleguen a activar esas protecciones.

**Memoria**

Prueba diseñada para cargar mucho tanto su RAM como la parte IMC de su CPU, lo que resulta en una carga muy alta. 

Hay dos tipos de verificadores de memoria: el primer tipo son los verificadores de celdas defectuosas, como **Memtest86+**, que exploran minuciosamente la memoria en busca de celdas defectuosas, generalmente en su propio sistema operativo de memoria reducida. 

Son exhaustivas, pero no cargan mucho su IMC o chips de memoria. 
Como se ejecuta en Windows, comprobará una menor cantidad de memoria (no puede probar la memoria utilizada por el sistema operativo), pero pondrá un nivel mucho más alto de estrés en sus componentes y es mucho más eficiente para detectar errores.

**Power**

Esta prueba combina una prueba de CPU y una prueba 3D para poner a plena carga dos de sus componentes que consumen más energía. 

Esto dará como resultado un pico en términos de consumo de energía en su ordenador. 

Es muy útil para probar la fuente de alimentación y ver si puede manejar un escenario de carga completa. 
Informará sobre los errores encontrados durante la prueba, pero en caso de una falla de energía, el síntoma más frecuente es un reinicio simple y repentino.

# Uso de la herramienta GPU-Z

## Observa la pestaña Graphics Card:

### Señala el nombre y modelo de tu GPU

![image](https://github.com/user-attachments/assets/9eec5b13-cffc-42fb-abe4-7af69fbf5866)

Un ROP es un sub-procesador encargado de trascribir a la memoria los datos de los píxeles, es decir, el encargado de llevar las texturas a la vRAM.  

Un TMU es otro tipo de sub-procesador que aplica las texturas a los píxeles, cuanto más rápido se rellenen los píxeles más FPS obtendremos en los juegos.

## Observa la pestaña Sensors

### Qué tipo de memoria tiene? ¿De qué capacidad? ¿Está configurada en Dual Channel? 

![image](https://github.com/user-attachments/assets/6b74e5bb-f7ad-413b-9b11-906f290c495f)

↓

![image](https://github.com/user-attachments/assets/efa744d4-9e9a-4365-80f6-32d9122da4fc)

## Observa la pestaña Advanced

### Localiza la fecha del driver.
### Obtén información relativa a la conexión con el monitor.

![image](https://github.com/user-attachments/assets/243471cb-0ef5-47a8-81a1-66b67e316835)

### Indica la última versión de DirectX soportada.

![image](https://github.com/user-attachments/assets/e08d9571-31cf-4769-8e98-ab869c90d96f)

# Uso de la herramienta Crystal Disk

## Observa los datos ofrecidos sobre los discos del equipo 

S.M.A.R.T: sistema de control para las unidades de almacenamiento que recopila datos sobre el estado del disco y los notifica al usuario.  

La tecnología SMART es útil para asegurarse de que su disco está rindiendo al máximo. (Crucial) – Se refiere a que el disco no tenga problemas de funcionamiento

![image](https://github.com/user-attachments/assets/175c6833-f65b-4170-b2cc-43194466c934)

## Para un disco duro indica: firmware, número de serie, interfaz, modo de transferencia, tamaño buffer y velocidad de rotación

## ¿Cuántas veces se ha encendido el disco duro? ¿Cuánto tiempo ha estado encendido? 

![image](https://github.com/user-attachments/assets/59f8c3c7-ee9c-4a59-94d2-effb562c7db5)

# Uso de la herramienta Hiren’s BootCD

## Carga la ISO en la unidad óptica de una máquina virtual para Windows 10 en VirtualBox y arranca la máquina desde la misma

Después de descargar la ISO, creamos una máquina virtual y montamos la unidad ISO en ella.

![image](https://github.com/user-attachments/assets/556812f2-eb82-4dd0-9300-2e000516fa7f)

Y encendemos la máquina desde la ISO.

![image](https://github.com/user-attachments/assets/a340d2f5-e89c-4d44-bf45-623d1bcdcffd)

Para arrancar el “SO” le damos a la **tecla B** y vemos que empieza a cargar el SO.

![image](https://github.com/user-attachments/assets/f657b07b-f21f-44c6-b64b-36a5ad180dd9)

Después de esperar un rato, arranca el sistema. 

![image](https://github.com/user-attachments/assets/139ff424-2abf-4cbb-88c5-723ab1472d4a)

## En el Escritorio hay una carpeta llamada Utilities. Accede a cada uno de los siguientes subdirectorios e indica qué utilidades están disponibles en cada uno de ellos

Como indique en la captura anterior, en el escritorio hay una carpeta llamada Utilities, la cual, como su nombre indica, tiene algunas utilidades, para realizar labores administrativas o realizar reparaciones o diagnóstico del equipo. 
Pero nos vamos a centrar en las 2 siguientes carpetas. 

### System Tools\HW Info 
### Hard Disk Tools\Diagnostic

![image](https://github.com/user-attachments/assets/bc4d7b14-87d2-4cc8-b475-7625a63ef492)

La carpeta **System Tools** contiene herramientas para realizar algunas labores de configuración en el equipo (modificarlas teclas del teclado, hacer un backup del registro, etc.) y en la carpeta HW Info contiene algunos de los software de diagnóstico que hemos usado. 

![image](https://github.com/user-attachments/assets/592f4b9e-fa5a-4b51-b11f-3ae60ca2986c)

Y en la carpeta Hard Disk Tools nos encontramos con herramientas para realizar diferentes acciones con los discos duros (desfragmentar, realizar imágenes del sistema, particiones, recuperar datos, seguridad y diagnostico) 

Y dentro de la carpeta Diagnostic nos encontramos con algunas de las herramientas que hemos usado previamente.

![image](https://github.com/user-attachments/assets/d143a276-214d-44ea-8b41-71fab27b3401)

↓

![image](https://github.com/user-attachments/assets/69095c3d-bca2-4d90-aa57-ce7a02226439)

## Crea un pendrive arrancable utilizando YUMI o Rufus con la ISO anterior

En nuestro caso, hemos usado RUFUS. 

Después de descargarlo, lo ejecutamos y nos sale la siguiente pantalla, en la cual, seleccionaremos el dispositivo que usaremos para crear el USB arrancable, la imagen que usaremos, el tipo de partición, la etiqueta del volumen, el sistema de archivos y el tamaño del clúster.

![image](https://github.com/user-attachments/assets/1a8fb88b-bd51-4153-9554-e42ca1c57657)

Antes de empezar a crear el USB arrancable, nos salen dos advertencias, avisándonos de que todos los datos del USB se van a borrar y que el USB contiene particiones y si queremos continuar o no

![image](https://github.com/user-attachments/assets/ad3c1b70-3389-4e1e-82a7-da53eb92764e)

↓

![image](https://github.com/user-attachments/assets/777c4696-1d3f-47e1-bcb3-3283a0eacd79)

Si vemos que la barra verde de abajo está llena, significa que Rufus ha finalizado su trabajo y ya podemos usar nuestro USB arrancable.

![image](https://github.com/user-attachments/assets/10f10ab8-55ba-4f9d-96d7-973aab0a2dfc)

Para comprobar su funcionamiento, vamos a arrancar Hirens Boot desde una máquina virtual. 
Seguimos el siguiente [tutorial](https://www.solvetic.com/tutoriales/article/3606-como-arrancar-boot-usb-disco-virtuabox-vmware/) y arrancamos la máquina desde la UEFI para arrancar desde el USB. 
Elegimos el USB. 

![image](https://github.com/user-attachments/assets/21a4e590-9ba6-4482-a32b-feee30220a63)

↓

![image](https://github.com/user-attachments/assets/e078cc35-dd12-4a51-bd4c-27cdbbcc19ee)

↓

![image](https://github.com/user-attachments/assets/036f3627-c802-4257-b887-f211708dbc16)





















