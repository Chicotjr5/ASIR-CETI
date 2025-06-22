## INTRODUCCIÓN

El bastionado de redes es una práctica importante en ciberseguridad, cuyo objetivo
es reducir la superficie de ataque y proteger los sistemas frente vulnerabilidades / amenazas.

Esto lo hace fortaleciendo las redes, sistemas operativos y aplicaciones.

### ELEMENTOS

- **Activos**
	- Elementos que tienen un valor para la organización / su funcionamiento
	- Ejemplos
		- Datos
		- Infraestructura
			- Física (equipos)
			- Lógica (red, servicios, software)

- **Riesgo**
	- Posibilidad de que una amenaza explote una vulnerabilidad
	- Tipos
		- Externos
		- Internos

- **Amenaza**
	- Cualquier evento / entidad que puede aprovechar una vulnerabilidad para causar daño
	- Tipos
		- Interna / Externa
		- Física / Lógica
		- Desastres naturales
		- Humana

- **Vulnerabilidades**
	- Debilidades / puntos frágiles en los sistemas, procesos o controles que pueden ser explotados por una amenaza
	- Tipos
		- Técnicas (Fallo de software)
		- No técnicas (Políticas de seguridad deficientes)

### CONCEPTOS CLAVE DEL BASTIONADO

- **Reducción de la superficie de ataque**
	- Eliminar  / deshabilitar servicios, protocolos y puertos no necesarios.
	- Al reducir los puntos de entrada, se disminuyen las posibilidades de ataque.

- **Actualización y parches de seguridad**
	- Mantener los sistemas actualizados y aplicar los parches de seguridad
	  para evitar la explotación de vulnerabilidades conocidas
	
- **Seguridad por defecto**
	- Hay que asegurarse que los sistemas estén configurados de manera segura
	  desde su instalación inicial, deshabilitando servicios innecesarios.
	  
- **Configuración de Firewalls y ACL**
	- Para filtrar el tráfico de E/S y restringir el acceso.
	
- **Seguridad de contraseñas y autenticación**
	- Implementar
		- Políticas de contraseñas
		- MFA
		- Mecanismos de identificación
	
- **Auditoría y monitoreo**
	- Para detectar y responder ante comportamientos sospechosos o 
	  potenciales intrusiones.
	  
-  **Control de acceso**
	- Principio de privilegios mínimo
		- Cada usuario / sistema tiene el nivel de acceso justo y necesario.

### PASOS BÁSICOS PARA BASTIONAR

- **Evaluación inicial**
	- Análisis exhaustivo de las configuraciones actuales
	  
- **Eliminación de Servicios no Necesarios**
  
- **Aplicación de políticas de seguridad**
	- De contraseñas
	- Autenticación
	- Acceso a recursos
	  
- **Asegurar las comunicaciones**
	- Cifrado de datos
		- HTTPS, SSH, VPN
		  
- **Revisión y auditoría regular**
	- Monitorizar y revisar los sistemas

### BENEFICIOS DEL BASTIONADO

- Reducción de riesgos
- Mayor resiliencia
- Cumplimento normativo

## ANÁLISIS DE RIESGOS

El objetivo principal es determinar los riesgos que pueden impactar en los activos de la organización y establecer medidas de seguridad para mitigarlos o gestionarlos de manera eficaz.

### CONCEPTOS CLAVE 

- **Impacto**
	- Daño o consecuencia que se produce al materializarse un riesgo.
	- Tipos
		- Financiero
		- Operativo
		- Reputación
	
- **Probabilidad**
	- Posibilidad de que una amenaza se materialize
		- Alta
		- Media
		- Baja

### PASOS DEL ANÁLISIS DE RIESGOS

**Identificar activos**
	- Junto con su **valor** y **criticidad**.
	  
- **Identificar amenazas y vulnerabilidades**
	- Posibles vulnerabilidades de los activos
	- Amenazas que podrían explotar esas vulnerabilidades
  
- **Evaluación de riesgos**
	- Se evalúa la probabilidad de que una amenaza explote una vulnerabilidad y el impacto que tendría sobre la organización.
	  
- **Priorización de riesgos**
	- Cuanto mayor impacto tenga un riesgo, mayor será su criticidad
	- Impacto x Riesgo = criticidad
	  
- **Establecimiento de controles**
	- Preventivos
	- Detectivos
	- Correctivos
	  
- **Monitoreo y revisión continua**

### TIPOS DE RESPUESTA A LOS RIESGOS

- Evitar el riesgo
- Mitigarlo
- Transferirlo
- Aceptarlo

### PRINCIPIOS DE LA ECONOMÍA CIRCULAR EN LA INDUSTRIA 4.0

