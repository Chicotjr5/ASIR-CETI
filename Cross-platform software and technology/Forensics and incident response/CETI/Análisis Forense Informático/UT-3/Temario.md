
## Introducción

Infraestructura de servidores de red que nos ofrece una serie de servicios.
Para poder acceder lo haremos desde internet 

### Amenazas

- MiTM
- Ransomware
- DoS - DDoS
- Ataques internos
	- Phising
	- Explotación de vulnerabilidades
	- Mala gestión de credenciales
	- Malas políticas de seguridad 
	- Malware

### Características

Modelo de autoservicio y auto demanda, es el usuario el que decide como usar la nube
(mas recursos, menos, contrata x cosa etc)
Se accede a través de Internet
El proveedor pone x recursos a disposición de los clientes, que no importa su ubicación geográfica
Es latamente escalable


## Modelos de despliegue

#### Nube privada
Uso único por parte de una organización
NO significa que lo puedan usarla otros
La organización es propietaria o un 3º se la ha dado

Ejemplos de quien lo usa:
- Servicios públicos
- Bancos
### Nube comunitaria
Solo la usa la comunidad/es para la que ha sido desarrollado, ya que estas comunidades tienen objetivos comunes

Ejemplos
- Hospitales
- Universidades
### Nube publica
Srevicio de proveedores de terceros, qu eofrecen servicios informaticos
- Alamcenamiento
- Redes
- Servidores
- Aplicaciones
Ejemplos de proveedores
- Amazon
- Google
- Azure
### Nube hibrida
Combinación entre la nube privada y publica
Un ejemplo es educacyl con Microsoft

La parte publica son los servicios de correo almacenamiento, ofimática que da Microsoft y la privada los datos de los alumnos


## Modelos de servicio

### IaaS
Ofrece:
- Virtualización de plataformas
- Almacenamiento
- CPD
- Seguridad física
- Red
El cliente se ocupa de
- SO
- APPS
- Datos
Es un servicio muy escalable
### PaaS
Ofrece lo mismo que le IaaS además de 
- SO

El cliente se ocupa de
- Gestión y configuración de su app

Mayor seguridad 
### SaaS
Ofrece todo

El cliente no se ocupa de nada, solo de usarlo.
Las personalizaciones son más costosas y muy elásticas


# Retos legales, organizativos y técnicos

## Retos legales

**Jurisdicción**
- Ámbito de actuación
- Leyes de diferentes países

**Acceso a la evidencia**
- Políticas de restricción de acceso en los CSP.
- Autorización de los proveedores

**Privacidad y protección de los datos**
- Se garantizara la protección de la privacidad de los datos personales durante el AF

**Asociados a la obtención de evidencias**
- Normativa legal
	- PCI-DSS - Normativas propias según el dispositivo - cajeros por ejemplo
	- RGPD
	- HIPAA - Datos de salud de empleados almacenados en empresas americanas
- Acuerdos de confidencialidad
	- Se protege la información privada de la empresa
	- Compromiso de no divulgación de resultados en el ámbito del AFI
- Reglas de enfrentamiento
	- Como se van a realizar las pruebas
	- Alcance de la revisión
- Exención de responsabilidades

**Asociados al CSP - Proveedor de servicios en la nube**
- Serán retos de cooperación y lo que no este en los contratos, no se podrá exigir al proveedor
	- Preparación del entorno forense
	- Obtención de las propias evidencias
	- Acuerdos a nivel de servicio

**Asociados a la cadena de custodia**
- La preservación de la cadena de custodia es muy complicado, sobre todo en entornos de nube publica

## Retos organizativos

Abarcan:
- Personal con falta de experiencia
- Comunicaciones
- Colaboración entre equipos
- Hardware y equipos informáticos
- Falta de comunicación y coordinación

**Asociados a la madurez de los procedimientos**
- Se han de adaptar a los medios a los cuales se les ha
- Estos procedimientos son más dinámicos que en medios tradicionales
- Tampoco suelen estar probados con anterioridad
**Asociados a la relación contractual con el CSP**
- Acuerdos de servicio marcados en contrato con CSP
- Que información nos va a permitir extraer el CSP
**Asociados a la cadena de custodia**
- Es fundamental el papel del CSP ya es el único que tiene toda la información

## Retos técnicos

- Volatilidad
- Escalabilidad
- Seguridad

### Asociados a la arquitectura en la nube

- Jerarquías y configuraciones con el cliente - arquitectura del CSP
	- El analista ha de conocer la arquitectura del CSP
	- Además de los productos contratados por el cliente
- Características de productos desplegados
	- Algunos de estos se pueden quedar discontinuos

#### Proveedores
-  GCP - Google Cloud Platform
	- Enfoque particular en la innovación e IA
-  Microsoft Azure
	- Enfoque particular en la integración de las herramientas Microsoft
- AWS - Amazon Web Services
	- Ideal para empresas de todos los tamaños


**Asociados a la tecnologías serverless**
- Para un análisis forense, la localización y extracción de información es compleja
**Asociados a la volatilidad**
- Logs y recursos con ciclos de vida
- Se complica / limita la cadena de custodia y el acceso a evidencias
**Asociados al formato de logs**
**Asociados a la validación de evidencias**
**Asociados a los volúmenes de información**
- Debido a la gran cantidad de información , se necesita colaborar con el CSP

## ESTRATEGIAS DE ANALISIS FORENSE EN LA NUBE

Las organizaciones han de dotar recursos y estrategias de forma previa.
Recursos humanos y técnicos

