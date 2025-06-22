## Auditorías de incidentes de ciberseguridad

### Introducción

Un incidente de ciberseguridad se define como una situación en la que no se cumple la política de seguridad

**Fases**
- Preparación
	- Reúne las actividades proactivas que permiten una mejor atención y respuesta ante un incidente
		- Procedimientos
		- Herramientas
		- Entrenamiento
- Identificación
	- Capacidad de identificar un incidente
		- Monitorización
		- Recolección de información
- Contención
	- Medidas para limitar y aislar el impacto del incidente sobre los recursos / información de la organización
- Solución
	- Medidas para limitar / aislar el impacto del incidente sobre los recursos de la organización.
- Recuperación
	- Procedimientos para volver a un estado normal y estable
- Actividades post-incidentes
	- Identificar e implementar medidas de mejora
		- Sistema de copias de seguridad
		- Auditorías

Las auditorías tienen como finalidad conocer si los sistemas de información de la organización cumplen con los requisitos de seguridad o si hay algún error, debilidad o algún punto de mejora

Estas auditorías se han de planificar de forma periódica y nunca ha de pasar más de 2 años entre una y otra.

### Taxonomía de incidentes de seguridad

#### Contenido abusivo
- **SPAM**
	- Correo electrónico masivo no solicitado
- **Delito de odio**
	- Contenido difamatorio o discriminatorio
- **CP, contenido sexual o violento inadecuado**
	- Material que represente de manera visual contenido relacionado con cp, apología a la violencia etc.

#### Contenido dañino
- **Sistema infectado**
	- Sistema infectado con malware
- **Servidor C&C (Mando y control)**
	- Conexión con el C&C a través de malware o sistemas infectados
- **Distribución de malware**
- **Configuración de malware**
- **Malware dominio DGA**
	- Nombre de dominio generado mediante DGA empleado por malware para contactar con un servidor C&C

#### Obtención de información
- **Escaneo de redes - scanning**
	- Envío de paquetes a un sistema para descubrir debilidades o cualquier tipo de información útil para un ataque
- **Análisis de paquetes - sniffing**
	- Observación del tráfico de redes
- **Ingeniería social**
	- Recopilación de información personal sin el uso de tecnología.

#### Intento de intrusión
- **Explotación de vulnerabilidades conocidas**
	- Comprometer un sistema / interrumpir un servicio explotando vulnerabilidades conocidas
- **Intento de acceso con vulneración de credenciales**
- **Ataque desconocido**
	- Ataque usando un exploit desconocido

#### Intrusión
- **Compromiso de cuenta con privilegios**
- **Compromiso de una cuenta sin privilegios**
- **Compromiso de aplicaciones**
	- Comprometer una aplicación mediante la explotación de vulnerabilidades 
- **Robo**
	- Intrusión física

#### Disponibilidad
- **DoS**
- **DDoS**
- **Sabotaje**
	- Sabotaje físisco
- **Interrupciones**
	- Interrupción por otras causas

#### Compromiso de la información
- **Acceso no autorizado a información**
- **Modificación no autorizada de la información**
- **Pérdida de datos**

#### Fraude
- **Uso no autorizado de recursos**
- **Derechos de autor**
- **Suplantación**
- **Phising**

#### Vulnerable
- **Criptografía débil**
- **Amplificador DDoS**
	- Servicios accesibles públicamente que puedan ser empleados para la amplificación de ataques DDoS
- **Servicios con acceso potencial no deseado**
- **Revelación de información**
	- Acceso público a servicios en los que se puede revelar información sensible
- **Sistema vulnerable**

#### Otros
- **Otros**
- **APT**
	- Ataques dirigidos contra organizaciones concretas usando mecanismos muy sofisticados
- **Ciberterrorismo**
- **Daños informáticos PIC**
	- Borrado, dañado, alteración, supresión o inaccesibilidad de datos, programas informáticos, documentos electrónicos de una infraestructura crítica.


### NTLDM
Conjunto de protocolos de seguridad ofrecidos por Microsoft para autenticar la identidad de los usuarios y proteger la integridad y confidencialidad de su actividad.


### Controles herramientas y mecanismos de monitorización, identificación, detección y alerta de incidentes

En nuestra empresa debe existir un plan de contingencia donde se debe reflejar la necesidad de hacer:

**Análisis**
- Documentar acciones realizadas
- Determinar sistemas afectados
- Averiguar vectores de ataque

**Contención**
- Evitar la propagación del accidente
- Restringir accesos desde los equipos comprometidos al resto de sistemas

#### IDS
Detector de intrusiones

Sistema de seguridad que analiza el tráfico de la red buscando posibles incidentes de seguridad
Analiza paquetes e identifica patrones.

Ejemplo - Snort

#### IPS
Prevención de intrusiones

Sistema diseñado para responder automáticamente a posibles incidentes de seguridad tomando medidas:
- Bloquear el tráfico de la red
- Poner en cuarentena los sistemas afectados
- Cerrar conexiones maliciosas

