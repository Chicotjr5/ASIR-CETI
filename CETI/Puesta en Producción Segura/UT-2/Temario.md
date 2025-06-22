## Fuentes abiertas para el desarrollo seguro

Todo documento con cualquier tipo de contenido, fijado en cualquier clase de soporte que se transmite por diversos medios, al que se puede acceder en modo digital o no y es puesto a disposición pública, con independencia de que esté comercializado, esté siendo difundido por canales restringidos o sea gratuito

### OSINT

Conjunto de herramientas y técnicas para recopilar información publica, correlacionar los datos y procesarlos

#### Técnicas y herramientas
- Buscadores habituales
	- Rastrean e indexan información publicas en internet
		- Archivos mal configurados
		- Bases de datos expuestas
		- Videos de videovigilancia
		- **Google dorks**
- Buscadores especializados
- Buscadores de información de personas
- Herramientas de extracción de metadatos
- APIs de RRSS
- OSINT Framework

#### Buscadores habituales

Rastrean e indexan información publicas en internet
	- Archivos mal configurados
	- Bases de datos expuestas
	- Videos de videovigilancia

##### Google dorks
Ejemplos
- fyletype
	- filetype:pdf https://www.educa.jcyl.es
	- filetype:xls OR filetype:xlxs site:gov
- inurl
	- inurl:admin login site:educa.jcyl.es
- intext
	- txt intext:password
- intitle
	- En el tiutlo
- link
	- En el link
- site
	- En el dominio/pagina


#### Buscadores especializados

Motores de busquedadiseñados para encontrar infroamción en fuentes especificas.
Estos se centran en tipos de datos concretos:
- Dispositivos conectados
- Bases de datos filtradas
- Personas
- Vulnerabilidades
- Información técnica 

##### Namechk
Busca en diferentes dominios si existe un usuario o no 



##### SHODAN
Permite realizar la búsqueda de recursos concretos como WebCam, bases de datos
Tiene versiones de pago que incluyen más funcionalidades
Un equivalente a este es el CENSYS


#### HERRAMIENTAS DE EXTRACCION DE METADATOS
Nos permiten obtener datos de todo tipo de archivos
Estos datos incluyen
- Autor
- Fecha y hora de creacion
- Software y version usado
- Geolocalizacion

**Herramientas**
- Metagoofi
- Exif Tool


#### API REST RRSS

Actualmente son privadas y para usarlas se precisa de un token, cuenta etc.
Algunas de las más usadas son:
- Maltego
- Recon-ng
- TheHarvester
- searchcode

#### OSINT Framework

Colección de recursos de fuentes abiertas los cuales están clasificados en función de su 
topología:
- Usuarios
- Correos Electrónicos
- Imágenes


Los metadatos son, datos que describen otros datos.

#### Protección frente a técnicas y herramientas de OSINT

- Eliminar metadatos 
- Realizar búsquedas de correos del dominio de la organización expuestos en Internet.
- Comprobar la configuración de los servidores para ver que información sensible NO se expone de forma pública
- Configurar las opciones de indexación en los buscadores.
- Usar OSINT para ver la información que se puede recopilar.
- Revisar la configuración de las redes sociales.

### DESARROLLO SEGURO DE FUENTES ABIERTAS

**OWASP - OPEN WEB APLICATION SECURITY PROJECT**

Proyecto de codigo abierto dedicado a determinar y combatir las causas que hacen que el software sea inseguro

**CWE - COMMON WEAKNESS ENUMERATION**

Proyecto comunitario para entender las fallas y para el desarrollo de herramientas automatizadas para:
- Identificar
- Corregir
- Prevenir esas fallas

**CVE - COMMON VULNERABILITIES ENUMERATION**

Es similar al anterior y esta gestionado por el mismo organismo pero se centra más en software ya desarrollador, indicando la vulnerabilidad y las versiones del software afectadas además de las posibles soluciones.

## OWASP TOP TEN

OWASP es una fundación sin animo de lucro que trabaja para mejorar la seguridad del software a través de proyectos de software de código abierto.
Esta fundación es una fuente para que los desarrolladores protejan la web.
La organización se ha provisto de:
- Herramientas y recursos
- Comunidades y redes
- Educación y formación

**Características**
- Transparencia
- Innovación
- Global
- Integridad


### Proyectos

**TOP TEN APPLICATION SECURITY RISK**

Listado de los 10 riesgos más importantes y comunes en el desarrollo web.
Se actualiza cada pocos años, añadiendo nuevos o cambiando su relevancia/posición en el listado

**DEPENDENCY-TRAK**

Plataforma de análisis inteligente de riesgos, que permite minimizar el riesgo.
las aplicaciones actuales se desarrollan basándose en otros componentes (librerías) sobre las que no se tiene un control, así que con esta herramienta se puede realizar una monitorización de estos componentes.

