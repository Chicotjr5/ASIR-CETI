## SEGURIDAD PERIMETRAL - Firewall de próxima generación

### Principales requisitos de seguridad aplicables

- **Identificación de las aplicaciones y no de los puertos**
	- Clasifica el tráfico que genera y que llegara al cortafuegos
	- Se determina la identidad de la app sin importar 
		- Protocolo del tráfico
		- Cifrado
		- Táctica evasiva 
- **Vinculación del uso de apps con los usuarios**
	- Se vincula el uso de la aplicación por el usuario y no por la IP o puerto usado
- **Prevención de amenazas**
	- Se ha de analizar el tráfico y ofrecer una protección automática frente amenazas
		- Conocimiento de Exploits y vulnerabilidades
			- Malware
			- Spyware
			- URL maliciosas
- **Simplificar la administración de las políticas**
	- Uso de herramientas gráficas
	- Unificación de políticas, plantillas y grupos de dispositivos

**FwBuilder**

- Ayuda a entender el orden de las reglas y su aplicación.
- Permite realizar pequeñas simulaciones de funcionamiento

#### Firewalls de 1º GEN

Las reglas atienden a criterios de las capas 3 y 4 (red y transporte) y el 
filtrado se basa en:
- IP
- Protocolos
- ToS - Tipo de servicio
- Puerto TCP / UDP
- Flags TCP
	- SYN, ACK, FIN

Estas reglas se aplican de una forma secuencial, osease, si se cumple una, no busca más

**Incovenientes**
- Cuantas más reglas, más probabilidades de colisión entre las reglas
- No protegen los ataques de la capa de aplicación
	- SQL INJECTION
- No gestionan ataques TCP SYN o  ARP Spoofing
- Logs limitados

#### Firewalls de 2º gen
**Características**
- Están basados en el estado 
- Tienen en cuenta la colocación de cada paquete individual dentro de una serie de paquetes.
	- Indica si un paquete es parte de una nueva o existente conexión, o si es erróneo 
- Mantiene registros de todas las conexiones que pasan por el Firewall
	- Si una conexión es rara, la bloquea
- Actua en las capas 3, 4, y 5

**Inconvenientes**
- Más complejos
- No analiza las conexiones cifradas
- Ralentización del tráfico de la red
- Inseguro ante DoS o DDoS y MiTM

#### Firewall de 3º gen

**Características**
- IPS
- DPI - Inspección profunda del paquete
	- Analiza cabecera y cuerpo de cada paquete
- Conocimiento y control de las aplicaciones
	- Identifica y bloquea el tráfico según las apps a las que se dirige el tráfico
- Identifica flujos de amenazas recientes
- Actúa sobre la capa 7, permitiendo entender 
	- FTP
	- HTTP
	- SMTP etc
#### Firewall como servicio - FWaaS

Cortafuegos alojados y ejecutados en la nube, pero no en un dispositivo físico.
Son usados en la computación en la nube
**Ejemplos**
- AWS WAF
	- FW para apps web
- AWS Shield
	- Protección contra DDoS
#### Medidas a tomar desde el punto de vista del bastionado de redes

- Proteger el descubrimiento de la infraestructura de red
	- Bloquear protocolo ICMP pero permitiéndolo en x tareas
- Aplicar reglas según las políticas de seguridad de la organización
- Mayor fortalecimiento de la DMZ
	- Actualizaciones
	- Copias de seguridad
	- Gestión de incidentes
	- Registros de eventos
- Reglas de tráfico
- Controlar la conexión a servidores DNS externos 
- Denegar todo el tráfico y crear reglas 

## Soluciones WAF - Web Application Firewall

Los WAF protegen el back-end de los servidores web, analziando los paquetes HTTP y HTTPS.

Este examina cada petición enviada al servidor antes de que llegue a la app web, asegurándose de que la petición cumple con las reglas.
Supervisa, filtra y bloquea el tráfico HTTP hacia y desde una app web.
A diferencia del Firewall, este permite filtrar el contenido de app web específicas, mientras que el firewall solo protege eñ tráfico entre servidores.


