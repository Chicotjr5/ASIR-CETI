<details>
  <summary><h2>Índice</h2></summary>
  
- [Introducción](#introducción)
- [Análisis del cumplimiento normativo](#análisis-del-cumplimiento-normativo)
  - [¿Qué normativas se aplican a SecureCorp y por qué?](#qué-normativas-se-aplican-a-securecorp-y-por-qué)
  - [¿Cuáles son las principales obligaciones de la empresa bajo estas normativas?](#cuáles-son-las-principales-obligaciones-de-la-empresa-bajo-estas-normativas)
  - [¿Qué sanciones podrían aplicarse en caso de incumplimiento?](#qué-sanciones-podrían-aplicarse-en-caso-de-incumplimiento)
- [Identificación de riesgos](#identificación-de-riesgos)
  - [Fuga de datos personales](#fuga-de-datos-personales)
  - [Protección inadecuada de infraestructuras críticas](#protección-inadecuada-de-infraestructuras-críticas)
  - [Falta de un plan de continuidad del negocio](#falta-de-un-plan-de-continuidad-del-negocio)
  - [Transferencia de datos a EE.UU sin garantizar medidas adecuadas](#transferencia-de-datos-a-eeuu-sin-garantizar-medidas-adecuadas)
- [Propuesta de soluciones](#propuesta-de-soluciones)
- [Uso de la herramienta PILAR](#uso-de-la-herramienta-pilar)

</details>

---

## Introducción

En esta práctica hay que aplicar una serie de normativas de ciberseguridad sobre el siguiente escenario: 

Tu empresa ficticia, SecureCorp, ha crecido rápidamente y ahora maneja datos sensibles de clientes europeos, además de estar trabajando con la Administración Pública. 
Una consultora externa ha detectado posibles deficiencias en el cumplimiento de las normativas de ciberseguridad y protección de datos.
Como equipo de ciberseguridad interno, debes identificar riesgos, evaluar el cumplimiento normativo y proponer medidas correctivas. 

Datos de la empresa:  
- 50 empleados con acceso a información confidencial.  
- Servidores propios y almacenamiento en la nube.  
- Procesamiento de datos personales de clientes europeos.  
- Uso de VPN para acceso remoto de empleados.  
- Falta de revisiones de seguridad documentadas. 

Las normativas por aplicar son las siguientes: 
- ISO 27001 
- ENS 
- GPDR 
- LOPGDD 
- NIST 

---

## Análisis del cumplimiento normativo

### ¿Qué normativas se aplican a SecureCorp y porqué?
### ¿Cuáles son las principales obligaciones de la empresa bajo estas normativas? 
### ¿Qué sanciones podrían aplicarse en caso de incumplimiento? 

**GDPR – Reglamento General de Protección de Datos**

Esta normativa se aplica porque SecureCorp maneja datos personales de clientes. 

Sus principales obligaciones son las de garantizar la seguridad y privacidad de los datos, establecer procedimientos para la notificación de cualquier brecha de seguridad en menos de 72 horas y regular la transferencia de datos tanto fuera de la Unión Europea como a EEUU, entre otras. 

Algunas de las sanciones por incumplir esta normativa con multas que van hasta 
los 20 millones de euros o un 4% de la facturación anual. 

---

**LOPDGDD - Ley Orgánica de Protección de Datos y Garantía de los Derechos Digitales**

Esta normativa se aplica debido a que SecureCorp maneja datos de  ciudadanos españoles y porque opera en España (no se dice en el enunciado, pero como es NUESTRA empresa ficticia pues se sobreentiende que es española). 

Algunas de sus obligaciones son la implementación de medidas especificas para la protección de esos datos personales, la regulación de los derechos digitales de los empleados y ampliar algunas de las diposiciones del GPDR en España. 

Las sanciones por no cumplir esta normativa suelen ser multas económicas aunque también hay sanciones administrativas.

---

**ENS - Esquema Nacional de Seguridad, España**

Como bien se indica en el enunciado, SecureCorp es una empresa que trabaja con la administración pública, así que si o si deberá de cumplir con el ENS. 
Algunas de sus obligaciones son realizar auditorias de seguridad periódicas, definir una política de seguridad formar o implementar un control de acceso y monitorización en esos sistemas que manejen información sensible. 

En caso de no cumplir, las sanciones no serán económicas o administrativas, si no que se puede llegar a restringir las operaciones con entidades gubernamentales. 

---

**ISO 27001 - Norma Internacional de Seguridad de la Información**

Esta norma se ha de aplicar debido a que SecureCorp gestiona información confidencial y necesita una gestión segura de esa información. 

Algunas de sus obligaciones son implementar un SGSI (Sistema de gestión de la Información),m definir políticas para el control de acceso, protección de los servidores y el almacenamiento en la nube y realizar auditorías de seguridad 

El no cumplir con la ISO 27001 puede provocar con la perdida de certificaciones y con daño reputacional. 

---

**ISO 22301 – Continuidad del negocio**

Como la empresa no tiene un plan claro ante ciberataques y les faltan revisiones de seguridad documentadas se ha de aplicar esta norma. 

Las obligaciones de la empresa serán definir un plan de continuidad del negocio y recuperación de este ante un ciberataque y establecer diferentes procedimientos de backup y redundancia en los sistemas. 

En caso de no aplicar estos puntos, no habrá sanciones, si no que la empresa perderá datos y activos críticos. 

---

**NIST CSF** 

Esta es una normativa estadounidense, por lo que no es obligatorio para SecureCorp cumplirla, antes deberían de cumplir con la NIS, NIS2 debido a que estas son europeas, pero muchas otras empresas europeas implementan esta normativa, aunque en mi caso SecureCorp no lo va a hacer. 

Las principales obligaciones serían realizar evaluaciones de riesgos en activos críticos (servidores, VPN) e implementar un marco de seguridad basado en: 
**Identificar, Proteger, Detectar, Responder y Recuperar.**

Al igual que con la ISO 22301, no hay consecuencias legales o multas económicas por no cumplirlo, si no que se aumenta el riesgo de ataques y brechas de seguridad que pueden ser aprovechadas por ciberdelincuentes. 

---

## Identificación de riesgos

### Fuga de datos personales

Un empleado ha descargado información de clientes en su USB personal sin cifrar. 
Las normativas que se pueden aplicar son:

**GPDR**

- La empresa ha de garantizar la integridad y confidencialidad de los datos personales
- Se exige la aplicación de medidas técnicas como el cifrado y el control de acceso

**LOPDGDD**

- La empresa está obligada a implementar medidas de seguridad al manipularse datos personales

**ISO 27001**

- Exige controles para evitar el acceso no autorizado a este tipo de información
- Recomienda el cifrado de dispositivos y el almacenamiento seguro

**ENS**

- Como SecureCorp trabaja con administraciones públicas, deberá de implementar medidas de seguridad en dispositivos extraíbles

---

### Protección inadecuada de infraestructuras críticas

No se han definido controles de acceso adecuados en los servidores de la empresa.

**GPDR**

- Si en los servidores se almacenan datos personales, la falta de esos controles puede comprometer la integridad de esos datos y puede conducir a una violación de la confidencialidad

**LOPDGDD**

- Si hay datos personales en los servidores, también se aplica la LOPDGDD.
- Esta obliga a implementar medidas de seguridad apropiadas y específicas, además de garantizar la correcta gestión y protección de la información.

**ISO 27001**

- Esta norma se aplica porque establece requisitos para gestionar la seguridad de la información y proteger los activos críticos de la organización.
- SecureCorp deberá de establecer políticas y procedimientos del control de acceso además de realizar auditorías y revisiones periódicas. 

**ENS**

- Se obliga a definir y aplicar controles de acceso y de autenticación robustos en sistemas críticos, además de implementar monitorización y registros de acceso a los servidores para poder detectar accesos no autorizados. 

---

### Falta de un plan de continuidad del negocio

La empresa no tiene procedimientos claros para actuar ante un ciberataque tipo ransomware

**ISO 22301**

- Esta normativa es la referencia principal para poder establecer, implementar y mantener un Sistema de Gestión de Continuidad del Negocio.
- Habrá que desarrollar un plan de continuidad que indique los procedimientos necesarios para la mitigación de la amenaza o para la recuperación de la normalidad en la empresa.

**ISO 27001**

- Aunque esta norma se centra más en la gestión de la seguridad de la información, el Anexo A.17 aborda la continuidad de los servicios TI y la recuperación ante incidentes. 
- Se deberá de asegurar que los datos críticos sean respaldados y recuperable en caso de un incidente.

**ENS**

- Esta entidad define que se deben establecer controles y protocolos para que en caso de que ocurra un ciberataque se puedan restaurar la seguridad y operatividad de los sistemas

---

### Transferencia de datos a EE.UU sin garantizar medidas adecuadas

**GPDR**

- Esta normativa establece que cualquier transferencia de datos que se realice fuera del Espacio económico Europeo debe tener un nivel de seguridad adecuado.

**LOPDGDD**

- Esta ley complementa al GPDR en España (como ya especifiqué anteriormente)  y refuerza la obligación de proteger los datos personales mediante medidas técnicas y organizativas. 
- El no tener esas medidas adecuadas vulnera los preceptos de la LOPDGDD lo que puede acarrear sanciones y afectar a la confianza de los usuarios 

**ISO 27001**

- Se requiere que se proteja el CID (Confidencialidad, Integridad y Disponibilidad) incluso en la transferencia de datos internacionales 
- El no contar con las medias y controles adecuados puede influir negativamente en la reputación de la empresa. 

---

## Propuesta de soluciones 

**Establecer un programa de clasificación y etiquetado de la información**

Se identificará y categorizará la información según su sensibilidad para aplicar los controles de seguridad pertinentes en cada categoría. 

Para ello, se definirá una política de clasificación de datos (confidencial, sensible, publico) para determinar qué información requiere los controles más estrictos. 

Además se pueden implementar herramientas y procesos para clasificar y etiquetar la información tanto en los servidores propios como en la nube. 

Las normativas relacionadas con esta medida son:

- GPDR y LOPDGDD – por la protección de datos personales mediante el control de acceso.
- ISO 27001 – Favorece la implementación de controles específicos en función del valor y sensibilidad de la información.

**Realizar análisis de vulnerabilidades y pruebas de penetración periódicas**

Se detectarán los fallos y las vulnerabilidades posibles en la infraestructura de la empresa y en las aplicaciones que puedan poner en riesgo la seguridad de la información. 

Se programará u análisis de vulnerabilidades y escaneos de seguridad en los activos críticos de la empresa (servidores, VPN, aplicaciones usadas). 

Se realizarán pentesting de caja negra y blanca para evaluar la resistencia de los sistemas frente ataques externos e internos. 

Las normativas relacionadas son: 
- ISO 27001 -  Exige la identificación y corrección de vulnerabilidades mediante evaluaciones periódicas de seguridad. 
- ENS – Implica la realización de pruebas y auditoria que demuestren el nivel de protección de los activos. 

**Crear un Comité de Seguridad y Privacidad Interdepartamental**

Se fomentará la gobernanza y coordinación en materia de ciberseguridad y protección de datos dentro de la empresa. 

Se formará un comité integrado por representantes en diferentes áreas (TI, legal, RRHH) el cual revisará y actualizará periódicamente las políticas de seguridad y privacidad, además de que se establecerán reuniones regulares para evaluar el cumplimiento de las políticas, revisar incidentes y planificar mejoras continuas. 

Las normativas relacionadas son: 
- GPDR,  LOPDGDD – Requieren de un enfoque organizativo en la protección de datos y la responsabilidad compartida. 
- ISO 27001 - Fomenta la existencia de estructuras de gobernanza para la gestión de la seguridad de la información.

**Establecer políticas y controles específicos para el acceso remoto y el uso de dispositivos**

Se fortalecerá la seguridad en escenarios de acceso a ala red corporativa y teletrabajo, dos procesos que precisan del uso de la VPN. 

Se definirán y comunicarán los procedimientos específicos para el uso de VPN y el manejo de dispositivos personales (móviles) que acceden a la información corporativa,  además se implementarán soluciones de gestión de móviles para asegurar que estos cumplen con las políticas de seguridad.

Las normativas relacionadas son: 
- ISO 27001 - Promueven el control y la gestión segura de los accesos a la red y dispositivos. 
- ENS - Requiere que se implementen medidas de seguridad específicas en el acceso remoto, especialmente en entornos que manejan información sensible de la Administración Pública.

**Desarrollar e implementar un Sistema de Gestión de Incidentes y Respuesta (SIEM y CSIRT)**

Se mejorará la capacidad de detección, análisis y respuesta ante incidentes de seguridad, reduciendo el tiempo de reacción y el impacto de posibles brechas de seguridad. 

Se implementará una solución SIEM (Security Information and Event Management) la cual centralizará y analizará los registros de seguridad de la infraestructura. 

Además se conformará un equipo de respuesta a incidentes (CSIRT) con roes y procedimientos definidos para coordinar acciones en caso de ciberataques o brechas de seguridad. 

Las normativas relacionadas son: 
- ISO 27001 - Requiere procedimientos de respuesta y recuperación ante incidentes. 
- GPDR y LOPDGDD - Implican la detección y gestión efectiva de brechas de seguridad para cumplir con los plazos de notificación. 

---

## Uso de la herramienta PILAR

PILAR (Procedimiento Informático para el Análisis de Riesgos) es una herramienta desarrollada por el Centro Criptológico Nacional (CCN-CERT) de España.  

Se utiliza para evaluar riesgos de seguridad en sistemas de información y garantizar el cumplimiento del Esquema Nacional de Seguridad (ENS). 

Una vez instalado (página de descarga -> https://pilar.ccncert.cni.es/index.php/pilar/pilar) se nos pedirá elegir el tipo de licencia a usar.

Yo selecciono la **licencia de evaluación**.

![image](https://github.com/user-attachments/assets/dc836501-84bb-4124-830f-17d15a1dba46)

↓

![image](https://github.com/user-attachments/assets/2370cf92-cf98-46e5-bb2e-d842526f4a02)

En la opción **Proyecto** se puede crear un  nuevo proyecto, abrirlo, exportarlo etc.

![image](https://github.com/user-attachments/assets/cba84efc-b25c-4b51-aa16-57b858cfbff2)

Yo creo uno nuevo: 

![image](https://github.com/user-attachments/assets/86d81b5f-06ab-477c-acc8-4f346481c1e5)

Y ahora me salen los siguientes menús desplegables: 

![image](https://github.com/user-attachments/assets/f274b2a2-6cb7-4bda-b3cf-6e1e0bb32847)

En **Análisis de riesgos** podemos proporcionar información sobre: 
- Activos 
- Amenazas 
- Tratamiento de los riesgos 
- Impacto y riesgo

![image](https://github.com/user-attachments/assets/ed868e71-fcfa-440e-836a-e5b69c15ec67)

Si seleccionamos la opción **Activos>Identificación** nos saldrá las siguiente pestaña: 

![image](https://github.com/user-attachments/assets/440f7e4b-f8e4-432b-86c2-53061abda988)

**Capas>Capas estándar**

![image](https://github.com/user-attachments/assets/8ef30bee-bbc2-4fcb-9de4-cb194f8afc54)

Y se crea esta estructura:

![image](https://github.com/user-attachments/assets/4296294c-1d78-4203-b238-a4ebd4ba96d5)

Dentro de esta estructura podremos crear activos, clasificarlos y darles un valor.

![image](https://github.com/user-attachments/assets/7a8e7984-7a1e-49a6-bf7a-70c4b82d7ea9)

↓

![image](https://github.com/user-attachments/assets/012e1f1b-e6ea-436f-b3b0-015422bd7f24)

Y termino de crear mis activos:

![image](https://github.com/user-attachments/assets/7bbbea67-c484-447b-8538-56e811d5ab4b)

En **Activos>Valoración de los dominios y valoración de los activos** se puede especificar si los activos / dominios tienen buenas prácticas en relación con la **Disponibilidad, Integridad, Confidencialidad, Autenticidad, Trazabilidad y datos personales.** 

![image](https://github.com/user-attachments/assets/6f940cbe-b0f7-4d84-8537-a325d3e1247e)

↓

![image](https://github.com/user-attachments/assets/5fbdea3e-833b-4080-a48e-786eb3b715a1)

Y en **Amenazas** podemos ver las posibles amenazas que podría haber sobre nuestros activcos y el % de ataque. 

![image](https://github.com/user-attachments/assets/1d74e110-f730-40e5-ab97-8eb6ef0c23dc)

Y en **Amenazas>Identificación** se pueden ver amenazas reales: 

![image](https://github.com/user-attachments/assets/59c7b2b1-6b5b-4f51-809d-7b9337b799cd)

En **Tratamiento de los riesgos Impacto y riesgo** e **Informes** se ve la siguiente información:

![image](https://github.com/user-attachments/assets/e9c9387a-a0af-4853-8a50-bfd7c4279d3e)

Al finalizar el reporte se puede exportar la información en un archivo xml.

![image](https://github.com/user-attachments/assets/ff66fa2c-a3ed-44b3-81b8-8ced610f506b)