**Requerimientos mínimos**
- Planificación
- Conocimiento del entorno
- Marco legal de referencia
- Rigurosidad
- Eficiencia

### Dimensiones del Análisis forense en la nube

#### Dimensión regulatoria y Objetivos
- Legislación de la organización - CSP
- Documentación y acuerdos con el CSP
- Objetivos
	- Adaptar el análisis

#### Dimensión organizativa y objetivos
- Disponibilidad de recursos
	- Económicos
	- personales
	- Comunicaciones
- Objetivos
	- Expectativas
	- Organización
	- Concienciación del CSP
#### Dimension tecnica y objetivos
- Se tendrá en cuenta:
	- Modelo de servicio - IaaS etc
	- Modelo de despliegue - publica, hibrida etc 
	- Características técnicas
- Objetivos
	- Preparar el entorno antes de que ocurra el incidente
		- Fases del AF + Informe
	- Diseñar procesos adecuados
	- Garantizar herramientas etc

## FASES DEL AF EN LA NUBE

### Preparación del entorno

#### En relación al ámbito de regulación - Leyes

- Capacidad de recopilar información
	- En los entornos PaaS y SaaS es eL CSP quien nos da la información 
- Periodos de almacenamiento - volatilidad programada
	- Se puede negociar cada cuanto tiempo de borra todo
- Obligada comunicación

#### En relacion a la organziacion - Personas y recursos

- Identificar y definir procedimientos y actividades en el AF
	- Roles de responsabilidad etc
- Formación y concienciación técnicos

#### En relacion a los elemtnos tecnicos - Registros de incidentes

- Configuración y captura de logs y eventos
	- Logs de incidentes
	- De disponibilidad
	- De cambios
		- Cambios en las app por subidas / modificaciones de código

### Reporting

- Hay que hacer 2 informes
	- Al CSP
	- Al cliente
- Ambos con diferentes conclusiones e información
- Considerar si las conclusiones conllevan el comienzo de las acciones legales


## Herramientas de la adquisición en la nube

**Cellebrite UFED Cloud Analyzer**
- Extrae y analiza la información de diferentes proveedores
- genera inforames
**FROST**
- Son varias herramientas
- Recopilación y análisis de datos
- Código abierto
**OWADE**
- Código abierto
- Limitada pq solo funciona con Windows
- Extrae info de apps de mensajería e historial
- Acciones
	- Reconstruye el historial
	- Geolocalización Wifi
	- Descifrado de credenciales
**Azure, AWS, GCP**

### Herramientas Azure
- Azure Activity Log - 
- Azure Disk Storage - 
- Azure network Watcher -
- Azure Blob Storage - 

### Herramientas AWS y GCP
- CloudTGaril - AWS - 
- Cloud Storage - Ambas - 
- Cloud Logging - GCP - 
- VPC Network Logs - GCP - Captura de paquetes en red
- Google Takeout - Nos da la posibilidad de descargarnos todos los datos personales

## Que es un navegador Web

Software que nos permite acceso a Internet

**Artefactos forenses**
- Historial
- Cookies
	- Se guardan datos de la sesión
	- Preferencias de búsqueda
- Cache
	- Copia de los archivos web ya visitados
- Descargas
- Formularios autocompletados
- Contraseñas

**Herramientas**
- DB Browser for SQLite
	- 
- Shortcuts
	- Nos da atajos registrados
- Login data


## Análisis en correos 

Se guardarán diferentes evidencias:
- Conversaciones
- Metadatos
- IP
- Tamaño del archivo

**Artefactos forenses**
- Mensajes de correo
	- Encabezados
		- Información de cliente y servidor
		- MIME
		- 
	- Cuerpo
	- Metadatos
- Carpetas y etiquetas
- Contactos
- Calendarios

Del remitente se guarda
- Correo
- Nombre
- Return-path
	- Dirección de correo a la que se enviará si se rechaza el correo

**Tipos de fichero de correo**
- PST  
	- Copia de los contactos y datos de outlook
	- Información que ha sido eliminada 
- OST
	- Almacenamiento cuando no estamos conectados 
- EML
	- Adjuntos
	- Cuerpo del mensaje -  
- MSG
	- Mensaje codificado en binario

**Herramientas forenses**
- MxToolBox
	- Gratis
- Soporte de Google
- Aid4Mail
- MailXaminer
- Outlook PST Viewer

**Protocolos de envío**
- SMTP
	-  Puerto 25 - 465
	- Envió de correo a través de internet
- POP3
	- Descarga y almacena los correos de forma local
	- Si no se configura no deja una copia de correo en el servidor
	- Puerto 110 - 995
	- Métodos de autenticación
- IMAP
	- Recibe los correos
	- 143 - 993
	- Tiene logs en el servidor
	- Deja una copia de correo en el servidor


**Elementos de protección**
- SPF
	- Se tiene un dominio con una lista de usuarios autorizados.
	- Cuando llega el correo al destino, se consulta la lista y se comprueba si pertenece a alguno de los usuarios
- DKIM
	- Protocolo de autentificación que agrega una firma digital usando una clave asimétrica (publica y privada)
- DMARC
	- Protocolo basado en SPF y en DKIM


## Análisis de metadatos

Conjunto de datos que se gaurdan en archivos, programas, imagnes qu enos dan informacion sobre ese archivo
- Quien ha creado/modificado el archivo
- Cuando se ha creado/modificado
- Se pueden modificar
- Utile spara una linea de tiempo

**Herramientas**
- Exiftool
	- Gratis
	- Lee, escribe y modifica metadatos
- FOCA
	- Gratis
	- Analiza metadatos

