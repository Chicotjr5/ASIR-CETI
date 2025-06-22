## Segmentación de redes

Estrategia para poder dividir la infraestructura de red de una organización, en subredes.

**Ventajas**
- Mejor rendimiento
- Fiabilidad
- Escabilidad
- Mejor gestión
- Seguridad

Esta segmentación se puede realizar de forma lógica o física pero esta última se ve más condicionada por el cableado, mientras que la lógica solo por la configuración de los dispositivos de red


En un mismo medio físico pueden coexistir varias redes sin que interactúen entre si, pero si un equipo se pone en modo promiscuo, este verá el tráfico de todas las redes.
Para evitar estas cosas se recomienda:

**VLAN**
- Los switches redirigiran el tráfico a la subred / vlan correspondiente
**Esquemas de direccionamiento de red**


## IPv4

Para poder identificar a cada equipo se le asigna una IP que consiste en un nº de 32b divididos en 4 octetos.

### Clases de IP

**Clase A**
- 0.0.0.0 - 126.255.255.255
- 16 millones de equipos

**Clase B**
- 128.0.0.0 - 191.255.255.255
- 64516 de equipos

**Clase C**
- 192.0.0.0 - 223.255.255.255
- 254 equipos

La 127.x.x.x se reserva para loopback, no pertenece a ninguna clase
### Protocolos

#### Enrutamiento

El protocolo de enrutamiento más usado en IPv4 en OSPF aunque también esta:

**IGP - Protocolo de borde interior**
- Protocolos usados para encaminar el tráfico dentro de la infraestructura de una empresa
	- Tipos
		- Vector distancia
			-  Protocolos basados en una dirección parea decidir la ruta hacia la red destino
		- Estado Enlace
			- Protocolos que verifican el costo para llegar a una red destino

**EGP - Protocolo de borde exterior**
- Aquellos usados para encaminar el tráfico entre diferentes sistemas autónomos


#### Transporte

Garantizan la entrega fiable de datos entre 2 equipos.

**TCP - Transmission Control Protocol**
- Establece una comunicación previa entre los equipos antes de enviar los datos

**UDP - User Datagram Protocol**
- Servicio de transporte sin conexión
- Envía los datos de forma individual sin necesidad de realizar una conexión previa.


## Máscara de red

**Funciones**

- Determinar si un equipo es local o remoto
- Dividir la red en subredes

**Clases de mascara**
- A - 255.0.0.0
- B - 255.255.0.0
- C - 255.255.255.0

## Dominios de difusión

En una LAN los equipos usan la difusión para identificar:

- Otros equipos
- Servicios activos en la red

Y son los switches los que se encargan de propagar estas difusiones a través de todas sus interfaces, los routers no pueden hacerlo.

### Problemas con los dominios de difusión


Cuanto más grande es una red, mayor dominio de difusión se usa, lo que provoca efectos negativos:

- Operaciones de red lentas
- Operaciones de los equipos lentas

Una solución sería reducir el tamaño de la red, creando dominios de difusión más pequeños y reduciendo su tráfico.


## VLAN

Tecnología que permite crear redes independientes dentro de una infraestructura física, permitiendo que estas redes se comuniquen, usando el mismo cableado.

Las VLAN se configuran en los switches, asignando a cada puerto una VLAN en específico.

**Ventajas**

- Seguridad
- Felxibilidad
- Escabilidad
- Gestión

### Clasificación

**VLAN Nivel 1**
- A nivel de puerto
- Un usuario de una VLAN no puede acceder a los recursos de otra

**VLAN nivel 2**
- Por MAC
- Independientes al puerto donde estan conectadas

**VLAN nivel 3**
- Se asignan según el protocolo usado
- No es muy útil

**VLAN nivel 4**
- Por IP
- Son los usuarios los que determinan a que VLAN pertenecen

**DVLAN - VLAN dinamicas**
- Se pueden basar en MAC, protocolos o IP


### Peligros

El ataque más conocido es el VLAN hooping cuyo vector de ataque son los recursos de red que soportan la VLAN.

Para poder realizar este ataque se puede usar

**Switch spoofing**
- El atacante debe de ser capaz de manejar los protocolos de etiquetación y concentración de enlaces que usen los switches de la red objetivo. Si lo consigue podrá imitar el comportamiento de un switch, convirtiendo al equipo en miembro de todas las VLAN.
- Para que esto funcione, los puertos han de estar configurados como:
	- Dynamic auto
	- Desirable
