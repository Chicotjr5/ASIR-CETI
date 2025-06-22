## INTRODUCCIÓN

### ¿QUE ES EL ANÁLISIS FORENSE?

Conjunto de procedimientos de recopilación y análisis de evidencias que se realizan con el fin de responder a un incidente relacionado con la seguridad informática que deben servir como pruebas ante un tribunal.

Se pretende responder a las 5 WH
- WHEN
- WHAT
- WHO
- WHERE
- WHY
- HOW

### ANÁLISIS FORENSE

Principio de Locard
Principio de indeterminación de Heisenberg
Principio de navajas de Ockham

#### Características del análisis forense

- **Que sea**
	- Verificable
	- Reproducible
	- Documentado
	- Independiente
	  
- **Respetar CIDAN**
	- Siendo la integridad el principio más importante

#### Tipos de Incidentes

- Acceso a un equipo
- DoS
- Rastreo a una red
- Borrado de datos
- MiTM
- Fraudes
	- Tarjetas de crédito, correos

#### Conceptos del análisis forense

- **Crimen**
	- Acto penalizado por la sociedad
- **Delito**
	- Acto penalizado establecido por las leyes de un estado
- **Ciberdelincuente**
	- Persona que usa medios tecnológicos para cometer un delito
		- Hacktivista
		- Hacker
		- Ciberterroristas
- **Cibercrimen**
	- Delito grave realizado a nivel informático o por medios tecnológicos
		- Actividad criminal
			- Atacar equipos informáticos
		- Actividad delictiva
			- A partir de dispositivos informáticos se cometen otros delitos, siendo la tecnología un medio.
			  
- **Forense**
	- Aquella persona encargada de recopilar pruebas y evidencias sobre un 
	  ataque informático para ver como se ha realizado
- **Evidencia digital**
	- Información digital que nos sirve como prueba para ver como se ha realizado u delito

#### Ramas del análisis forense

- Ordenadores
- Red
- Móviles
- Vídeo / Audio

#### Metodología de un análisis forense

- Observar
- Extraer información
- Realizar un planteamiento de que ha pasado
- Crear una hipótesis
- Obtener conclusiones

Algunas organizaciones importantes que desarrollan estos conceptos son:
- AENOR
- UNE
- GDT
- BIT

#### Enfoques

- Incidentes de ciberseguridad relacionado con la ciberdelincuencia
	- Investigación corporativa
- Delitos
	- Investigación criminal

#### Regulación
- Nacional
- Internacional
- Estándares
	- RFC 3227
	- UNE-EN ISO/IEC 27037
	- UNE-EN ISO/IEC 27041
	- UNE 71505
	- UNE 71506

#### Escenario forense

Antes de realizar un análisis forense, prácticas con entornos no reales

**Cosas a tener en cuenta**
-  Nº de sistemas afectados y gravedad
- Tiempo del que disponemos
- Copias a realizar
- Situar los acontecimientos en el tiempo
- Identificar al atacante

**Fases**
- Preservación
	- Cuidamos las posibles pruebas
	- Extraemos las evidencias volátiles
	  
- Adquirir evidencias no volátiles
  
- Analizar las evidencias
  
-  Ir documentando las acciones realizadas en análisis forense
  
- Presentar toda la documentación



#### EVIDENCIAS DIGITALES

A la hora de realizar un análisis forense, hay que recoger todas las pruebas importantes en un ámbito tecnológico.

##### Principios
- Privacidad
- Cumplir con la ley
##### Fuentes de evidencias digitales
- PC
- IoT
- Móviles

##### Características
- Volátil
	- La información puede cambiar
	  
- Anónima
	- No se puede identificar de donde viene la evidencia
	  
- Duplicable
	- Se pueden hacer copias de la evidencia
	  
- Editable
	- Si se puede editar o no
	  
- Eliminable
	- Si se puede eliminar o no
	  
##### Tipos de evidencias
- Física
	- Dispositivos capaces de guardar información
	- RAM, USB, SSD
- Lógica
	- Documentos, fotos, videos etc

##### Consideraciones legales

- Relevancia
	- La relación que existe entre lo que investigamos y los hechos 
	  