**JUICE-SHOP**

Aplicación plagada de errores de seguridad, creada para el aprendizaje y entrenamiento de herramientas de ciberseguridad.

**SAMM - SOFTWARE ASSRANCE MATURITY MODEL**

Ofrece una forma eficaz y medible de analizar y mejorar el ciclo de vida de desarrollo seguro.
Es compatible con todo el ciclo de vida del software y es independiente de la tecnología y procesos.

**WEB SECURITY TESTING GUIDE**

Guía completa para probar la seguridad de las aplicaciones web y los servicios web.

Establece un marco de trabajo para especificar, diseñar y realizar las pruebas.
También se especifica un conjunto de pruebas a llevar a cabo para medir la seguridad de la aplicación.

**ZAP - ZED ATTACK PROXY**

Herramienta para el testeo de aplicaciones web le cual permIte manipular el tráfico que pasa a través de este
**Funcionalidades**
- Proxy de interpretación
- Spider
- Forced Browsing
- Active Scan
- Pruebas fuzzer

**OWASP MODSECURITY CORE RULE SET**

Sistema de detección de ataques basado en cortafuegos para app web.


**MOBILE APPLICATION SECURITY**

Proyecto estrella de OWASP

- **MASVS** 
	- Estándar para evaluar la seguridad en apps móviles
- **MASTG**
	- Guía para realizar pruebas de seguridad en aplicaciones móviles
- **MASGD**
	- Se enfoca en el desarrollo seguro de aplicaciones móviles y proporciona las mejores practicas y principios de seguridad.
- **Mobile Application Securiry Cheat Sheet**
	- Arquitectura
		- Principio de mínimo privilegio y
		- Uso de compoentes de 3º seguros
	- Autenticación y autorización
		- No confiar en el cliente
		- Manejo de credenciales seguras, almacenamiento de tokens
	- Almacenamiento de datos y privacidad
		- Cifrado de datos
		- Prevención de fugas de datos
		- Uso de https
	- Comunicación en red
		- No confiar en la red
		- Usar HTTPS
	- Calidad del código
		- Revisarlo
		- Actualizar librerías
	- Pruebas de seguridad
		- Pentesting
	- Post despliegue
		- Respuestas a incidentes, 
		- Actualizaciones 

### OWASP TOP TEN WEB 

La última actualización es de 2021


**BROKEN ACCESS CONTROL**
- Un software / app web no aplica de forma adecuada las restricciones de acceso a recursos protegidos.
- Un usuario no autorizado podría acceder a recursos/realizar acciones que deberían de estar limitadas solo a usuarios autorizados.
- **Para corregirlo**
	- Almacenamiento seguro
	- Permisos adecuados
	- Protocolos

**CRYPTOGRAPHIC FAILURES**
Problemas relacionados con la implementación de criptografía en el software
- Causas
	- HTTP
	- MD5-SHA1
	- Claves inseguras
	- Claves codificadas en el código de la APP


**INJECTION**
- Inyección SQL - NoSQL - OS - LDAP
- Ocurre cuando se envían datos maliciosos a un intérprete como un comando o consulta.
- Estos pueden engañar al intérprete para que ejecute comandos no deseados / acceda a datos sin la debida autorización.

**INSECURE DESIGN**
- Errores de diseño
- NO se que poner

**SECURE MISCONFIGURATION**
- Configuraciones predeterminadas inseguras, incompletas
- Almacenamiento abierto en la nube
- Encabezados HTTP mal configurados
- Mensajes de error con información confidencial

**USING COMPONENTS WITH KNOW VULNERABILITIES**
- Bibliotecas/módulos que se ejecutan con los mismos privilegios que la app
- Si se explota un componente vulnerable, este ataque puede facilitar la pérdida de datos / toma de control del servidor

**BROKEN AUTHENTICATION**
- Fallos en la implementación de la autenticación / administración de sesiones.

**SOFTWARE AND DATA INTEGRITY FAILURES**
- Consiste en que la integridad de los datos / software se ve comprometida de alguna forma
- Causas
	- Actualizaciones de software no verificadas
	- Manipulaciones de datos 
	- Ingeniería inversa

**INSUFFICIENT LOGGING AND MONITORING**
- La supervisión insuficiente junto con una gestión ineficaz de las respuestas ante incidentes, permite a los atacantes realizar más ataques:
	- Mantener persistencia
	- Cambios en los sistemas
	- Manipulación de datos


**Server-side Request Forgery**
- Fallos de seguridad que permiten a un atacante enviar solicitudes desde el servidor a otros sistemas o recursos en la red sin la autorización adecuada.
- El servidor web es engañado para hacer solicitudes HTTP o realizar acciones en nombre del atacante

### OWASP MOBILE TOP TEN

