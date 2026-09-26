## HACKING ÉTICO

Disciplina que se encarga de comprobar el nivel de seguridad de un activo / sistema informático.
#### Hacker ético
Es aquel que cuando encuentra una vulnerabilidad, la debe de poner en conocimiento del responsable de la infraestructura vulnerada, para que la vulnerabilidad sea arreglada.

### ELEMENTOS PRINCIPALES DEL HACKING ÉTICO

#### Autorización legal
Antes de llevar a cabo un hackeo ético, hay que contar con la autoridad del propietario del sistema, red o aplicación.
La autorización ha de ser firmada por escrito por ambas partes.

#### Ética
Debemos de respetar la privacidad de los datos y la información del cliente

#### Conocimiento técnico
Sobre los sistemas, redes, aplicaciones y técnicas de hacking

#### Herramientas de Hacking
- Escáneres de vulnerabilidades
- Programas de explotación de vulnerabilidades
- Análisis de tráfico de red
- Herramientas de auditoría de red

A parte, deberemos de hacer un trabajo manual, en caso de que las herramientas fallen.

#### Informes
 - Técnico
	 - Refleja la parte técnica de lo que se ha hecho
	   con un lenguaje dirigido a los técnicos de la empresa
- Jurídico
	- Dirigido al director de la empresa, juez, abogado, gente que no es técnica, por lo que el lenguaje a de ser menos técnico

#### Responsabilidad
Somos responsables de nuestras acciones y hemos de ser capaces de justificar nuestras actividades realizadas durante la prueba de seguridad.

### DIFERENCIAS ENTRE HACKER/CRACKER

#### Hacker
Profesional con las habilidades técnicas y estratégicas necesarias para evaluar la seguridad de un sistema informático desde una perspectiva de ética profesional.

**Conocimientos**
- Infraestructura y redes
- Sistemas operativos
- Desarrollo de software y bases de datos

**Características**
- Entusiasta
- Investigador
- Idiomas
- Autonomía
- Trabajo en equipo
- Ética profesional

#### Ciberdelincuente
Es alguien que usa la tecnología y las herramientas digitales para cometer delitos.
Sus motivos pueden ser políticos o por propia lucración financiera.

Estos explotan las vulnerabilidades de los sistemas informáticos para:
- Obtener acceso no autorizado al sistema / información confidencial
- Realizar fraudes
- Robar identidades


Técnicas que usan
- Ingeniería social
- Phising
- Cualquier uso de malware

#### Hackitivista
Actúa de forma independiente o como parte de un grupo organizado.
Su objetivo es llamar la atención sobre causas políticas o sociales, usando sus conocimientos apra realziar ataques cibernéticos contra gobiernos, organizaciones etc.

Destacan
- Anonymous
- Culto de la vaca muerta
	- Beto O' Rourke
- Julian Assange

## AUDITORÍA / PENTESTING

### Auditoría
Se centra en el análisis de las vulnerabilidades que se encuentren en un sistema y analiza el cumplimiento de:
- Políticas
	- De respaldo
	- De contraseñas
- Normativas de seguridad
	- Implementadas por la empresa
	- O por la ley
- Accesos
- Configuraciones

En la auditoría se deben indicar áreas de mejora en la gestión de seguridad.

Con la auditoria detectamos todas las vulnerabilidades de un sistema.

### Pentesting

Es una simulación controlada de ataques reales con el fin de detectar y explotar las vulnerabilidades de un sistema, red etc.

Con poder explotar 1 sola vulnerabilidad, es sificiente para demostrar que el sistema no es seguro.

**Tipos**
- Caja blanca
	- Tenemos información detallada del sistema
	- Se usan para evaluar
		- Cambios en la configuración
		- Seguridad del sistema
		- Respuesta ante un ataque interno
		  
- Caja gris
	- Conocimiento parcial del sistema
		- IP
		- Credenciales
	- Útiles para medir la seguridad de los sistemas internos.
	  
- Caja negra
	- No tenemos ningún tipo de información
	- El objetivo es simular un ataque real, evaluando la capacidad del sistema para detectar y responder a los ataques.

## ELEMENTOS ESENCIALES DE SEGURIDAD

### Confidencialidad
Cualidad del mensaje / datos, el cual solo pueden ser accesible por las personas autorizadas.

### Integridad
Consiste en comprobar que la información / datos no han sido modificados

### Disponibilidad
Capacidad del servicio / datos para estar disponibles

### Autenticación
Consiste en verificar la identidad de un usuario mediante algún sistema de verificación

### No repudio
Permite comprobar quienes han participado en una comunicación
El origen no puede negar que mandó el mensaje
El destino no puede negar que recibió el mensaje.

## FASES DEL HACKING