- Confiabilidad
	- Que la evidencia sea légitima
	  
- Suficiencia
	- Que las evidencias sean capaces de demostrar las conclusiones a las que hemos llegado
	  
- Identificación
	- Identificar la evidencia, por medio de un HASH o un nombre
	  
- Recolección 
	- Con que herramientas hemos recolectado las evidencias
	  
- Preservación
	- Mantener la evidencia en un estado inalterable

##### Registro de evidencias digitales

A la hora de recoger cada una de las evidencias digitales que vamos recopilando, deberemos de registrarlo todo en u documento.

En este documento se guardará
- Nombre
- Modelo
- Nº de serie
- Técnico responsable
- Descripción
- Propietario
- Lugar de recogida
- Fecha y hora
- HASH
##### Cadena de custodia
Es un procedimiento controlado que tiene como fin controlar por quienes ha pasado una evidencia, cuando lo ha hecho, donde lo ha hecho etc

###### Características
- Donde, cuando y quien 
	- Descubrió y recolecto la evidencia
	- Manejo la evidencia
	- Custodia la evidencia
- 
###### Firma digital
Para que una firma digital de una evidencia sea válida, ha de tener 1 único hash

**Como se realiza**
Con diferentes herramientas online o programas descargables

O con comandos
- Get-FileHash .\Hash.txt -Algorithm SHA256 > fichero.txt
- certutil -hashfile .\fichero.txt SHA256 > hash.txt

**Detalles del hash**
- Fecha
- Persona
- HASH anterior
- HASH posterior
- Comentario


##### Recolección de evidencias
Además de las propias evidencias, se recopilan:
- Datos que identifican el estado del sistema
	- Conexiones de red
	- Procesos
- Logs
Bolsas antiestaticas

## PRIMERA INTERVENCIÓN

Al llegar al lugar de los hechos, hemos de asegurar el área y evitar que cualquier persona ajena intervenga.

También es importante el uso de guantes 

### Toma de datos 

#### Del contexto de la situación

Deberemos tomar fotos de 
- Dispositivos de trabajo
- Pantallas
- Realiza un dibujo de la situación actual

#### Decidir que datos se van a tomar
Extraer toda la información que se pueda de los equipos afectados, que estén encendidos.

#### Otras acciones

Anotar hora y fecha de los equipos informáticos
Decidir si quitamos o no los cables de red

#### Documentación

- Informe pericial + anexos
- Conclusiones

### Equipos y tipos de análisis forense

#### Equipos

**DEFR**
- Digital Evidence First Responser
- Realizan la recogida de la información
- Las envia a un labpratorio

**DES**
- Digital Evidence Specialist
- Realiza el análisis de esas evidencias para llegar a más conclusiones

### Laboratorio

#### Hardware forense

Son aquellos dispositivos que tiene la capacidad de acceso a todos los soportes y tengan elementos que nos permitan extraer datos de los dispositivos afectados.

Permiten realizar copias idénticas de los datos de los dispositivos.

#### Software forense

Herramientas que nos permiten
- Extraer datos
- Generar y verificar hash
- Clasificar los datos obtenidos
- Recuperar particiones, ficheros, directorios etc


## ELEMENTOS VOLÁTILES

### Volatilidad de los datos

Periodo de tiempo en el que los datos estarán accesibles en el equipo
Son los primeros datos a recoger

### Orden de volatilidad
1. Registros y caché
   
2. Tablas de enrutamiento
   Cache ARP
   RAM
   
3. Ficheros temporales del sistema
   Conexiones de red
   Hora del sistema
   Ficheros abiertos
   
4. Archivos abiertos
   - hiberfis.sys
	   - Al pasar al modo hibernación, los datos del ordenador se pasan a ese fichero.
	   - Al volver al modo normal, el sistema carga los datos de ese fichero.
	     
- pagfile.sys
	- Cuando la RAM no puede procesar toda la información, la guarda en el disco duro y va accediendo a ella.

La extracción de estos datos en caliente se llama "**live triage**"

### ¿Que se necesita?

- Dispositivo externo para guardar toda la información y las herramientas
- Calcular hashes de las pruebas / ficheros
- Usar herramienas forenses
- Realizar un informe con herramientas usadas
- Realizar una imagen del disco
- Apagar el equipo tirando del cable
	- Evitando así, técnicas anti-forenses

