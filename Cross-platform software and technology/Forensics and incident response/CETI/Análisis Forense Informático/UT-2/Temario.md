
## INTRODUCCIÓN

La extracción de la información en los móviles es mas difícil, debido a que estos están en constante interacción, por lo tanto, irán modificando su información constantemente, así que será más difícil crear hash.

Software para ver si nuestro equipo tiene cosas malas
- Verification Toolkit (Linux, Mac) - github
- Imazing - Iphone
- Ishutdown - Kaspersky  - github


**Desafio en la investigacion forense**
- Dificultad de obtener las pruebas originales
- Los datos podrán ser accedidos/borrados desde el exterior
- Diferencia de hardware por diferentes versiones, modelos etc
- Las empresas implementan más medidas de protección de la información, siendo esto un obstáculo forense.
- Técnicas antiforense
	- Borrado de datos al encender le movil
	- Modificacion de informacion

### Cuestiones legales
- Delitos y fronteras
- Respetar derechos de las personas, osease, tener autorización
- Intervención de la policía -> orden de registro
	- (incautación del móvil y datos a recoger)


## Extracción de evidencias digitales de un móvil

**Proceso**
- Incautación
	- Guantes
	- Bolsas de faraday
	- Modo avión
- Adquisición
	- Se extraen las evidencias
	- Contenido genérico
		- Identificación del caso
		- Investigador
		- fecha de recepción
		- fabricante
		- Dispositivo
		- Modelo
		- Nº de serie
		- Color 
		- Propietario
		- Imágenes - hash
		- Herramientas usadas en el examen
		- Cadena de custodia
- Examen
	- Preparación del escenario de análisis
		- HARDWARE
			- Bloqueadores de escritura
			- Dispositivos de almacenamiento
			- Dispositivos con software
		- SOFTWARE
			- Suites con herramientas de extracción y análisis
	- Análisis
		- Crear la documentación paralela del análisis
		- Fecha y hora del inicio del examen
		- Estado del teléfono
		- Herramientas usadas
		- Datos
		- Línea de tiempo
		- Conclusiones

**Tipos de adquisición**
Android rooting - android
Jailbreaking - IOS

Adquisición lógica y física

## SO en moviles
**Problemas técnicos**

- HASH
- Root
	- Deshabilitado por defecto
	- No acceso por x razones
	- Contaminar pruebas
	- Teléfono inservible
	- Perder garantía

#### Android
- Desarrollado por Google
- Basado en Linux
- Diversidad 
	- Versiones
	- Hardware
- Rooting
- Encriptación en la memoria interna
##### Arquitectura

- Aplicaciones
- Framework de app
- Entorno de ejecución de Android (ART)
- Bibliotecas nativas
- Núcleo Linux

**Servicios esenciales**
- Telephony manager
- Location Manager
- Activity Manager
- Windows Manager
- Resource Manager

**Procesos importantes**

- Zygote
	- Crea nuevos procesos para las aplicaciones
- Dalvik
	- Máquina virtual que ejecuta las aplicaciones de Android
	- Tecnología JIT
	- Reemplazado por ART
	- .odx
		- Comprimido de .apk

##### IOS

- Desarrollado por Apple 
- Basado en Unix

**Características**
- Seguridad
	- Touch ID - Face ID
	- Jailbreak
- Adquisición de datos
	- Física - interfaz de conexion
	- Lógica - copia de seguridad
- Análisis de datos
	- Logs
	- Archivos de aplicaciones
	- Evidencia volátil

**Arquitectura**
- Núcleo
- Servicios
- Frameworks
- Aplicaciones

**Servicios esenciales**
- Springboard
- WindowServer
- Ulkit
- Core data
- Media player
- Webkit

##### Windows Phone
- Móvil desarrollado por Microsoft y con el SO Windows Mobile


## Extracción de evidencias

- Chip off
- JTAG
- Físico
	- Unidades de trabajo de 10K
	- Celebrity

- Sistema de archivos
	- A partir de x momento ya no podemos acceder a la información
		- Bases de datos de whas
		- Ni acceder a archivos eliminados, solo si están ocultos
