## IoT

### Introducción

- Es hardware conectado a internet
	- Electrodomésticos inteligentes
	- Medidor de pulsaciones
	- Asistentes en hogares inteligentes
	- Drones
	- Sistemas de vigilancia
	- Tesla
- Se gestiona la información de manera constante, por lo que pueden ser fuentes de evidencias

Como en todo AF habrá que realizar los mismos pasos que en un AF tradicional
- Capturar evidencias, afectando lo menos posible al elemento original
- Analizarlas
- Documentar
	- Linea de tiempo
	-  Cadena de custodia
	- Conclusiones

### Protocolo de análisis en IoT
No hay un protocolo como tal, ya que depende mucho del dispositivo a analizar.
Lo único común a otros análisis forense, es que 
- De menos a mas invasivo
	- Extraer la memoria de un móvil - poco invasivo
	- Chip off - mas invasivo
- Se documentan procesos

### Tecnologías de IoT
- Sensores 
- Conectividad entre dispositivos, que usan múltiples protocolos de red y facilitan la interconexión de los dispositivos
- Nube
- IA
- Aprendizaje automático

**Ataques más habituales**
- Ataque físico
- MiTM
- Ransom
- Botnet
- Fuerza bruta
- DDoS
### Tipos de dispositivos IoT

**Según ENISA**
- Capacidad de procesamiento
	- Limitados - Funciones básicas - Sensor
	- Amplios - Funciones complejas - Router inteligente - Cámara
- Sensibilidad de los datos
	- Confidenciales
		- Cámara
		- Dispositivos médicos
	- No confidenciales
		- Termostato
		- Bombillas inteligente
- Impacto potencial de fallo
	- Bajo impacto - los fallos no causan daños graves
		- Aspiradora
	- Alto impacto - los fallos causan daños graves
		- Marcapasos

**Según CCN - CERT**
- Tipo de dispositivo
- Sector de uso del dispositivo
	- Hogares inteligentes
	- Ciudades inteligentes
	- Industria
- Sensibilidad de los datos
- Impacto potencial de una vulnerabilidad
	- Niveles de riesgo
		- Bajo
		- Medio
		- Alto

**Ambito de aplicación de IoT**
- IIoT
	- Internet de las cosas en la industria (4.0)
- BIoT
	- Blockchain e IoT
- HIoT
	- IoT en salud

**Industria 4.0**
- Es la convergencia entre IoT, big data y robótica
- Se conectan múltiples dispositivos y sensores que recopilan datos en tiempo real de máquinas, procesos, operaciones

**SCADA**
- Los sistemas SCADA son elemento principal de la industria 4.0
- Supervisan, controlan y adquieren datos de procesos industriales
- Usa los datos IoT para analizar y optimizar la eficiencia y productividad de procesos industriales
- Sectores
	- Fabricación
	- Energía
	- Petróleo
	- Transporte
	- Ganadería

#### Protocolos de red

- Wifi - Red inalámbrica de corto alcance
- Bluetooth - Protocolo de corto alcance
- Zigbee - IoT de baja potencia
- Z-Wave - Red inalámbrica de corto alcance para IoT
- LPWAN - Transmisión a largas distancias
- MQTT - Dispositivos IoT y comunicación de servidores en la nube
- HTTP - Transferencia de hipertexto
- CoAP - Protocolo para dispositivos IoT para recursos limitados

### Preparación del escenario del análisis

A tener en cuenta
- Características del dispositivo
- Forma de interconexión de esos dispositivos

Diferencias con otros AF
- Heterogeneidad
- Identificación de dispositivos
- Multiples dispositivos
- Multiples fabricantes
- Multiples formas de funcionamiento
- Topología de red
- Integridad de las herramientas
- Grandes volúmenes de datos
- Ubicación de los datos
- Formato de los datos 


**Recomendaciones ITU**
No hay ningún protocolo para realizar AF en IoT
- Son estándares tecnicos desarrollados por la ITU a nivel mundial
- Recomendaciones adoptadas por la industria de las telecomunicaciones
- Voluntarias 

**Tareas de preparación del escenario**
- Preservación del escenario
	- Aislar el dispositivo IoT
	- Documentar el estado inicial
	- Preservar la escena
- Recopilación de evidencia
	- Identificar IoT
	- Seleccionar el método de adquisición
	- Garantizar la integridad de la evidencia
- Análisis de la evidencia
	- Selección de herramientas forenses
	- Análisis de datos
	- Correlación de evidencia


### Adquirir y extraer las evidencias

