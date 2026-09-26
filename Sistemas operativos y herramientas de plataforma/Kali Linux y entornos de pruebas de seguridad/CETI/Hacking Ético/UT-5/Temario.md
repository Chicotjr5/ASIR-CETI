## Negación de credenciales en aplicaciones web 

Algunos de los problemas del uso de las contraseñas en apps web son:

**Contraseñas predeterminadas**
- Se usan para que operadores puedan acceder a dispositivos remotamente.
**Contraseñas compartidas**
- Algunos dispositivos no permiten tener varios usuarios, así que lo que se hace es compartir la contraseña de 1 usuario entre varias personas.
**Mayor uso de credenciales**
- A lo largo del tiempo a aumentado el N.º de aplicaciones que necesitan credenciales para poder acceder a ellas, implicando un mayor tráfico de autenticación.
**Uso de credenciales privilegiadas**
- Cada vez existen más cuentas con permisos de administrador o similares.
**Contraseñas integradas**
- Aumenta el riesgo de acceso no autorizado a todo el sistema, provocando la manipulación del dispositivo, ejecución de código malicioso o denegación del servicio.

## Automatización de conexiones a servidores web

### Selenium
Herramienta que automatiza los servidores web, permitiendo crear scripts que realicen diferentes acciones en los navegadores
Un ejemplo es la practica de shodan.


Esta herramienta funciona con el protocolo **webdriver** el cual tiene un extremo local (cliente) que envía comandos (el script) a un controlador del navegador.


## Recolección de información
### Herramientas
- Maltego
- Nmap
- Whois
- Netcraft
	- Recopila información sobre las tecnologías usadas en un sitio web, además de:
		- Servidores
		- CMS
		- SO
		- Subdominios
- Robtex
	- Usada para extraer información de los dominios, como:
		- IP
		- DNS
		- Servidor
		- Host
- Fuentes abiertas de conocimiento empresarial
- Sitio web en el mismo servidor
- Formularios

## Búsqueda de vulnerabilidades habituales en apps web

### OWASP

#### Juice Shop
App web insegura para realizar pruebas de ciberseguridad, que abarca el OWASP TOP TEN y otros fallos de seguridad
#### NodeGoat
Entorno para conocer los principales riesgos de seguridad de OWASP aplicados para appa web desarrolladas con node.js
#### Railsgoat
Versión vulnerable de rails que sigue el OWASP top ten
#### Security Shepherd
Plataforma de capacitación en seguridad para app web y móviles
#### WebGoat
App web insegura
#### ZAP
Versión actual de proxy de ataque owasp zed integrado en un contenedor docker


## Herramientas para la explotación de vulnerabilidades web
### Burpsuite
Conjunto de herramientas usadas para realizar pruebas de pentesting en apps web.

**Spider**
- Se usa para mapear la app web objetivo, obteniendo una lista de puntos finales para observar su funcionalidad y encontrar posibles vulnerabilidades.
- Cuantos mas puntos finales existan, más vulnerabilidades se podrán encontrar.

**Proxy**
- Es un proxy de interceptación, que permite ver y modificar le contenido de las solicitudes y respuestas que se mandan.
- También permite enviar esos mensajes a otras herramientas para realizar otras acciones

**Intruder**
- Es un fuzzer
- Usado para ejecutar x alores contra un punto de entrada.
- Una anomalía en el servidor da como resultado un posible cambio en el código de respuesta o de la longitud y tipo de contenido.
- Permite realizar ataques de fuerza bruta

**Repeater**
- Permite enviar solicitudes de forma repetida con modificaciones manuales
- Es usado para ver como el servidor maneja
	- Valores inesperados
	- Ver la cookie de sesión
	- Ver si el servidor aplica saneamiento de datos

**Sequencer**
- Verifica la aleatoriedad de los tokens generador por el servidor web.
- Si los tokens se generan de una forma poco aleatoria y precedible, se puede anticiparse a la creación de uno de estos tokens y robar / generar una cookie valida.

**Decoder**
- Enumera los métodos de codificación usados en el servidor web.
- También se usa para construir la carga útil para varios tipos de vulnerabilidad

**Extender**
- Burpsuite permite componentes externos que se integran con el resto de herramientas disponibles. Funcionan como las extensiones del navegador.

**Scanner**
- Realiza un escaneo automático del sitio web en búsqueda de vulnerabilidades comunes y las enumera, según la confianza del hallazgo y la complejidad de explotación.

### Acutenix

Herramienta automatizada usada para escanear apps web, que permite:

- Escanear vulnerabilidades
- Escanear problemas de seguridad en los sitios web
	- Puertos abiertos
	- Servicios en ejecución
	- Cifrados debiles
	- Acceso FTP anonimo


### Nessus

Herramienta de escaneo de seguridad remota, que genera una letra si descubre alguna vulnerabilidad.
No es una solución de seguridad, si no que ha de formar parte como una estrategia de seguridad.
### SQLMap
Herramienta de pentesting que automatiza la inyección SQL en sitios web.
### Nmap
Descubre redes y sus elementos.
Es muy útil en auditorias de seguridad, donde se ven:
- Host
	- Puertos
	- Versiones de software
- Servidores
	- Puertos
	- Versiones de software
- Posibles firewall / proxy
### WPScan

Escaner de vulnerabilidades de Wordpress, el cual
- Detecta versiones obsoletas de Wordpress
- Identifica malware en Wordpress
- Detecta nombres de usuarios de wordpress usados para comprometer cuentas
- Descubre archivos criticos (wp-config.php) divulgados publicamente
- identifica si es vulnerable a ataques de fuerza bruta XML-RPC

### The harvester
Permite recopilar información de correos electrónicos, subdominios, host y nombres de empleados, puertos abiertos, etc de diferentes fuentes públicas como motores de búsqueda, servidores PGP, bases de datos como SHODAN etc.

Se usa para un reconocimiento pasivo, o parea que los miembros de una empresa, sepan que información se esta mostrando publicamente.


### Otras herramientas
**XSStrike**
- Explotación de XSS
**Commix**
- Automatiza la explotación de comandos.
- Útil en entornos como CTF o  DVWA
**BeEF
- Explota vulnerabilidades en navegadores después de que el usuario carga un payload.
**Dirb**
- Fuerza bruta para descubrir directorios ocultos.
**WhatWeb**
- Identifica las tecnologías y versiones usadas en un sitio web, permitiendo descubrir posibles vulnerabilidades sobre las mismas.
**Wappalyzer**
- Similar a whatweb, pero se puede integrar en el navegador
**Empire**
- Framework para la explotación y persistencia en entornos Windows
**BloodHound**
- Ideal para analizar redes AC/DC
**Faraday IDE**
- Plataforma de pentesting colaborativo, permitiendo integrar herramientas como nessus, nmap etc. Además permite generar informes centralizados 