## Seguridad del puesto de trabajo y endpoint

### APT - Amenaza persistente avanzada

Es la posibilidad de que un atacante pueda tener la capacidad , intención y conocimiento para realizar ataques contra objetivos variados, con el objetivo de poner en peligro los sistemas que dependan de este.

**Fases**
- Definir objetivo
- Encontrar cómplices
- Adquirir herramientas
- Investigar al objetivo
- Pentesting
- Desplegarse
- Realizar una intrusión inicial
- Iniciar conexión saliente
- Ampliar el acceso y obtener credenciales
- Fortalecer el punto de apoyo
- Exfiltrar datos
- Cubrir las pistas y permanecer sin ser detectado.

El objetivo consiste en permanecer en el dispositivo vulnerado y obtener todos los datos e información posibles, además de intentar acceder a otros equipos y servidores.

Los endpoints son el punto más débil de una infraestructura de red.

### Herramientas

**Gophis**
- Permite realizar phising controlado sobre los empleados
- Sirve para formarlos 

**Osquery**
- Permite realziar consultas de sucesos o cambios que se han realizado en x momento
- Toda la información se manda a una BD SQLite

**Herramientas anti-APT**
- Orientadas a recopilar información puntual sobre un equipo de trabajo.
- Permiten aislar ese equipo en caso de ataque.


### Tipos de malware que afectan a los endpoints

**ADWARE**
- Software que ofrece publicidad no deseada
**SPWARE**
- Recopila información del usuario y del equipo en general
- Keylogger es un ejemplo
**GUSANOS**
- Se replican a través de la red
**TROYANOS**
- Se hacen pasar por software legítimo
**RANSOMWARE**
- Cifra los datos del equipo y pide un rescate por ellos
**BOTNETS**
- El equipo se usa para provocar ataques organizados
**APPS y WEB MALICIOSAS**
- Web y apps que parecen legítimas pero que no lo son 

### Síntomas de infección

- Equipo lento
- Apps se bloquean o fallan
- El equipo tiene un comportamiento fuera de lo común 
- Antivirus zzz
- Archivos desaparecidos o bloqueados
- Se recibe correos irregulares

## Seguridad en entornos Cloud - Soluciones CASB

CASB - Cloud Access Security Broker

Software que actúa como punto de control de las políticas de seguridad entre consumidores y proveedores de los servicios en la nube.

El objetivo de estas herramientas consiste en controlar y gestionar el uso de servicios alojados en la nube, permitiendo realizar un seguimiento de los datos que se transfieren.

**Gestiones**
- Monitorización de seguridad
- Prevención de la exfiltración de información
- Gestión de usuarios y perfiles 
- Gestión de incidentes
- Gestión de copias de seguridad
- Protocolos de actuación para la recuperación de datos ante desastres
- Actuación según el RGPD
- Integración con servicios de la organización
	- DNS
	- SIEM
	- Correo
	- FW

Uno de los principales problemas de esto es la deslocalización de las infraestructuras de la nube, debido a que estas pueden estar en diferentes países, haciendo que los proveedores de estos servicios se rijan por las leyes implantadas la localización de los servidores de la nube.


## Seguridad en correo electrónico


**Peligros**
- Enlaces maliciosos
- Archivos adjuntos al correo
- Correo basura

**Mitigaciones**
- Actualizaciones del SO y políticas de seguridad
- Uso de herramientas antimalware en el equipo
- Firewall y políticas de seguridad
- Restricciones de acceso
- Apagado de equipos cuando no son necesarios
- Usar HTTPS
- Cerrar sesión de correo


## Soluciones DLP - Data Loss Prevention

La perdida de información es un problema muy importante que puede acarrear la perdida de reputación de una empresa.
Para ello, están las herramientas DLP.
Estas constan de 2 partes
- Control desde el servidor
	- Donde se configuran las políticas de seguridad
- Agentes en cada equipo cliente