Un elemento que puede funcionar de IDS/IPS es **Suricata**

### Soluciones de ciberseguridad

#### Antifraude
Las soluciones antifraude están destinadas a proteger a los usuarios de ataques de ingeniería social

**Ejemplos**
- Anti-Phising
- Anti-spam
- Filtrado de navegación
- UTM

**Recomendaciones**
- Usar certificados digitales
- Realizar comprobaciones sobre los pedidos
- Concienciar a los empleados
- Detectar posibles copias o usos no autorizados de las marcas

#### Anti-malware
Herramientas destinadas a la protección de sistemas informáticos

**Subcategorías**
- Anti-virus
- Anti-adware
- Anti-spyware

**Recomendaciones**
- Sistemas y aplicaciones actualizados y libres de malware
- Concienciar a los empleados
- Copias de seguridad periódicas

#### Auditoría técnica 
Abarcan desde la revisión hasta la evaluación de la seguridad desde todos los ámbitos técnicos, tecnológicos y organizativos de la seguridad.

**Subcategorías**
- Análisis de log y puertos
- Análisis de vulnerabilidades
- Auditoria de contraseñas
- Auditoría de sistemas y ficheros
- Recuperación de datos
- Testeo de software

**Recomendaciones**
- Herramientas actualizadas
- Sistemas actualizados
- Tener empresas y profesionales especializados que ofrezcan información contrastada sobre la situación actual de la seguridad en la organización / un incidente de ciberseguridad.
- Concienciar a los empleados

#### Certificación normativa

Son herramientas destinadas a facilitar el cumplimiento normativo aplicable en materia de seguridad y la obtención de certificados en esas normativas.

**Subcategorías**
- Sistemas de Gestión de la Seguridad de la Información
- Análisis de riesgos
- Planes y políticas de seguridad
- Normativas de seguridad

**Recomendaciones**
- Desarrollar políticas de seguridad
- Contar con servicios de consultoría previos a la implantación de cualquier herramienta asociada a esta categoría
- Establecer rutinas de gestión de la seguridad y verificar su cumplimiento para minimizar riesgos de seguridad.


## Controles, herramientas y mecanismos de detección e identificación de incidentes


### Security Operations Center SOC

Implementar un SOC es un proceso complejo que implica tener una combinación de hardware, software y procesos bien definidos.

**Requisitos iniciales**
- Hardware
	- Servidores para almacenar log y datos
	- Estaciones de trabajo
	- Dispositivos de red para monitorización
- Software
	- Sistema operativo
		- Kali para estaciones de trabajo
		- Security Onion para servidores de análisis de log

**Herramientas de monitorización**
- Monitorizar la red - Wireshark
- Detectar intrusiones - Snort / Suricata
- Análisis de logs - ELK (ElasticSearch, Logtash, Kibana)

**Gestión de incidentes**
- Implementación de un Sistema de Gestión de Incidentes (SIEM) como **Security Onion**, **Splunk** o **ELK**
- Definición de procesos y procedimientos para la implementación, clasificación, respuesta y recuperación de incidentes de seguridad

**Seguridad perimetral**
- Configurar firewall e IPS
- Usar herramientas de escaneo de vulnerabilidades como **Nessus**

**Capacitación del personal**
- Entrenamiento constante a los analistas de seguridad
- Familiarizarlos con las herramientas y procedimientos del SOC

**Automatización**
- De tareas para mejorar la eficiencia
- Usar scripts y herramientas de automatización para la respuesta a incidentes.

**Colaboración**
- Entre los analistas de seguridad
- Realización de auditorias de seguridad periódicas


**Tipos de eventos a recoger**

- Eventos simples
	- Introducir más de 6 veces unas credenciales incorrectas en un equipo
- Eventos complejos
	- Una serie de incidencias que provengan al mismo tiempo desde el directorio activo 
	- Ataques a un punto de acceso Wifi
	- Ataques a un sistema biométrico

### Reglas Sigma

Formato de firma abierto y genérico creadas por **Florian Roth**.
Son reglas fáciles de definir y permiten describir eventos de registros importantes con el objetivo de mejorar la ciberseguridad.
Permiten a las organizaciones incorporar los métodos de identificación derivados de investigaciones.

Estas reglas se aplican para archivos **Log**

**Situaciones de uso**
- Describir el método de detección en Sigma para su exportación
- Compartir la firma en comunidades de inteligencia de amenazas para aumentar la visibilidad del proyecto y expandir la ciberseguridad.

**Herramientas y aplicaciones Sigma**
- Sigmac
	- Convierte las reglas Sigma en entradas / consultas de los objetivos admitidos
	- Interfaz para el repositorio Sigma que se puede integrar en otros proyectos
- Sigma2MISP
	- Se emplea como plataforma en la que compartir, almacenar y correlacionar indicadores de compromiso (IOCs) de ataques dirigidos para que las organizaciones puedan compartir información sobre diferentes indicadores y malware.
- Evt2Sigma
	- Herramienta que ayuda a crear reglas Sigma