**IMPROPER CREDENTIAL USAGE**
- Gestión insegura de credenciales
- Vulnerabilidades
	- Credenciales codificadas dentro del código
	- Las credenciales se transmiten sin encriptación
	- Las credenciales se almacenan de forma insegura
	- La autenticación del usuario se basa en protocolos débiles

**INADEQUATE SUPPLY CHAIN SECURITY**
- Ocurre cuando se usan aplicaciones desarrolladas por terceros o que contienen bibliotecas de 3º
- Vulnerabilidades
	- Falta de seguridad en librerías de 3º
	- Amenazas maliciosas internas
	- Pruebas y validación inadecuadas

**INSECURE AUTHENTICATION**
- Una organización no autentica a u usuario antes de realizar una conexión de API desde un móvil

**INSUFFICIENT INPUT/OUTPUT VALIDATION**
- Ocurre cuando una aplicación no verifica ni desinfecta correctamente la entrada del usuario o no valida ni desinfecta los datos de salida.

**INSECURE COMMUNICATION**
- Los atacantes pueden aprovechar vulnerabilidades para interceptar datos confidenciales mientras viajan
- Algunas aplicaciones no usan SSL/TLS continuamente

**INADEQUATE PRIVACY CONTROLS**
- Un aplicación puede ser vulnerable si procesa información personal identificable
- Si esta información no es tratada de la forma correcta, puede provocar diferentes vulnerabilidades que pueden ser explotadas por atacantes.

**INSUFFICENTE BINARY PROTECTION**
- Todas las app son vulnerables a ataques binarios

**SECURITY MSICONFIGURATION**
- Configuración incorrecta de los ajustes de seguridad. permisos y controles que pueden provocar vulnerabilidades y acceso no autorizado

**INSECURE DATA STORAGE**
- Un atacante que adquiera físicamente un móvil puede conectarlo a un PC y con x herramientas extraer toda su información.

**INSUFFICIENT CRYPTOGRAPHY**
- Un atacante puede volver los datos cifrados a su forma original.
- Esto ocurre por:
	- Poner las claves a disposición del atacante
	- Interceptación de claves con ataques binarios
	- Incluir las claves en un directorio legible
- Recomendaciones
	- Evitar el almacenamiento de estas claves en el propio móvil
	- Usar algoritmos de cifrado de última generación
	- Seguir las pautas marcadas por el NIST


## ESTANDAR DE VERIFICACION NECESARIOS ASOCIADOS AL NIVEL DE SEGURIDAD ESTABLECIDO

No todo el software necesita el mismo nivel de seguridad, esto dependerá de su funcionalidad final y los datos que trata.

El proyecto **Applicaction  Security Verification Standart (ASVS)** proporciona una lista de los requerimientos de seguridad / pruebas que pueden ser usadas para determinar el grado de seguridad en una aplicación.

**Objetivos de ASVS**
- Ayudar a las organizaciones en el desarrollo y mantenimiento de app seguras
- Permitir la alineación entre las necesidades y ofertas de los servicios de seguridad

**Usos principales**
- Usarlo como criterio para evaluar el grado de confianza de una app web
- Usarlo como una guía y que oriente a los desarrolladores para implementar los controles de seguridad.
- Especificar los requisitos de verificación de seguridad.

### Estándares para medir al calidad del software

**ISO 27001**
- Requisitos para
	- Establecer
	- Implementar
	- Mantener
	- Mejorar un sistema de gestión de la seguridad de la información
**ISO 27002**
- Políticas de seguridad
- Gestión de activos
- Control de acceso
- Técnicas de cifrado 
**ISO 27032**
- Seguridad en las redes
- En internet
- De la información
- PIC
**ISO 27034**
- Garantiza que las aplicaciones aseguran el nivel de seguridad requerido para el apoyo del Sistema de Gestión de la Seguridad de la Información
**ISO 15408**
- Criterios de seguridad para medir la seguridad del software

### Niveles de verificación

**ASVS L0**
- Superficial
- No forma parte del estándar, si no que es propio de cada organización
**ASVS L1**
- Oportunista
- Pensado para todo tipo de software
**ASVS L2**
- Estándar
- Para aplicaciones que manejan datos sensibles
**ASVS L3**
- Avanzado
- Para aplicaciones que tratan datos confidenciales


### Estándar de Verificación de seguridad en aplicaciones (ASVS)

**WEB SECUTITY TESTING GUIDE**

Marco de trabajo detallado para la evaluación de la seguridad en la Aplicación web
Relacionada con los niveles anteriores y en función a ellos, ofrecerá una serie de test a llevar a cabp


Cadas escenario se indentifica con las letras **WSTG** y la categoría se nombra con 4 caracteres que indican el tipo de pruebo o debilidad:

- INFO - Recopilación de información
- IDNT - Indentidad
- CONF - Comprobación de configuraciones de elementos
- APIT - Evaluación de la API
- AUTH - Verificación de autorización
- ATHN - Autenticación