### Herramientas

**Nativas**
- netstat
- nbstat
- ipconfig
- route
- regedit

**Terceros**
- Suite sysinternal
- Dumplt
- Ram capturer
- Memdump
- Dumpzilla
- Registry recon

## ELEMENTOS NO VOLÁTILES

Pasos para capturar elementos no volátiles
- Preparar una MV con el mismo SO que el sistema afectado.
- Restaurar la imagen del sistema afectado en la MV
Así podemos restaurar esta información de una forma mas tranquila, además de que podemos ejecutar malware sin miedo

El acceso a la información puede ser
- A nivel de ficheros
- A nivel de bloque

**Otros datos no volátiles**
- logs
- ficheros
- mail

**Formatos de datos**
- RAW - Compresión + metadatos
- AFF - Compresión + metadatos
- EO1 - Divide el fichero en varios ficheros
- DD
- AD1

##### File Carving
Técnica de recuperación de datos, donde se accede a esta en base a la disposición de los bloques.
Sirve para recuperar archivos borrados o cuando hay daños en el sistema de ficheros

Se va a intentar restaurar los ficheros en base a
- Cabecera
- Pies
debido a que en estos, se suele especificar el formato del archivo

Ya con todos los fragmentos de información recuperados, ensambla la información y recupera el archivo

**Herramientas**
- **Recuperar archivos**
	- Photorec
	- Scapel
	- Foremost

- **Redes**
	- nmap
	- Wireshark
	- Snort - IDS

- **Tratamiento de discos**
	- Dcdd3
	- Mount Manager
	- Guymager

- **Volcados y recuperación de información**
	- Volatility
	- FTK Imager
	- Recuve Free
	- EnCase
	- ExitFool
	- Foca Free
	- X1 Social Discovery

- **Análisis de aplicaciones y archivos** 
	- OllyDbg
	- OffficeMalScanner
	- Radare
	- Process Explorer
	- PDFStreamDumper

- **Frameworks**
	- OsForensics
	- DEFT Linux
	- Autopsy
	
- **Distros**
	- Kali
	- TSURUGI
	- CAINE

## LÍNEA TEMPORAL

El primer caso a llevar a cabo cuando se va a realizar un análisis debe ser crear una línea de tiempo.

Para crearla usaremos los **tiempos MACD**
- Modify
- Access
- Create
- Delete

Con la línea de tiempo podemos ubicar los acontecimientos que han tenido lugar en un equipo:
- Secuencias de acciones en el sistema
- Identificación de los puntos de entrada
- Cronología de eventos relevantes
- Marcas de tiempo
- Recopilación de datos de diferentes fuentes
- Últimos programas instalados

Algunos datos / cambios el sistema no se encontrarán en sitios visibles, sino que estarán en archivos temporales o mezcladas en archivos / librerías del SO

Todos estos datos se convierten a un formato estándar

**Herramientas para el análisis del tiempo**
- Sleuth Kit
	- Creación y análisis de línea de tiempo
- Volatility
	- Información y líneas de tiempo
- RegRipper
	- Registro de Windows

**Artefactos forenses**
- Windows
	- Registro de eventos del 
		- Sistema
		- Acceso
		- Seguridad
		- Aplicación
-  Linux
	- Logs del sistema -> /var/log
	- Historias de comandos de la shell -> /.bash_history
	- Archivos de registro de acceso al sistema -> /var/log wtmp
	- Registro de auditoría -> Auditd
	- Registro de acceso al sistema de archivos
	- Registros de acceso a la red
	- Registros de eventos de seguridad

![[Pasted image 20250115194007.png]]


## DISPOSITIVOS DE ALMACENAMIENTO

#### Medios físicos

Son los dispositivos que son capaces de almacenar y recuperar información digital 

**Tecnologías**
- Electrónica - USB, SSD
- Magnética - HDD
- Óptica - DVD

#### RAM
Fuente de información volátil

##### Gestión de la memoria RAM

Una parte de la RAM es para el sistema y el resto...

