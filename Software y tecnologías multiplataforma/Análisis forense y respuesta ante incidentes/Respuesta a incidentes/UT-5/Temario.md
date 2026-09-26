# Desarrollar procedimientos de actuación para la notificación de incidentes

## Pasos ante una filtración de datos

- Informar al responsable de la protección de datos y a la AGPD
- Solucionar las deficiencias de seguridad de la red
- Determinar que datos fueron expuestos
- Contactar con los clientes afectados
- Revisar medidas de seguridad existentes


### Etapa 1 - Identificación y notificación

#### Notificación del incidente
- Notificación desde el departamento de seguridad sobre el incidente
	- Identificar el tipo de incidente
	- El responsable será el Departamento de seguridad del proveedor del servicio
- Notificación del incidente desde el CERT, SOC etc
	- El responsable será el CERT o el SOC


#### Identificación de recursos afectados

- Identificar al responsable de seguridad del proveedor
	- Si no se puede poner en contacto con él, deberá de ser alguien con la misma responsabilidad
	- El responsable es el departamento de seguridad del proveedor del servicio
	
- Informar al responsable de seguridad del proveedor
	- El responsable es el CERT
	
- Elaborar un listado del personal que forma parte de cada uno de los servicios que proporciona el proveedor afectado
	- Personal de la entidad del proveedor
	
- Informar a los usuarios sobre el responsable de seguridad
	- El responsable es el CERT
- Verificar el personal 
	- El responsable es el GID - Gestión de la Identidad

#### Registro y Reporting

- Identificar los mecanismos de de comunicación existentes entre la Entidad y el Proveedor
- Investigar cualquier síntoma de alteración en el flujo de la información
	- El responsable es el CERT/SOC

- Registrar la información sobre el incidente en la plataforma de gestión de incidentes
	- El responsable es el departamento de Seguridad de la entidad

- Elaborar un informe detallado del incidente, el cual será contrastado por el proveedor
- Si el impacto es grave, se notificará al **Comité de Seguridad/Crisis**
- Revisar las obligaciones regulatorias / normativas existentes según el tipo de incidente.
	- El responsable es el CERT/SOC



### Etapa 2 - Análisis y Clasificación

 Con la información enviada por el proveedor, se llevará a cabo una clasificación del incidente para conocer su naturaleza y gravedad.


### Etapa 3  - Responder y Contención

**Medidas tecnológicas**
- Se cortar el tráfico de los túneles IPSEC
	- El responsable es el Departamento de Tecnología de la Entidad

- Bloquear todos los usuarios del sistema / bloquear el acceso a la VPN
	- El responsable es el Departamento de Tecnología de la Entidad / GID

- Bloquear
	- IOC
	- Firewall
	- Proxy
	- Antimalweare
	- IPs
	- Correo entrante
		- El responsable es el Departamento de Seguridad de la Entidad

- Dar de baja a los usuarios del proveedor de la NAC de la entidad
	- El responsable es el Departamento de Seguridad de la Entidad

- Desactivar las tarjetas de acceso a las instalaciones de los usuarios para impedir el acceso físico.
	- El responsable es el Departamento de Seguridad de la Entidad / GID


### Etapa 4  - Supervisión de las medidas y monitorización

**Supervisión de las medidas**
- Verificar que no existe tráfico IPSEC
	- El responsable es el Departamento de Seguridad de la Entidad

- Comprobar 
	- Los usuarios siguen bloqueados
	- Que no hay correo entrante en los MTA
- Mantener una interlocución frecuente con el Proveedor afectado
	- El responsable es el Departamento de Seguridad de la Entidad 

**Medidas especiales de monitorización**
- Monitorizar IOC detectados y hacer un seguimiento de los mismos
- Reforzar la revisión del SIEM y la actividad en la red.
	- El responsable es el Departamento de Seguridad de la Entidad / CERT

### Etapa 5  - Recuperación del servicio


**Entrega del informe de los equipos y las personas**
Este es un certificado que acredita que personas y que equipos van a tener acceso a la red de la Entidad
Se indica
- Nombre de la persona
- Lugar de trabajo
- Responsable del equipo
- Sociedad a la que presta servicio
- Permisos de esa persona 
- Equipo
- Versión del SO
- MAC
- Nombre del equipo
- Actualizaciones
- Confirmación de equipo limpio
	- El responsable es el Responsable de Seguridad del proveedor