**Ventajas**
- Identificación de las posibles amenazas que se producen en los equipos de la organización
- Cumplimiento normativo
- Definición de roles y perfiles de usuarios

Un caso a parte son los BYOD debido a que no se pueden realizar accesos intrusivos, así que a estos dispositivos se les ha de asignar privilegios mínimos.



---

## Herramientas de almacenamiento de logs

En Windows se pueden ver con el visor de eventos y se encuentran en:
- %SystemRoot%\System32\Winevt\Logs\

En Linux por su parte no hay un gestor de logs, todos se almacenan en **/var/log**

Estos logs recogen información sobre:
- Sistemas operativos
- Aplicaciones y servicios del SO o de apps de 3º
- BD
- Herramientas de seguridad
- Dispositivos de red

**Desventajas**
- Mucha información
- En caso de ataque, hay un retraso en al recopilación de los logs
- Por ley se obliga a almacenar estos logs para usarlos como evidencias.

### Linux

Gnome / activity-log-manager es un visor de eventos del sistema que permite revisar
todos los sucesos / mensajes que envían los paquetes / servicios que crean logs.

#### Logwatch
Otro es el paquete **Logwatch** el cual genera un informe donde se unifica toda la actividad del servidor.
Además, este informe puede ser entregado por cli o por correo electrónico.

