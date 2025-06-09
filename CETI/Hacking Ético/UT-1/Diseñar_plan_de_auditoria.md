## Índice

- [Introducción](#introducción)

- [Auditoría del servidor web](#auditoría-del-servidor-web)
  - [Activos incluidos](#activos-incluidos)
  - [Justificación](#justificación)
  - [Tipo de auditoría](#tipo-de-auditoría)
  - [Objetivo](#objetivo)

- [Auditoría del servidor de correo](#auditoría-del-servidor-de-correo)
  - [Activos incluidos](#activos-incluidos-1)
  - [Justificación](#justificación-1)
  - [Tipo de auditoría](#tipo-de-auditoría-1)
  - [Objetivo](#objetivo-1)

- [Auditoría del servidor VPN](#auditoría-del-servidor-vpn)
  - [Activos incluidos](#activos-incluidos-2)
  - [Justificación](#justificación-2)
  - [Tipo de auditoria](#tipo-de-auditoria)
  - [Objetivo](#objetivo-2)

- [Auditoría de las políticas de seguridad](#auditoría-de-las-políticas-de-seguridad)
  - [Activos incluidos](#activos-incluidos-3)
  - [Justificación](#justificación-3)
  - [Tipo de auditoría](#tipo-de-auditoría-2)
  - [Objetivo](#objetivo-3)

- [Auditoría de Seguridad de la Red Interna](#auditoría-de-seguridad-de-la-red-interna)
  - [Activos incluidos](#activos-incluidos-4)
  - [Justificación](#justificación-4)
  - [Tipo de auditoría](#tipo-de-auditoría-3)
  - [Objetivo](#objetivo-4)


## Introducción:

En esta práctica se va a realizar un plan de auditoría bajo el siguiente contexto:


Eres un gestor de proyectos de una empresa que se dedica a las reservas hoteleras. 
Tienes que diseñar un plan de auditoría para este primer trimestre. 
Además, el presupuesto asignado para este trimestre sólo permite que se realicen un máximo de 5 auditorías. 
Por otro lado, al diseñar el tipo de auditorías que se realizará tienes que tener en cuenta las siguientes premisas:


- La empresa tiene un total de 20 activos expuestos a internet entre servidores web, servidores de correo, acceso VPN. 
- De estos 20 activos, 3 de ellos se consideran críticos para el negocio 
- Además, también les interesa realizar una primera revisión de la red interna

---

### Auditoría del servidor web
#### Activos incluidos

- CMS utilizado
- Base de datos de la aplicación web 
- Equipo físico donde se encuentra alojado 
- Archivos de configuración del servidor

#### Justificación

El servidor web aloja el sitio web de la empresa. 
En el sitio web de la empresa es donde se realizan el 96% de reservas hoteleras (el resto se realizan de forma presencial) siendo una de las mayores fuentes de ingresos. Por lo que si se ataca / vulnera el sitio web y este deja de funcionar, la empresa estaría en serios problemas debido a que no podría operar de forma correcta y tendrían una gran pérdida de dinero y reputación.


#### Tipo de auditoría

**Enfoque**
- Auditoría de seguridad + pentesting de caja blanca

**Origen**
- Interno y externo
**Información proporcionada**
- Lista de vulnerabilidades
	- Listado completo de todas las vulnerabilidades detectadas en los activos críticos junto con una clasificación de estas según su gravedad.
- Riesgos e impacto
	- Evaluación de los riesgos asociados a cada vulnerabilidad.
	- Evaluación del impacto que estas vulnerabilidades podrían tener en el negocio si fueran explotadas.
- Métodos de explotación
	- Descripción de cómo se pueden explotar estas vulnerabilidades, añadiendo una demostración real de cómo se han vulnerado.
- Mitigación de las vulnerabilidades
	- Qué medidas se han de tomar para eliminar todas las vulnerabilidades que se han detectado y explotado durante la auditoria / pentesting.

#### Objetivo

Identificar, explotar y mitigar vulnerabilidades en el servidor web y sus activos para asegurar el funcionamiento correcto de la web de la empresa.

---

### Auditoría del servidor de correo
#### Activos incluidos
- Cuentas de correo
- Filtro de spam
- Servidor SMTP – servidor IMAP

#### Justificación
A través del servidor de correo los empleados se pueden comunicar entre sí, además de que si los clientes tienen algún tipo de problema tienen la opción de mandar un correo a la empresa. 

Si el servidor de correo fallase dificultaría el trabajo de la empresa en gran medida, porque sus empleados no podrían trabajar de forma correcta.

Y ya no solo si falla, si no que si es vulnerado y los ciberdelincuentes acceden a él, obtendrían muchos datos importantes de la empresa y los empleados.

#### Tipo de auditoría

**Enfoque**
- **Auditoría de seguridad y rendimiento**

**Origen**
- Interna

**Información proporcionada**
- Uso y actividad de las cuentas de correo
	- Comprobar si la configuración de seguridad de las cuentas de correo no es deficiente y conocer cuántos correos gestiona cada día el servidor de correo.
- Eficacia del filtro de spam
	- Evaluación de la efectividad del filtro en la detección y bloqueo de correos no deseados para comprobar que no da falsos positivos y filtra de manera correcta los correos.
- Configuración y seguridad del servidor SMTP e IMAP
	- Para asegurar que la configuración de estos servidores es la correcta, garantizando una comunicación entre los empleados eficiente y segura
	- No solo eso si no que también se comprobará la seguridad de estos, para ver si un atacante puede llegar a acceder a los mismos o no.

#### Objetivo

Comprobar el correcto funcionamiento del servidor de correo, además de verificar su seguridad y su capacidad de procesamiento.


---

### Auditoría del servidor VPN
#### Activos incluidos

- Clientes VPN
- Cifrado usado
- Registros y monitoreo

#### Justificación
Los empleados, para acceder a cualquier recurso en internet, usan la VPN, así que si la misma está mal configurada o no funciona correctamente sería una brecha importante de seguridad, porque las comunicaciones dejan de ser tan seguras.

#### Tipo de auditoría

**Enfoque**
- Seguridad y eficacia del servidor
**Origen**
- Interno
**Información proporcionada**
- Configuración de seguridad del servidor VPN
	- Comprobar que el servidor VPN cuenta con unas políticas / configuraciones de seguridad adecuadas, además de ver que el cifrado utilizado es lo suficientemente seguro.
- Capacidad de procesamiento
	- Saber cuál es el límite de procesamiento del servidor, para conocer el límite de peticiones que puede gestionar.
- Analizar los log
	- Para saber que empleados están accediendo a la VPN y donde están accediendo.

#### Objetivo

Revisar que el servidor de VPN cuenta con la suficiente capacidad de procesamiento para atender todas las solicitudes de uso por parte de los empleados.
Ver si cuenta con unas configuraciones de seguridad adecuadas y con cifrados robustos.

---

### Auditoría de las políticas de seguridad
#### Activos incluidos

- Políticas de contraseñas
- Políticas de permisos / privilegios de los empleados
- Formación de ciberseguridad de los empleados
- Políticas de copias de seguridad

#### Justificación
De poco sirve toda la seguridad lógica / física que tengan los servidores y todos los equipos importantes si no hay unas políticas de ciberseguridad adecuadas.

#### Tipo de auditoría

**Enfoque**
- Cumplimiento de las normativas y políticas de ciberseguridad establecidas por la empresa
**Origen**
- Interno
**Información proporcionada**
- Configuración de las políticas de contraseñas
	- Comprobar que no hay ninguna política deficiente
- Qué formación de ciberseguridad proporciona la empresa
	- Comprobar si el plan de formación de los usuarios es bueno/eficaz o si por el contrario no lo es.
	- También ver si existe o no
- Comprobar políticas de uso de los equipos / cuentas de la empresa
	- Horarios de uso de los equipos, en que equipos pueden acceder los empleados a sus cuentas, cuando pueden hacerlo etc
- Revisar las políticas de copias de seguridad
	- Cada cuanto se hacen, que tipo de copias se hacen, de que archivos se hacen copias etc.

#### Objetivo

Comprobar que las políticas de ciberseguridad que ha establecido la empresa son buenas y tienen sentido o si por el contrario son deficientes.

---

### Auditoría de Seguridad de la Red Interna
#### Activos incluidos

- Segmentos de red interna
	- Subredes
	- Sistemas de seguridad perimetral
- Dispositivos de interconexiones de redes
	- Switches, routers, proxys, firewalls
	- Configuraciones de cada dispositivo

#### Justificación
Es necesaria para identificar posibles puntos débiles / vulnerabilidades en la red de la empresa, los cuales podrían ser explotados por atacantes internos o externos.
En caso de que la red de la empresa dejara de funcionar o fuera vulnerada, sería una catástrofe. 
Se filtrarían datos, los servidores dejarían de funcionar, suponiendo en graves pérdidas de dinero.

#### Tipo de auditoría

**Enfoque**
Auditoría de seguridad + pentesting de caja blanca

**Origen**
Interno y externo

**Información proporcionada**
- Auditoría
	- Información sobre configuraciones incorrectas o subóptimas en los dispositivos de red y en la propia segmentación de la red
	- Detalles sobre las vulnerabilidades encontradas
	- Impacto potencial de esas vulnerabilidades si llegan a ser explotadas
- Pentesting
	- Explotación de todas las vulnerabilidades encontradas
		- Para comprobar que realmente la red es vulnerable
	- Mitigación de las vulnerabilidades
		- Sugerencias sobre cómo corregir o eliminar las vulnerabilidades encontradas

#### Objetivo
Hay que asegurar que la red interna esté configurada de manera segura. 
Además de que en caso de que las haya vulnerabilidades, explotarlas y luego añadir recomendaciones para eliminarla.