- Lógico
	- Extracción que podemos hacer cuando conectamos un cable a nuestro móvil y capturamos su información



Cuanto más abajo vamos menos información técnica necesitamos
y cuanto mas arriba los métodos.



### Extracción lógica
Extracción manual que realizamos al conectar un cable al móvil

Permite seleccionar
- Archivos
- Mensajes de texto
- Historial de navegación
- Datos de apps

**Software**
Android
- Andriller
- Cellebrite
IOS
- Oxigen Forensic detective

#### Sistema de archivos
El movil cuneta con un disco duro, SO, directorios archivos etc

Hay una parte de este Sistema de archivos que no es accesible

- Directorios con permisos de root 
- Archivos eliminados, los ocultos si se pueden ver

### Extracción física

También llamada Volcado hexadecimal
Se necesita
- Estación forense
- Privilegios root
Formas de realizarla
- A través del bootlander
- Recuperación personalizada
	- Se crea una partición recovery, permitiéndonos acceder a la extracción física
- A través de la herramienta ADB

### JTAG

Se usa para la reprogramación del firewall del dispositivo para forzar al procesador a acceder a la información saltándose root
Nos sirve para acceder a dispositivos no recuperables pero que conserven la memoria.

**Software**
- ChipWhisperer
- JTAGulator
- U-Boot

### Chip off

Se extrae toda la información desde el chip de memoria.
Es el método más complejo por lo que es el último recurso.
Se realiza en 
- Móviles con So dañado
- Necesidad de extraer datos eliminados / encriptados
Hay que desoldar el chip (aplicar calor) y se puede romper el chip, por lo que adiós evidencias.


Podemos acceder a todo tipo de información

## Análisis de evidencias
 
**Lugares de almacenamiento**
- SIM
- Tarjeta SD
- Memoria interna

**Perspectiva de analisis**
- Análisis de archivos
	- Archivos de sistemas
	- Registros del sistema
- Análisis de aplicaciones
	- Aplicaciones instaladas
- Análisis de red
	- Llamadas
	- Mensajes
	- Conexiones wifi
- Análisis de malware
- Análisis de herramientas de hacking
	- Rastros dejados por software malicioso
- Análisis de elementos encriptados

**Otros elementos a tener en cuenta**
Números de teléfonos empleados
Cuentas de correo configuradas
Registros de
- Llamadas
- Mensajes
- GPS
- Correos
- Contacto
- Historial de navegación
Metadatos
Datos de pulseras (como la mia)
Encendidos y apagados del dispositivo
Estudio de las aplicaciones instaladas


### Android
**Pasos**
- Autorizacion para examinar el movil
- Información a extraer
- Medios de almacenamiento
- Modo avión
- Opciones de desarrollador
- Activar depuración

**Herramientas**
- ADB -
- Santoku - .
- Avilla Forensics - 
- Andriller - 
- Cellebrite UFED -
- Forensic  - 
- MobilEdit

### IoS
**Pasos**
- Autorizacion para examinar el movil
- Información a extraer
- Medios de almacenamiento
- Modo avion
- iTunes -> Copia de seguridad

**Herramientas**

- iFUNBox
- iBackup Viewer
- Reincubate backup Extractor 


### Whatsapp

Los datos solo se guardan en el emisor y receptor
En el proceso de enviar, los mensajes se guardaran por un corto periodo de tiempo en el servidor de whatsapp
Al entregar los mensajes, se borran del servidor.

Desde el 2016 whatsapp realiza una encriptación de clave asimétrica.
Ni siquiera el servidor de whatsapp tiene acceso a los mensajes que se guardan.

Estos mensajes se guardan en 2 sitios:


#### Base de datos en android

**Parte publica**
- /sdcard/whatsapp
**Parte privada**
- /data/data/com.whatsapp

#### Base de datos en IoS

App groups /AppDomainGroup-group.net.whatsapp.Whatsapp.share/ChatStorage.sqlite

**Herramientas**
- Whatsapp key / db extractor
- Wacrypt