Sus archivos de configuración se encuentran en:
- /usr/share/logwatch/default.conf/*
- /etc/logwatch/conf/dist.conf/*
- etc/logwatch/conf/*

#### Herramientas para usar con registros

**GoAccess**
- Analiza de registros web en tiempo real.
- Proporciona estadísticas de presentación web bien organizadas para que los administradores tengan un informe sobre el servidor en tiempo real
**Rsylog**
- Reenvía mensajes de registro dentro de una red.
- Es como un Syslog pero remoto 


## Protección ante DDoS

DDoS es un ataque donde se realizan muchas peticiones a un mismo punto/objetivo desde muchos equipos, con el objetivo de dejar inoperativo el objetivo.

Estos ataques se diferencian según su capa de ataque
- Capa 3 - Red
- Capa 4 - Transporte
- Capa 6 - Presentación
- Capa 7 - Aplicación

### Ataques

**Syn Flood**
- Se usa el método de apertura de conexión TCP en 3 pasos, dejando sin acabar el último paso (envío ACK por parte del cliente) haciendo que el servidor se quede a la espera y consuma recursos
- Nmap y hping permiten este tipo de ataques.

**Connextion Flood**
- Se realiza un número elevado de petición es a un servicio

**UDP Flood**
- Se realizan un nº elevado de peticiones sobre le protocolo UDP.
- Cuando un equipo envía una petición a un puerto UDP cerrado, el servidor responde con un paquete ICMP sin destino.
- Para realizar el ataque se usan IP falsas.

### Protección

**Reducción del área expuesta**
- Mover el equipamiento no imprescindible para el funcionamiento de los servicios externos (web, ftp) se cambie de zona o poner medidas para dificultar su acceso.
	- Usar un Firewall o ACLs
	- Restringir el tráfico directo de internet a zonas de la infraestructura

**Escalado de la infraestructura**
- Capacidad del ancho de banda
	- Se ha de conocer el ancho de banda y el nº de conexione máximas que puede soportar la red para que cuando se llegue al máximo se paren x transacciones o se desvíen a otros servidores externos
- Capacidad del servidor
	- El uso de balanceadores de carga permitiría aliviar al servidor 
- Cortafuegos específicos
	- WAF
	- Firewall de 3º gen etc

## Configuración segura de 

### Cortafuegos

Estos se encuentran en una red, haciendo de "intermediarios" entre dispositivos o tambien se encuentran en los propios equipos.

Se filtra la información de entrada y salida, revisando si cada paquete cumple las reglas impuestas.


#### Políticas de FW

**Denegar**

```bash
iptables -P INPUT DROP
iptables -P OUTPUT DROP
iptables -P FORWARD DROP
```

**Impedir conexiones remotas pero permitir navegar**

```bash
iptables -P INPUT DROP 
iptables -P OUTPUT ACCEPT 
iptables -P FORWARD ACCEPT 
iptables -A INPUT -m conntrack --ctstate ESTABLISHED,RELATED -j ACCEPT
```

**Usar puerto 22 para SSH**
```bash
- iptables -A INPUT -p tcp --dport 22 -j ACCEPT
```

#### Conntrack

Paquete que permite observar el estado y detalles de las comunicaciones establecidas.

#### Objetivos de los fireweall

- El trafico de la red interna que sale a internet ha de estar controlada por el firewall
- Según la política de seguridad, tendrá el tráfico permitido porque ha de ser autorizado para atravesar el firewall.
- Cualquier tipo de control de accesos (usuario, apps etc) se realiza con el control de servicios, direcciones, usuarios etc
- Ocultar información de la red que se protege
- Crear logs

#### Tipos

**Filtrado de paquetes**
- Actúa en el nivel 3
- Filtra los paquetes según su encabezado
	- IP origen e IP destino
- Los routers tienen este tipo de FW

**Nivel de aplicación**
- Se apoyan en un proxy para gestionar el tráfico

**Híbridos**
- Usan 2 tecnologías
	- Proxy para establecimiento
	- Filtro de paquete para la transferencia de datos

**Con inspección de estado**
- Comprueban 
	- Ip origen y destino
	- Puertos
	- Protocolo usado
	- Estado de la conexión
	- Cantidad de tráfico

**Pasarelas a nivel de circuito**
- Se verifica el handshake TCP
- Deniega o aprueba el tráfico rápidamente.
- No inspecciona el paquete y si este contiene malware podría pasar por válido

**Inspección total**
- Igual al híbrido, pero aplica la verificación del handshake TCP

**En la nube - FaaS**
- Fácilmente escalable

**De hardware**
- Comprueba el tráfico antes de darle paso a la red.

**De software**
- Cualquiera implementado en un sistema local

### Routers

#### Medidas de protección
- Inhabilitar 
	- Puertos no usados y que formen parte de una VLAN
	- Servicios que no sean necesarios
- Usar versiones seguras de protocolos
- Eliminar configuraciones por defecto
- Crear usuarios y grupos según el tipo de responsabilidad de cada uno
- Restringir accesos desde un segmento de la red.
- Usar SSH2 para acceso remoto
- Acortar tiempo de inactividad de los usuarios
- Limitar nº de intentos fallidos
- Activar la auditoría de acceso al equipo y configurarla para que lo envíe al SOC


### Proxy

#### Características

- Capa 7
	- FTP, HTTPS, SMTP
- Almacena las peticiones de los servicios demandadas por los clientes
- Actúa como un intermediario, él cual se conecta y recolecta información de los servidores demandados para enviársela al cliente
- Almacena durante x tiempo información en caché, para que cuando un cliente se la pida, se la dé sin necesidad de mandar otra petición al servidor.
#### Funciones

- Filtro de contenidos
- Memoria caché de páginas web
- Puede actuar como un servidor DHCP
- Firewall
#### Tipos

**NAT**
- Ofrece un servicio de acceso a una red para dispositivos que no pueden acceder por culpa de la arquitectura TCP/IP con asignación de IP públicas.

**Anónimo**
- Se usa para saltarse las estricciones de seguridad que se aplican su red.

**Web**
- Almacena el contenido de las webs a las que ha accedido para que cuando un cliente le pida una conexión a x servidor, el proxy se la de sin mandar un apetición al servidor web.

**Abierto**
- Acepta cualquier petición de cualquier cliente

**Transparente**
- Se usa para mejorar el servicio de internet, reduciendo el ancho de banda y la latencia

## VPN e IPsec


### Acceso remoto

Permite conectarse a una red privada y realizar diferentes operaciones, consultas y utilizar cualquier recurso de la res privada de forma segura a través de internet.

### Infraestructura

Orientado a las organizaciones que necesitan trabajar de forma privativa aunque estén separadas físicamente.
Este tipo de VPN se basa en la comunicación a nivel de enrutamiento.
Uno actúa como cliente y otro como enrutador, como un servidor VPN.


El sistema de tunelización encapsula un protocolo de red sobre otro, haciendo que se genere un túnel de la red.
Este segundo protocolo incluye una PDU dentro de otra
Esta última no se verá afectada en el tránsito de extremo a extremo.

En la capa de transporte, en la cabecera se añade una IP adicional al paquete original, la cual va encapsulada y no se extraerá hasta que no llegue a otro extremo de la VPN.


## Monitorización de sistemas y dispositivos

La monitorización delos sistemas se realiza desde un solo equipo (SOC) y a través del protocolo SNMP.
Se ha de autorizar la salida de información desde cada equipo.
Se asigna un permiso exclusivo de recopilación de datos a un equipo o a una red restrictiva.

**Nagios**
Software de recopilación  de datos que los equipos alcanzables de una red.
En Linux se necesita el protocolo SNMP mientras que en Windows se necesita la aplicación **nsclient**


Estos sistemas de monitorización se han de configurar para que sea complicado acceder a la información que recopila.

## IDS e IPS

Un IDS/IPS puede ser
- Router confiugrado con un software IPS
- Un dispositivo diseñado para protpocionar solamente estos servicios
- Un módulo de red instalado en un dispositivo de red

IDS e IPS usan firmas para detectar patrones de tráfico de red ya sean maliciosos o no.
También se pueden usar para recopilar información.

Estas tecnologías permiten detectar patrones de
- Firma atómica
	- Un solo paquete
- Firma compuesta
	- Varios paquetes

**Herramientas**
- Snort
- Suricata
- SELKS
- Splunk
- Security Onion
- Elastic SIEM


## NOC Y SOC


SOC - Centros de Operaciones de Seguridad
NOC - Centros de Operaciones de Redes


Son centros con servicios relacionados con la seguridad que operan 24/7.


#### NOC

Se especializan en monitorizar las transacciones entre los equipos para detectar incidentes en la infraestructura de una organización.

**Tareas**
- Instalación y actualización de software
- Resolución de problemas que afectan al acceso de servidores o a los servicios de estos
- Crear reportes / informes de transacciones
- Supervisar el funcionamiento de toda la infraestructura digital.


#### SOC

Estos tienen 2 partes:

##### Humana
Personal experto en atender a incidentes de seguridad informática que protegen la infraestructura de red de una organización.

**Analistas de nivel 1**

- Monitorizan alertas entrantes, verificando y confirmando si un incidente es verdad o falso
- Si es verdadero lo reenvían a los analistas de nivel 2

**Analistas de nivel 2**

- Realizan una investigación de los incidentes y sugieren x soluciones para resolverlos

**Cazador de amenazas de nivel 3**
- Siguen el comportamiento del malware, determinando su impacto y eliminándolo.
- Implementan herramientas de detección y eliminación de estas amenazas
- Buscan amenazas que están presentes en al red pero no han sido detectadas.

**Administrador del SOC**
- Administra el SOC y coordina el resto de equipos.


##### Operativo

Para el funcionamiento del SOC, se recopila información en tiempo real de todos los sistemas y redes que forman parte de la infraestructura de la organización.
Toda esta información se centraliza en un único punto.
###### Fases

- Preparación y prevención
	- Formación del personal en el uso de herramientas y detección de amenazas
- Identificación
	- El personal cualificado detecta incidentes 
- Contención
	- Se reducen las consecuencias de un incidente de seguridad, además de recoger evidencias digitales
- Mitigación
	- Eliminación del incidente
		- Desconexión de equipos
		- Controles de acceso
		- Revisión de la infraestructura
- Recuperación
	- Se devuelve a la normalidad a todos los sistemas
- Post-incidente
	- Se registra todo el procedimiento del incidente