### Reconocimiento
Fase inicial que consiste en recoger la mayor cantidad de información.

#### Footprinting
- Recopilación de información de manera no intrusiva
- Fuentes de información
	- Redes sociales
	- Sitios web de trabajo
	- Motores de búsqueda
	  
- Herramientas
	- Maltego
	- Spiderfoot
	- Ingeniería social
	- Harvester

#### Fingerprinting
Recopilación de información directamente de los sistemas informáticos

**Técnicas**

- **Sistema operativo**
	- Técnicas activas
		- Se envían paquetes al sistema objetivo y se analizan las respuestas observando los TTL, banderas TCP y el tamaño de los paquetes.
		- Nmap 
		  
	- Técnicas pasivas
		- No se envían paquetes, si no que se capturan para analizar características del sistema operativo.
		- p0F
		  
- **Servicios**
	- Usado para identificar servicios y versiones del software en ejecución, envían solicitudes específicas a cada puerto abierto.
	- Nmap -sV
	  
- **RED**
	- Se analizan las características de la red
		- Rango de IP
		- Topología
		- Routers
	- netdiscover 
	  
- **Aplicaciones web** 
	- Análisis de cabeceras HTTP
		- Podemos identificar CMS, versiones de los mismos ETC
		- Wappalyzer, WhatWeb
		  
	- Análisis de contenido
		- Consiste en observar el código fuente de una página, script, archivos etc
		- Whois
		  
- **Móviles y navegadores**
	- Se recopila información de estos para construir un perfil único
	- Se recopila
		- SO
		- Plugins
		- Resolución de pantalla
		- User-Agent

#### Escaneo
Se recopila información deallada sobre un sistema, red o aplicación

**Técnicas**
- Escaneo de puertos
	- TCP
		- Paquetes SYN
		- nmap -sS
	- UDP
		- Se envían paquetes UDP a cada puerto para detectar respuestas.
	- Completo
		- Se escanean todos los puertos
		  
- Escaneo de servicios
	- Después de identificar los puertos abiertos se deben determinar los servicios y versiones que se están ejecutando en esos puertos.
	  
- Escaneo de vulnerabilidades
	- Identifica las vulnerabilidades en los sistemas detectados
	- Nessus

**Obtener acceso**
El pentester gana acceso al sistema e intentará controlar los sistemas.
- Técnicas
	- Explotación de vulneabilades
	- Ataque de fuerza bruta
	- Ingeniera social
	- Ataques de inyección 
	- Ataques basados en la red
	- Escalada de privilegios
	- Ataques de malware
	- Ataques de contraseñas y hashes
	- Movimientos laterales

**Mantener el acceso**
En esta fase el atacante mantiene el acceso para recopilar infomación y escalar privilegios.

Técnicas
- Instalación de backdoors
- WebShells
- Rootkits
- Implantación de malware persistente
- Modificación de políticas de seguridad
- Túneles de proxy inverso

**Cubrir pistas**
Cuando el atacante ya tiene acceso, es muy importante no dejar nigún rastro para que el personal de seguridad no nos detecte.

Técnicas
- Borrando cache
- Borrando logs
- Borrando cookies

--- 
### SALT
Caracteres que se agregan de forma aleatoria a una contraseña.
Así, si hay 2 contraseñas iguales, tendrán hashes diferentes.

Como generarlo:

### Hash
Nº que identifica de forma única un elemento informático
		
Algoritmos Hash
- MD5
	- Es inseguro, asi que ya no se debe usar
	- Ante ficheros diferentes, da el mismo código 
- SHA256-SHA512
	- Más recomendados

### Comandos NMAP
nmap 192.168.1.54 -Pn -n -Sv -su -p- -sS 

- -Pn
	- No tires el 1º ping por si hay algún IDS/IPS) Sistema de detección/prevención de intrusos
- -n 
	- Evita que se haga la resolución de nombres
- -Sv
	- Para sacar versiones de los servicios
- -su
	- Para puertos UDP
- -p-
	- Para que escanee todos los puertos
- -sS
	- Realiza un escaneo SYN

### Ataque de fuerza bruta
```
crackmapexec smb 10.0.2.5 -u amadapa -p dic.txt --local-auth
```

### ¿Que es un proxy?
Servidor que actúa de intermediario entre un equipo (servidor) e internet.
Ofrece protección al servidor 


---
#### Comandos

```bash
whoami
ip a
netdiscover -r 10.0.2.0/24
ping 10.0.2.6 -c2
crunch 7 7 amdp -o dic.txt
crackmapexec smb 10.0.2.6 -u amadapa -p dic.txt –local-auth
seachsploit <servicio> 
echo "hash" | hashid
sqlmap -u "sitio web" --tables --dump
```
