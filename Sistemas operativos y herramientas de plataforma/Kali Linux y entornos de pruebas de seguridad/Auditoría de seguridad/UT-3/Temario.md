## RECOPILACION DE INFORMACIÓN

Las etapas de **footprinting** y **fingerprinting** consisten en recabar el máximo de información sobre el objetivo.
Es una de las etapas que más tiempo va a consumir en el pentesting, pero la información recopilada es de suma importancia.

### Footprinting

Primera etapa a ejecutar 
Se recopila información a través de internet

**Herramientas**
- Maltego
- Whois
- Foca
- robots.txt
- Google Dorks

### Fingerprinting

Se recopila información directamente desde el sistema de la organización para conocer más sobre su configuración y comportamiento.
Es imprescindible contar con una autorización.

**Herramientas**
- NMAP
- nbstacn
- Metasploit


## Monitorización del tráfico

**NTA**

Técnica que sirve para monitorizar la red en búsqueda de problemas causados por una 
- Sobrecarga
- Falla del servidor
- Problemas de la infraestructura de red

con el fin de identificar anomalías

**Casos de uso**
- Recopilación de un registro histórico de lo que sucede en la red
- Detección de malware
- Detectar uso de protocolos con cifrados vulnerables
- Solucionar problemas de una red lenta
- Mejorar visibilidad interna y eliminar puntos ciegos


## Interceptación de comunicaciones

Los sistemas informáticos están continuamente expuestos a ataques y en función de sus efectos pueden ser:


**Interrupción**
- Pueden provocar que un objeto del sistema se pierda o quede inutilizable



**Interceptación**
Ataque que atenta contra la confidencialidad de un sistema
Un proceso o un usuario accede a recursos no autorizados
Es difícil de detectar porque no se producen cambios en el sistema.
MiTM



**Modificación**
Ataque que atenta contra la integridad del sistema.
Dañan / borrar información provocando que los dispositivos queden inutilizables 



**Suplantación**
Atenta contra la autenticidad
El atacante inserta objetos falsificados en el sistema


## MITM

### Técnicas comunes de ataque

- Rastreo de paquetes
- Inyección de paquetes
	- Los atacantes inyectan paquetes maliciosos y los mezclan con le flujo de comunicacion
- Secuestro de sesión hijacking
	- En las AP web al inciar sesion se crea un token de sesion temporal para que el usuario no tenga que iniciar sesion de nuevo
	- Pues el atacante puede interceptar ese token e iniciar sesion
- Eliminacion de ssl
	- El atacante intercepta paquetes y modifica las solicitudes basadas en HTTPS para redirigirlas a HTTP haciendo que el host realice comunicaciones HTTP
- WLAN
	- Imitar el SSID de una red para que los usuarios/dispositivos se conecten a la nuestra pensando que es la otra
- LAN
	- El atacante debe tener acceso a la red local
		- Fisicamente
		- A traves de malware
	- El atacante engaña a los dispositivos y le shace creer que es un dispositivo legitimo
- Software de navegación anticuado
### Herramientas de ataque MiTM para equipos de seguridad

- **HETTY**
- **Bettercap**
- **Proxy.py**
- **Mitmproxy**
- **Burp**
- **Ettercap**

### Prevención de ataques MiTM

- Acceder a sitios web con certificado
- Actualizar software de navegación
- No abrir correos de fuentes desconocidas
- Contraseñas robustas


## MANIPULACION E INYECCION DE TRAFICO

Ataque que implica la ejecución de comandos con el fin de explotar una vulnerabilidad de la aplicación

**Herramientas para explotar estas vulnerabilidades**
- Pig
- Yersinia


## HERRAMIENTAS DE BUSQUEDA Y EXPLOTACION DE VULNERABILIDADES

- WAPPALIZER
	- Extraer información de la pila de tecnología del objetivo
		- CMS usados etc
- SHODAN
	- Motor de búsqueda de dispositivos conectados a internet
- EXPLOIT-DB
	- Base de datos que recopila exploits 
- HUNTER
	- Servicio de busqueda de correo electronico
	- Permite buscar direcciones de correo electronico


## INGENIERIA SOCIAL PHISING

La ingeniería social consiste en engañar a las personas para que compartan información
confidencial de forma voluntaria.
Las formas de phishing más comunes son correos y sitios web falsos.

**Herramientas para identificar debilidades**

- Maltego
- Social Engineering Toolkit
- Wifipshiser
- Metasploit Framework


## ESCALADA DE PRIVILEGIOS
Ataque que se realiza a la red para obtener acceso no autorizado a los sistemas en un perímetro de seguridad.

**Tipos**
- Escalada horizontal
	- Tomar el control de otra cuenta y usar sus privilegios
- Escalada vertical
	- Se intenta obtener más permisos con una cuenta existente
	- Por ejemplo
		- Un atacante accede a una cuenta de usuario y pretende hacerse pasar por una cuenta admin

### Como funcionan

Estos ataques suelen implicar la explotación de vulnerabilidades como 
- Errores de software
- Configuraciones incorrectas
- Controles de acceso incorrectos

A veces las cuentas de usuario normales tienen mas permisos de los necesarios, pero como nunca intentan aceder a x recurso, no se dsan cuenta, pero los atacantes si.


### Vectores de ataque de escalada de privilegios

- Explotación de credenciales
- Vulnerabilidades y Exploits
- Configuraciones incorrectas
- Malware
- Ingeniería social

### Técnica de escalada de privilegios de Windows y como mitigarlas

- Manipulación de tokens de acceso
- Omitir el control de cuentas de usuario
- Secuestro de orden de búsqueda de DLL