- Yersinia sirve para realizar estos ataques

**Doble etiquetado de los ataques**
- El atacante antepone 2 etiquetas VLAN a los paquetes que transmite.
- Los switches solo desencapsulan 1 etiqueta provocando que la otra se reenvié a una VLAN no especificada.
- Solo tendrá éxito si la VLAN nativa es la misma en la que se encuentra el atacante.


**Soluciones**

- Configurar los puertos como Access port
- Configurar el estado DTP como no configurable
- Configurar los puertos de acceso a una VLAN diferente a la usada como nativa

## DMZ

Red perimetral que funciona como una LAN.
Las LAN no han de estar expuestas a internet, pero ciertas partes de la DMZ si lo pueden estar.

Las conexiones internet -> DMZ se hacen con PAT y las que se hacen LAN -> internet con NAT.


Lo normal es configurar la DMZ con un firewall:
- Un puerto WAN
- El resto LAN
	- Uno de estos para DMZ

## Seguridad en redes inalámbricas

- Fortalecer WLAN
- Proteger datos corporativos y personales
- Usar contraseñas seguras
- Filtrar por MAC
- Habilitar cifrado en red
- Usar Firewall
- AP con una IP estática
- Apagar WLAN
- Ocultar SSID / cambiar nombre

### Cifrado de contraseñas

**WEP**

**WPA**
- Personal
	- El AP contiene la contraseña 
- Radius
	- Requiere de un servidor ajeno para el control de credenciales de acceso

**WPA2**
- Usa cifrado AES
- Puede ser vulnerado con ataques KRACK
**WPA3**
- Cifrado de 192b en la versiónb enterprise y 128 en la personal


## Protocolos de red seguros


### Vulnerabilidades

**Capa de red**

- Escaneo de red ne modo promiscuo
- Suplantación de IP


**Capa de transporte**

- DoS
- Interceptación de conexiones

**Capa de aplicación**

- Suplantación de DNS
- Deficiencias en el proceso de autenticación de telnet
- Problemas con FTP


### Soluciones

- Filtrado y contorl de acceso a equipos y aplicaciones
	- Firewall
	- IDS/IPS
- DMZ
- IPsec
- SSL/TLS


### IPsec

Fue diseñado para proteger el protocolo IP, permitiendo la comunicación segura entre 2 redes a través de un túnel cifrado, el cual las protege de accesos no autorizados.

Permite cifrar y autenticar el tráfico a nivel IP tunelizando 2 routers entre sí.

**Evita**
- Escucha y captura de paquetes IP
- Paquetes IP con dirección de origen falsa

### Protocolos
- AH - Authentication Header
- ESP - Encapsulatin Security Payload



### SSL/TLS

Su objetivo principal es el de proteger las conexiones del protocolo HTTP

**Ventajas**

- Confidencialidad
- Autenticación de los mensajeros
- Autenticación de los mensajes

### Sesiones y conexiones

**Sesiones**
Asociación entre un cliente y un servidor.

**Conexiones**
Conexión individual de la capa de transporte en un equipo cliente y un servidor.


### SSH

Protocolo de administración remota que permite el acceso remoto, a través de uan red, a servidores y equipos remotos.

Para que el protocolo funcione, el servidor contara con el servicio, mientras que el equipo cliente, contara con una aplicacion cliente que tunelizara la comunicacion entre los 2 equipos.

**Servicios de seguridad**
- CID
- Autenticación de entidades y usuarios
- Tunelización de conexiones

**Pasos para establecer una conexión**

- Determinar que versión de SSH se usara
- Negociar los algoritmos que se usarán
- Intercambio de claves
- Mensaje NEWKEYS el cual indica el fin de la negociación

Existen diversos **esquemas de autenticación**

- Nula
	- El servidor autoriza la conexión con cualquier usuario
- Lista de acceso
	-  Igual que la anterior, pero limitada a los usuarioa que se encuentren en la lista de acceso
- Lista de acceso + autenticación del cliente
	- Igual que la anterior, pero se incluye la autenticación del cliente
- Basada en contraseña
	- El usuario usara su contraseña correspondiente
- Basada en clave publica
	- El usuario puede autenticarse sin contraseña