**Paginación**
- Punto de vista físico
- Los programas se dividen en páginas
- La memoria se divide en bloques
- Cuando no hay bloques libres se usa la memoria virtual

**Segmentación**
- Punto de vista lógico
- Un segmento es una unidad lógica de la memoria y puede ser un
	- Programa
	- Función
	- Método
	- Objeto
	- Pila

**Diferencias Windows y Linux**
- Windows > 8
	- Se asignaban estados de memoria como "suspendido"
	  Esto lo que hacia era que todas las páginas en 2º/3º plano se pasaban a estado de suspensión y cuando el usuario quería volver a usarlas, se usaba la memoria virtual para obtener de nuevo esas páginas.  
	  
- Linux
	- Usa una tabla con 3 niveles 
		- Directorio de páginas
		- Directorio intermedio de páginas
		- Tabla de páginas
	- Usa un sistema de "amigos" que usan un "reloj" que mide la "edad" de las páginas y lo que hace es modificar la edad de esas páginas en función del nº de usos / procesos que van teniendo, siendo las más viejas las que menos uso tienen.

#### Discos Duros HDD

- La información se guarda por la orientación de las partículas concéntricas
- La pista más externa es la 0
- En cada lectura/escritura se lee un mínimo de información, que suele ser un bloque/sector - 512B
- Si existe un espacio libre, este puede ser ocupado por malware - slack space

#### Discos SSD

- Usan puertas lógicas (electrónicas) para almacenar datos digitales.
- El 1º bloque también es de 512B
- Debido a la vida limitada de las celdas **flash** realiza el **trim** que es un proceso en el cual se guarda información almacenada en celdas no usadas.
	- Se eliminan datos de forma definitiva
	- Modifica el contenido de una imagen bit a bit, por lo que el hash del disco cambia

#### Discos ópticos

- La superficie se modifica de forma permanente por láser
- En raros casos se permite la sobreescritura
- A efectos forenses, nos la suda

#### Cintas magnéticas

- Usan células magnéticas para almacenar
- El acceso a la información e aleatorio
- A efectos forenses, nos la suda

### Interfaces físicas de discos HDD / SSD

- ATA/IDE
- SATA
- SCSI
- SAS - SERIAL SCSI
- M.2
- PCIe  NVME
- USB 3.0

## PARTICINADO DE UN DISCO

Las funciones de una tabla de particiones son:
- Disponer de sistemas de ficheros
- Separar datos del usuario de binarios
- Flexibilizar el reparto del espacio
- Administrar la seguridad

### MBR - Master Boot Record

Es el sistema tradicional, el cual reserva los 1º 512b (pista 0 sector 1) para guardar la tabla de particiones.

**Tabla de particiones de la MBR**
- Límite de 4 particiones.
	- 4 primarias
	- 3 primarias 1 extendida
		- Dentro de la extendida se pueden crear más particiones lógicas

Admite una firma de 32b para identificar el hardware
Contiene el MBC - Master Boot Code cuya función es identificar el 1º cluster de la partición activa y cargar el boot loader del SO si existe
Para obtenerlo en Linux
- dd if /dev/sda of mbr.bak bs=512 count=1

![[Pasted image 20250121190256.png]]

### GPT - Global Unique Identifier Partition Table
La GPT sustituye a la MBR y elimina las restricciones de la MBR con la tabla de particiones
Ocupa un tamaño de 32 bloques de 512B - 16KB
Contiene un MBR de protección para equipos antiguos

![[Pasted image 20250121190652.png]]

#### GUID - Globar Unique Identifier

Identificador único de objetos (usuarios, librerías, discos etc)
EFI define así la GPT y cada partición se identifica con cadenas de 128b
- {936DA01F 9ABD 4d9d 80C7 02AF85C822A8} 


### Formas de arranque

#### BIOS
La BIOS arranca la MBR, la cual busca las particiones disponibles para arrancar.
Al encontrarlas, carga el Boot Loader del SO
#### UEFI
Inicializa el el hardware y encuentra el gestor de arranque
La EFI carga y entrega el control al kernel del SO.
El kernel inicializa los recursos necesarios para arrancar el SO.

![[Pasted image 20250121191316.png]]

### Sistema de ficheros