### ¿QUÉ ES LA ECONOMÍA CIRCULAR?

Modelo económico que busca reducir al mínimo la generación de residuos y el uso de recursos.

Principios
- Diseño para la durabilidad, reparación y reciclaje
- Reutilización de recursos
- Regeneración de ecosistemas naturales
- Minimización de residuos

### ¿QUÉ ES LA INDUSTRIA 4.0?

4º Revolución industrial, impulsada por la digitalización y el uso de 
Tecnologías Avanzadas
- IoT
	- Gestión eficiente de energía
- Big Data
	- Analizar patrones de tráfico
- BlockChain
	- Trazabilidad de equipos
- IA
- Automatización robótica
- Impresión 3D

#### Principios

- **Optimización de recursos mediante Big Data e IoT**
	- Estas tecnologías permiten un  monitoreo preciso de la cadena de producción, 
	  facilitando la identificación de desperdicios y optimizando los procesos.
	  
- **Fabricación aditiva**
	- Mediante la impresión 3D, se pueden construir piezas y productos muy demandos
	  usando los materiales justos y necesarios.
	  
- **Automatización y eficiencia energética**
	- Habilitada por robótica e IA
	- Permite procesos de producción más eficientes
	  
- **Mantenimiento predictivo**
	- A través del uso de sensores y análisis de datos
	- Prolonga la vida útil de los activos
	  
- **Cadenas de suministro**
	- La blockchain facilita la trazabilidad de los productos a lo largo
	- de la cadena de suministro
	- 
- **Economía compartida**
	- Facilita la creación de plataformas digitales para la economía.

#### Beneficios

- Reducción del impacto ambiental
- Ahorro de costes
- Mayor competitividad
- Innovación
- Mayor resiliencia

#### Conclusión
- La industria 4.0 facilita la adopción de los principios de la economía circular permitiendo a las 
  empresas optimizar el uso de recursos, reduciendo su impacto ambiental y aumentando
  su competitividad.

## PLAN DE MEDIDAS TÉCNICAS DE SEGURIDAD

Documento que describe las acciones y controles que se deben implementar para proteger
los activos y sistemas de una organización frente amenazas y vulnerabilidades.

**Objetivos**
- Reducir riesgos
- Garantizar CID

Proporciona un enfoque claro para proteger sistemas y datos
### COMPONENTES CLAVES DE UN PLAN DE MEDIDAS TÉCNICAS DE SEGURIDAD

- **Análisis y evaluación de riesgos**
	- Identificar
		- Activos críticos
		- Amenazas
		- Vulnerabilidades
		- Impacto
		  
- **Políticas de seguridad de la información**
	- Deben ser clareas y abarcar aspectos como
		- Acceso a la información
		- Protección de datos sensibles
		- Almacenamiento
		- Transmisión segura de los datos
		  
- **Controles de acceso**
	- Solo las personas autorizadas pueden acceder a x recursos
		- MFA
		- Políticas de contraseñas seguras
		- Principio de privilegios mínimos
		  
- **Cifrado de datos**
	- Cifrado en tránsito
		- Uso de protocolos seguros como **SSL/TLS**
	- Cifrado en reposo
		- Cifrar los datos almacenados
		  
- **IDS/IPS**
	- IDS
		- Monitoriza el tráfico de red para identificar posibles amenazas
	- IPS
		- Puede bloquear automáticamente actividades sospechosas

- **Firewall y segmentación de datos**
	- El Firewall filtra el tráfico de red para impedir acccesos no autorizados
	- Y la segmentación de red permite separar la misma en diferentes zonas, minimizando
	  el impacto de los posibles ataques.
	  
- **Gestión de vulnerabilidades**
	- Esencial para reducir los riesgos de ataques que aprovechan debilidades desconocidas
		- Escaneo rutinario de vulnerabilidades
		- Implementación de parches y actualizaciones de software
		- Gestión de configuraciones seguras
		  
- **Copia de seguridad**
	- Al tener copias de seguridad los datos pueden recuperarse fácilmente, reduciendo en gran medida el impacto de un ataque.
	- Es fundamental tener los datos almacenados de manera segura y probar el proceso de recuperación.
	  
- **Monitoreo**
	- Necesario para identificar comportamientos extraños.
		- SIEM
		  
- **Gestión de incidentes**
	- Este asegura que el equipo de ciberseguridad pueda responder ante una brecha de seguridad.
	- Este plan ha de contar con procedimientos claros
	  
- **Concienciación del personal**
	- Necesario para que el personal este al tanto de 
	- Las políticas de seguridad, 
	- Las mejores prácticas
	- Los riesgos cibernéticos emergentes

