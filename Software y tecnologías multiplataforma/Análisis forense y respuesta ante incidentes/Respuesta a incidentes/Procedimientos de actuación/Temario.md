## DESARROLLANDO PROCEDIMIENTOS DE ACTUACIÓN

Las empresas y los gobiernos toman **medidas coordinadas** para limitar y contener a los delincuentes cibernéticos:

- Creación de bases de datos de firmas conocidas de ataques y vulnerabilidades del sistema
	- CVE  - CWE 
- Establecer sensores de advertencia temprana y redes de alerta
- Intercambio de información 
	- Las empresas, organismos gubernamentales y países colaboran para compartir información sobre los ataques con el objetivo de evitar ataques similares en otras organizaciones.
- Establecimiento de estándares
	- ISO/IEC 27001
- Promover la creación de nuevas leyes para desalentar los ataques cibernéticos 


## ASEGURANDO LA DISPONIBILIDAD

- Comprobación de los sistemas
- Mantenimiento del equipo
- Actualizaciones del SO
- Sistema de copias de seguridad
- Planificación para evitar desastres
- Implementación de tecnologías
- Supervisión de los sistemas

## MITIGACIÓN

Consiste en la reducción de la gravedad de la pérdida o de la probabilidad de la pérdida.

### Maneras

- **Aceptar**
	- Reevaluar periódicamente los riesgos aceptados 
- **Reducir**
	- Contención del riesgo desde el principio
- **Evitar**
	- Evitarlo
- **Transferir**
	- Transferirlo a una agencia externa

La medida de mitigación más adecuada suele ser realizar un borrado seguro de los medios de almacenamiento comprometidos y una reinstalación del sistema, aunque no siempre es posible.

Volver a poner un sistema en producción sin saber la causa del ataque puede ocasionar un nuevo problema similar.

Antes de poner de nuevo un sistema en producción, se recomienda realizar una auditoria de seguridad.

## CONTENCIÓN

Esta es la fase en la que se toman las decisiones de una forma más rápida, debido a que el tiempo es un factor determinante y la reputación la continuidad del negocio están en juego

**Acciones**

- Desconectar el equipo o segmento de red
- Si el ataque afecta a equipo críticos, poner un firewall en un segmento intermedio (DMZ)
- Reubicar los equipos comprometidos
- Contactar con 3º entidades

Una vez se ha contenido el problema, se iniciaran los procesos de toma y preservación de evidencias.

### RECUPERAR

Capacidad de las organizaciones para restaurar sus servicios tras un ciberataque.

### Gestión de incidentes

En al gestión de incidentes se mide la capacidad para identificar aquellos eventos susceptibles a convertirse en un incidente de ciberseguridad.

- Habrá que establecer un proceso para la detección y notificación de eventos 
	- IDS/IPS/SIEM/SOC
- Además de establecer un procedimiento para clasificar y valorar incidentes de ciberseguridad.
- Documentar y transmitir que faciliten la identificación y reconocimiento de un incidente de ciberseguridad.
- Elaborar un procedimiento que permita identificar las acciones necesarias para la resolución de los incidentes en el menor tiempo posible.
- Estimar la capacidad de respuesta ante un incidente
- Comunicar los incidentes a las autoridades.

### Gestión de la continuidad del negocio

Su objetivo es el de establecer procesos para:
- Desarrollar
- revisar
- Probar
- Ejecutar los planes de continuidad

Se recomienda:
- Respaldar los servicios que ofrece la organización con un **Plan de continuidad** 
- Probar el plan de continuidad
	- Viabilidad
	- Precisión

### Medidas de protección tecnológicas con base de software

- Firewall
- Escáneres de redes
- Escáneres de vulnerabilidades

### Medidas de protección tecnológicas con base de hardware

- Firewall
- IDS/IPS
- Servicios de filtrado de tráfico

### Medidas de protección tecnológicas con base en la red

- VPN
- NAC - Control de acceso a la red
- Seguridad de punto de acceso inalámbrico

### Medidas de protección tecnológicas con base en la nube

- SaaS
- IaaS
- PaaS


### Políticas

Conjunto de objetivos de seguridad para una empresa que incluye las reglas del comportamiento de usuarios y administradores y para especificar los requisitos del sistema.

**Tareas**
- Compromiso de una organización con la seguridad
- Reglas para el comportamiento esperado
- Uniformidad de las operaciones en el sistema
- Consecuencias legales de las violaciones


Estas políticas **incluyen**
- Autenticación e identificación
- Contraseña
- Uso aceptable
	- Identifican los recursos y el uso de red que son aceptables para la organización
- Acceso remoto
- Mantenimiento de red
- Manejo de incidentes

## IMPLANTAR CAPACIDADES DE CIBER-RESILIENCIA

**Ciber resiliencia** 
- Capacidad que tiene una empresa para hacer frente a un ciberataque y mermar sus consecuencias
### Empresa ciberresiliente

**Pasos**

- Efectuar un análisis de riesgos
- Contar con sistemas complejos de prevención
- Incorporar mecanismos de protección
	- Filtrado de web
	- Posibles intentos de Phising
- Recuperar el control


**Ventajas de la ciber-resiliencia** 
- Se reducen las posibilidades de un ataque
- Se garantiza que el negocio siga funcionando

### IMC - Indicadores para la mejora de la Ciber-resiliencia

Instrumento de diagnostico y medición de la capacidad de las organizaciones para soportar a desastres y perturbaciones digitales.
Permite a las organizaciones medir su capacidad para:
- Anticiparse
- Resistir
- Recuperarse
- Evolucionar ante incidentes.

---


## Apuntes de clase

```bash
nuclei -u http://norsol.cl -silent -output nucelireport
```
Lanza reglas (yara) y clasifica vulnerabilidades posibles en alta / media / baja

canarytokens.org - permite hacer un x que perite hacer un seguimiento de la herramienta
cobal strike - parecido a metasploit
### MATRIZ DE RIESGOS

Una matriz de riesgos ha de contemplar

- Administración
	- Pérdida de personal clave
- Técnico
	- Daño de equipos
- Operativo
	- Falta de capacitación del personal 

Estos son solo algunos ejemplos, cada empresa tendrá sus propios problemas 

### Análisis de riesgos

**Frecuencia**
- Bajo - +1 año - Impacto bajo
- Medio - 2-12 meses - Impacto medio
- Alto - <2 meses - Impacto alto

**Categorización**
Descripción de los riesgos

#### Impacto

- Mínimo - 1 - Bajo
- Medio - 2 - La empresa sigue trabajando
- Alto - 3 - Fallo total

### Tabla de riesgos

categoría + riesgos + alto,medio,bajo

### Tabla total

Riesgos + impacto


## MITRE

Es un Framework de trabajos de ciberseguridad donde se habla de técnicas y tácticas, además de la documentación de las mismas.
Es muy utilizado en grandes empresas pero no tiene sentido en pequeñas
Base de conocimientos dinámico que está en constante actualización por la comunidad
Tiene mucha información sobre las técnicas de los atacantes

#### Lenguajes

- Sitx2
- Taxxi

### Caldera

Plataforma de código abierto usada para la simulación de adversarios y automatización de ciberseguridad.
Desarrollada por MITRE y permite a los equipos de ciberseguridad probar sus defensas ejecutando tácticas y técnicas basadas en MITRE ATT&CK.

Permite mejorar
- Respuesta ante incidentes
- Automatizar pruebas de seguridad.