Conjunto de estructuras de datos y algoritmos que determinan donde y como se almacena la información.

Esta organización permite
- Asignar sectores a bloques lógicos
- Asignar clústeres a ficheros
- Clústeres en uso o disponibles
- Contenido del sistema de ficheros

Otras características son:
- Journalist el cual registra las operaciones realizadas antes de llevarlas a cabo
- ACL
- Cuotas de usuario

A la hora de extraer evidencias:
![[Pasted image 20250121192337.png]]


#### Windows

- FAT 12,16,32
- NTFS
	- Contiene archivos de metadatos, con información de archivos y carpetas.
	- $boot corresponde al sector de partición del inicio
	- Incluye características de seguridad
	- Puede ser usado por Linux y MAC
	- Existe una MFT (Master File Table) por cada volumen
		- Esta MFT es una BD estructurada que almacena la información para poder recuperar los archivos de una partición
			- Cada objeto tiene un registro de archivo dentro de la MFT
			- cada registro tiene atributos con metadatos y otros datos del archivo
		- Se reserva un 12,5% del espacio del disco para la MFT

#### Linux
- EXT 2,3,4 ReiserFS, Reiser4, ZFS, JFS, XFS, BTRFS
- Una entrada de directorio consiste en el nombre de un archivo y un inodo
- Un superbloque (1º bloque del disco) contiene metadatos del sistema de archivos y este es tan importante que se almacenan copias del mismo en el disco para no perderlo.
- Un inodo contiene los metadatos del archivo y una lista de direcciones de bloques de datos.
- ReiserFS fue el 1º sistema de archivos de Linux en implementar el Journalist.
- Los otros sistemas son usados para diferentes versiones y presentan diferentes características.

#### macOS
- HFS, HFS+, APFS
- APFS se implemento a partir de macOS 10.13 (Sep 2017)
	- Para solucionar problemas de Kernel
	- Para soportar SSD y memorias flash
	- Junto con HFS+ usan el comando TRIM para mejorar el rendimiento de las operaciones.



## HERRAMIENTAS

#### ELEMENTOS VOLATILES

##### NATIVAS
- nbstat
- netstat
- ip/ifconfig
- route
- regedit
##### TERCEROS
- Memdump
- dumpzilla
- ram capturer
- dumpit

#### Elementos no volátiles

- **Recuperar archivos**
	- Photorec
	- Scapel
	- Foremost

- **Redes**
	- nmap
	- Wireshark
	- Snort - IDS

- **Tratamiento de discos**
	- Dcdd3
	- Mount Manager
	- Guymager

- **Volcados y recuperación de información**
	- Volatility
	- FTK Imager
	- Recuve Free
	- EnCase
	- ExitFool
	- Foca Free
	- X1 Social Discovery

- **Análisis de aplicaciones y archivos** 
	- OllyDbg
	- OffficeMalScanner
	- Radare
	- Process Explorer
	- PDFStreamDumper

- **Frameworks**
	- OsForensics
	- DEFT Linux
	- Autopsy
	
- **Distros**
	- Kali
	- TSURUGI
	- CAINE

#### Herramientas para el análisis del tiempo
- Sleuth Kit
	- Creación y análisis de línea de tiempo
- Volatility
	- Información y líneas de tiempo
- RegRipper
	- Registro de Windows


## Prácticas

### Herramientas/Comandos

#### Windows
- PsService
- pslist
- psloggedon
- psinfo
- promisdetect
- arp - a
- nslookup 
- FTP IMAGER
- fsinfo ntfsinfo C:
	- Obtener MFT
- rifiuti-vista.exe
- psloglist
- schtasks
- lnk_parser_cmd
- Browsinghistoryview
- webbrowserpassview
- inside clipboard
- doskey
- netpass
- mailpassview
- 
#### Linux

- LiME
	- Adquirir una imagen completa de la memoria del sistema en tiempo real.
	- Archivos .ko
	- insmod lime.ko Path=/media/usuario/memdump.raw format=raw
- ps
- top
- losf -i
- lastlog
- dd if=/proc/swap 
	- Obtener archivo de paginacion
- dsmeg
- uname -a
- fdisk -l
- lsblk
- df -h