**Informar al Comité de Seguridad / Crisis / Dirección**
Para poder evaluar y tomar la decisión de la readmisión de tráficos y conexiones, además de verificar que los equipos que se conectan a la red de la Entidad lo hacen a través de un segmento de red limpio.
- El responsable es el Departamento de Seguridad de la Entidad o el CERT/SOC

**Activar las tarjetas de acceso para lo usuarios**
- El responsable es el Departamento de Servicios Generales de la Entidad

**Revisar la documentación**
Para poder dar la conformidad y autorización a los Departamentos correspondientes para el desbloqueo de las medidas adoptadas
	El responsable es el Departamento de Seguridad de la Entidad


### Etapa 6  - Cierre del incidente

**Elaboración detallada del informe del incidente**
En el cual se especificará
- Vector de entrada del incidente
- IOCs
- Fecha de origen del incidente
- Acciones de remediación tomadas

Se deberá de entregar un certificado el cual asegura que ningún equipo de la Entidad ha sido afectado por el incidente
- El responsable es el Responsable de Seguridad del Proveedor

**Realizar informes de cierre**
- Técnico interno
- Técnico externo
- Ejecutivo interno
	- El responsable es el Responsable de Seguridad de la Entidad

### Notificación del incidente

A través de Lucia, la cual es una herramienta del CCN-CERT para entidades del ENS
A través del correo incidentes@ccn-cert.cni.es.


## Sistemas de Alerta Temprana - SAT

Sistema desarrollador por el CCN-CERT en el año 2008 cuyo objetivo consiste en actuar antes de que se produzca un incidente o al menos, detectarlo en un primer momento para poder reducir su impacto y alcance.

**Ejemplos**
- SAT ICS
- SAT INET
- SAT SARA

## Mando conjunto del ciberespacio

Antes conocido como el Mando conjunto de Ciberdefensa.
Es un órgano del **Estado Mayor de Defensa.** el cual es responsable de 
- Coordinación
- Control
- Ejecución de las acciones que aseguran la libertad de acción de las Fuerzas Armadas del ámbito ciberespacial.

El MCCE dirige y coordina la actividad de los CERT de los ejércitos:
- Ejerce la respuesta oportuna, legítima y proporcionada en el ciberespacio ante amenazas o agresiones que puedan afectar la Defensa Nacional
- Define, dirige y coordina la concienciación, formación y adiestramiento especializado en esta materia.
- Es el responsable del desarrollo y detalle de las políticas de Seguridad de la Información en los sistemas SEGINFOSIT.

## Predicción de amenazas para 2024

### Predicciones 2023

**Cumplidos**
- Aumento de ataques destructivos
- Los servidores de correo se convierten en objetivos prioritarios
- Hack-and-leak
- Malware entregado por SIGINT

**No cumplidos**
- Hackeo con drones
- Los grupos APT pasarán de Cobalt Strike a otras alternativas
- El próximo Wannacry
- La orientación de las APT se centra en
	- Tecnologías
	- Productores
	- Operadores satelitales


### Predicciones 2024

- Aumento de las hazañas creativas para móviles y dispositivos inteligentes
- Creación de nuevas botnets con software y dispositivos corporativos
- Rootkits de kernel más avanzados
- Crecimiento de ciberataques por parte de actores patrocinados por el Estado
- Hacktivismo en la guerra cibernética
- Ataques a cadenas de consumo como servicio
- Spear-phising con IA
- Aparición de más grupos que ofrecen piratería cómo servicio
- Los sistemas MFT, a la vanguardia de las ciberamenazas


## Pasos importantes en la detección de un incidente de ciberseguridad

- Precisión en la identificación de patrones de comportamiento anómalos
- Implementar sistemas de alerta temprana
- Colaboración entre equipos de seguridad y el intercambio de información
- Automatización de procesos de detección
- Integración de tecnologías de aprendizaje automático
- Auditoria regular de los registros de eventos
- Concienciación continua del personal
- Realizar simulacros
- Adoptar medidas de seguridad perimetral
- Actualizar las herramientas de detección 