### EJEMPLOS DE MEDIDAS TÉCNICAS

- Control de acceso a dispositivos físicos
- Autenticación biométrica
- Seguridad del correo electrónico
- Seguridad en móviles
- Análisis forense digital

### BENEFICIOS DE UN PLAN DE MEDIDAS TÉCNICAS DE SEGURIDAD

- Reducción del riesgo
- Cumplimiento normativo
- Protección de la reputación
- Continuidad del negocio

## POLÍTICAS DE SECURIZACIÓN

#### Política de seguridad de la información

**Objetivos**
- Asegurar CID

**Contenido**
- Directrices sobre el uso adecuado de
	- Sistemas
	- Control de acceso
	- Tratamiento de datos sensibles
	- Responsabilidades de los empleados

### Política de control de acceso
Regula quien tiene acceso a los sistemas y datos y como se controla ese acceso


- Medidas comunes
	- MFA
	- IAM
	- Principio de privilegios mínimo
	- Prohibición del uso de contraseñas repetidos / débiles

### Política de cifrado
Que tipo de cifrado se usa y en que condiciones se cifra

- Medidas
	- SSL/TLS
	- Cifrado de datos en servidores
	- Cifrado de copias de seguridad
	- Cifrado de contraseñas

### Política del uso aceptable
Comportamiento que debe seguir los usuarios al usar los recursos de la organización
Estos recursos son:
- Redes
- Equipos
- Aplicaciones

Medidas
- Prohibir descargas de software ilegítimo
- Restringir el acceso a x sitios web
- Uso adecuado del correo electrónico

### Política de gestión de incidentes de seguridad
Establece los procedimientos a seguir en caso de que ocurra un incidente, asegurando una respuesta y minimizando el impacto de los incidentes.

Medidas
- Definir el tipo de incidentes que serán reportados
- Comunicación de los incidentes a los afectados y autoridades
- Asignar responsabilidades

### Política de copia de seguridad

Medidas
- Frecuencia de copias
- Cifrado de backups
- Almacenamiento seguro de las copias
- Pruebas regulares de la restauración de los datos

### Política de gestión de vulnerabilidades
Como se evalúan y corrigen las posibles vulnerabilidades del sistema

Medidas
- Escaneo periódico de vulnerabilidades
- Gestión y aplicación de parches y actualizaciones
- Evaluación de riesgos

### Política de seguridad en móviles

Medidas
- Cifrado
- Autenticación segura
- Control de acceso y borrado remoto
- Reglas para el uso de dispositivos propios

### Política de seguridad en la red

Para proteger la infraestructura de red de la organización

Medidas
- Firewall
- IDS/IPS
- Segmentación de red

### Política de gestión de medios removibles

Como se han de manejar los USB, discos externos etc

Medidas
- Cifrado para los datos almacenados
- Prohibir dispositivos no autorizados
- Escaneo de malware antes de usar los dispositivos

### Política de gestión de registros y auditoría

Requisitos para
- Almacenamiento
- Protección
- Análisis de los logs

Medidas
- Conservación de registros de acceso, actividades y eventos de seguridad
- Monitoreo regular y auditorías de registros

### Política de privacidad y protección de datos

Reglamento General de Protección de Datos

Medidas
- Procedimientos para la protección de los datos
- Derechos de los usuarios sobre sus datos.


### ¿Cómo crear una política de seguridad?

1. Identificar el objetivo y alcance de la política
	1. ¿Qué se va a proteger?
	2. ¿Contra que?
	3. ¿Quién necesita acceso y desde donde?
2. Definir principios básicos de seguridad
	4. Principio de menor privilegio
	5. Segregación de tráfico
	6. Registro y auditoría
3. Toma de decisiones clave
	1. Trafico entrante y saliente
	2. Segmentación de red
4. Elementos a tener en cuenta
	1. Zonas de red
	2. IP y rangos
	3. Puertos

## FIREWALL

Sistema de seguridad que actúa como una barrera entre nuestra red interna e Internet, controlando y filtrando el tráfico entrante y saliente.

**Tipos**
- Software
- Hardware
- Híbridos

### Para que se usa un Firewall

- Proteger redes internas
- Controlar el tráfico
- Mitigar ataques

### Elementos clave 

- Reglas de acceso
	- Se usa el principio de menor privilegio
- Zonas de red
	- Zona confiable - Red interna
	- Zona no confiable - Internet
	- Zona DMZ - Zona intermedia para servicios / servidores
- Filtros IP y puerto
- Logs
- IDS/IPS
- Políticas 