**Desafios técnicos**
- Consentimiento para acceder a los datos almacenados en los dispositivos IoT
- Transparencia - Informar a las personas sobre como se van a recopilar y tratar los datos
- Privacidad - 

**Metodologías del AF en IoT**
- DFR-IoT
	- Guía general de investigación forense en IoT
- IoT - FCT
	- Clasificación de capacidades forenses para dispositivos y sistemas IoT
- F-DRIP
	- Metodología e investigación forense IoT
- GAFIoT
	- Recomendaciones a la hora de realizar la investigación forense IoT

#### Herramientas para el AF en IoT

- Análisis de firmware
	- Nos permiten extraer y analizar el firmware del IoT
	- Podemos analziar el codigo del Iot y el del fabricante para ver si hay diferencias
	- Beenwalk ?
- Análisis de red
	- Capturan el trafico d red que se manda entre los IoT
	- Wireshark
- Adquisición de imágenes
	- FTK --
	- Cellebrite
- Análisis de archivos
	- Autopsy
	- 
- De cronología
	- Linea de tiempo
	- Registros de actividad

###### Herramientas de Analisis de Fimware
**Métodos**
- Volcado físico - Conectar un elemento a la memoria y extraer el firmware
- Extracción de software
- Descompilación

**Evidencias a recolectar**
- Registros de firewall
- Capturas de tráfico
- Metadatos de la red

**Otra información**
- Registros de sistema
- Datos de sensores
- Registros de apps


#### Analisis de evidencias

**Analisis estatico**
- Desensambladores
- Analziadores del código estático
	- Herramientas que revisan si el código es malicioso o no
- Herramientas de analisis de flujo de datos
	- Trazan rutas sobre el flujo de datos
- Análisis de código fuente publicado
	- Se compara el firmware publicado por el fabricante con el del dispositivo

**Analisis dinámico**
- Emuladores
	- Lit android studio
	- Entorno seguro donde ejecutar el firmware y ver su comportamiento
- Depuradores
- Sandboxes

**Análisis de red**
- Sniffer
- Herraminetas de analisis de protocolo
- IDS

**Correlación de los datos**
- Se analizara y relacionara la información que se ha obtenido para identificar cualquier tipo de patrón.
- Para esto, se suelen usar herramientas de inteligencia


#### Herramientas software para el análisis forense en IoT

No existe una herramienta única e ideal para IOT, pero se pueden usar las siguientes:

- Splunk
	- Busca, analiza y visualiza datos generados por maquinas a gran escala
- Tableau
	- Visualización de datos que permite gráficos interactivos
	- Como grafana o Kibana
- Nessus
	- Escaner de vulnerabilidades en dispositivos y elementos de la red
- Nmap
	- Escaner de red
	- Identificación de puertos abiertos etc
- Shodan
	- Motor de búsqueda de dispositivos IoT


### Análisis de elementos IOT

#### Dron
- MicroSD interna
	- Se encuentra dentro del dron
	- Guarda
		- SO
		- Telemetría
- MicroSD externa
	- Es mas accesible 
	- Guarda
		- Fotos y videos + metadatos
		- GPS

#### Enchufes inteligentes
Se analizara
- Trafico entre el móvil y el enchufe
- La aplicación del móvil para controlar el enchufe
- El dispositivo a través de Nmap para ver sus puertos y las rutas
- admin.htm y firmware.htm

#### Smartwatch
Hay 2 tipos, esta el que le envía la información a la nube y otro que le envía la información a la app del móvil y es esta quien lo manda a la nube

En el caso del primero, se analizara el reloj, ya que tiene todos los datos y en el caso del 2º, se analizara el móvil

#### Dreambox
Receptores de TV digital por cable y terrestres
A través de un navegador se puede acceder a los mismos sin credenciales
Estos dispositivos no vienen con tanta seguridad por defecto y ha de ser el usuario quien los configure

#### Ruter
Se realizara un nmap para ver los servicios y puertos abiertos del dispositivo

**Comandos**
- show info
- show cpu
- show mem
- show arp
- show dhcp status
- show nat entries
- show log

### Técnicas de AF físicas

#### JTAG/UART
JTAG es un puerto el cual nos permite dumpear el firmware del dispositivo a una memoria

#### Sombrero
Se abre el dispositivo y se analizan los chips integrados, de los cuales hay que identificar cual es una memoria.
La tecnica del sombrero consiste en poner encima del chip un lector que hace contacto y permite la extraccion de información.

#### Chip-off

Se extrae el chip de memoria para analizarlo, desoldandolo y acoplandolo a un lector de memoria para extraer su información.
Es facil de extraer la información pero dificil de realziar