- Sigma2Attack
	- Herramientasd que permite crear un mapa de calor **MITRE ATT & CK** a partir dfel directorio que contenga la regla Sigma

### Reglas Yara

YARA en una herramientas que identifica malware mediante la creación de descripciones que buscan determinadas características permitiendo la detección de patrones específicos en archivos que podrían indicar que el archivo es malicioso.

Este tipo de reglas son para archivos normales.

YARA se puede usar a través de su interfaz de comandos o a través de scripts en Python.


Aunque estas reglas tienen una gran aceptación, todas las organizaciones han de tener en cuenta que estas reglas pueden ser insuficientes.
Los ciberatacantes han desarrollado contramedidas que les permite generar malware lo suficientemente distinto como para que no coincida con las firmas encargadas de detección.


### Threat Hunting

Proceso de búsqueda interactiva y proactiva a través de las redes para detectar y aislar amenazas avanzadas capaces de evadir las medidas y soluciones de seguridad existentes.

#### Características
- Enfoque proactivo 
- No es "respuesta al incidente" pero si va relacionado
  La información que se obtiene proporciona una serie de evidencias que se usarán para establecer nuevos indicadores de ataque y compromiso.
- No reemplaza a otras estrategias como **Threat Detection** pero si las alimenta.



#### Las trazas son valiosas

Para las tareas de Threat Hunting se necesitas información recogida sobre las acciones que han realizado los atacantes.
Puntos calientes de información:
- Huellas
- Ataques fallidos
- Sondas
- Descubrir vulnerabilidades
- Descubrir actividad antes de producirse un ataque


## Controles, herramientas y mecanismos de monitorización, identificación, detección y alerta de incidentes a través de OSINT 

**OSINT** - Hace referencia al conocimiento recopilado a partir de fuentes de acceso público.
Este proceso se realiza antes de la auditoría debido a que proporciona mucha información sobre el objetivo, pudiendo descubrir alguna vulnerabilidad existentes, y por tanto, los vectores de ataque.

Existen 2 tipos de **information gathering** 

- Footprinting
	- Recolectar información del objetivo sin necesidad de interactuar con sus sistemas
- Fingerprinting
	- Recolectar información interactuando directamente con el objetivo.

**Tipos de OSINT**
- HUMINT
- SIGINT
- GEOINT

### HUMINT

Abreviación de **Human Intelligence**
Es toda aquella recolección de datos que realiza un ser humano mediante la investigación, clasificación y análisis de nuevos conocimientos

### SINGINT
Signals intelligence

Técnica de recolección de información que se basa en la interceptación de señales de comunicación y redares para reunir datos de inteligencia.

**Tipos de SINGINT**
- COMINT
	- Tipo de inteligencia basada en el análisis de señales relacionadas con las comunicaciones entre personas
	- Incluye
		- Interceptación de líneas telefónicas
		- Chats
		- Conversaciones presenciales

- ELINT
	- Recolección de información basada en señales eléctricas
	- Se enfoca más en la comunicación entre máquinas

- FISINT
	- Se refiere a la interceptación de señales de instrumentos extranjeros, con el fin de rastrear actividades armamentísticas de otro país

### GEOINT
Geological Intelligence
Abarca todos los aspectos de analiza imágenes geoespaciales.


### Fases del proceso OSINT

**Requisitos**
- Fase en la que se establecen las condiciones que deben satisfacerse para conseguir el objetivo.

**Identificar fuentes de información**
- Consiste en especificar, a partir de los requisitos establecidos, las fuentes de interés.

**Adquisición**
- Se obtiene la información 

**Procesamiento**
- Dar formato a la información recopilada

**Análisis**
- El objetivo es relacionar la información de distintos orígenes buscando patrones que permitan llegar a alguna conclusión significativa

**Presentación de inteligencía**
- Consiste en presentar la información obtenida de una manera eficaz, comprensible y útil

### Problemas 

- Demasiada información recopilada siendo la mayoría inútil / innecesaria
- La información se ha obtenido de fuentes poco fiables (tiktok)

### Herramientas 

**Buscadores**
- Como Google, Bing, Yahoo! que nos permiten consultar toda la información que indexan
- Permiten especificar parámetros concretos para obtener información sensible como credenciales de inicio de sesión, servicios vulnerables, datos personales etc.

#### Buscadores especializados

**SHODAN**
- Permite localizar equipos, webcams, impresoras etc. basándose en la IP, ubicación geográfica, software usado etc.
- Además en algunos casos no solo se pueden localizar equipos, si no tomar control de los mismos.

**MALTEGO**
- Herramienta que recopila información sobre un objetivo y la muestra en forma de grafo permitiéndonos analizar cómodamente las diferentes relaciones entre el objetivo.
- Muy interesante en las fases iniciales de la recopilación de información

#### Herramientas de recolección de metadatos

**FOCA**
- Herramienta gratuita de pentesting para Windows usada para la búsqueda de información contenida en los metadatos de los ficheros
