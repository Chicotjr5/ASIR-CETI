<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - 
</details>

---

## Introducción

En esta práctica se va a hablar sobre Security Onion  y sus herramientas, además de que se van a instalar 2 para ver su funcionamiento.

Security Onion es una distribución de Linux basada en Ubuntu diseñada específicamente para tareas de detección, monitorización y análisis de amenazas de seguridad informática. 

Es una herramienta de código abierto ampliamente utilizada en el ámbito de la ciberseguridad, especialmente en redes corporativas y en laboratorios de investigación.  

Proporciona una plataforma integral que combina diversas herramientas de análisis de red y host, permitiendo realizar tareas como detección de intrusiones, análisis de registros, y respuesta a incidentes.

#### Características

**IDS**
- Integra herramientas como Suricata y Zeek para analizar el tráfico de red en tiempo real y detectar actividades sospechosas.

**Análisis de registros**
- Usa herramientas como  Elasticsearch, Logstash y Kibana para recopilar, procesar y visualizar datos 

**Análisis forense de red**
- Ofrece capacidades de análisis profundo del tráfico de red capturado, facilitando la investigación de incidentes. 

**Respuesta  a incidentes**
- Incluye herramientas como TheHive  y  Cortex que ayudan a gestionar y responder de manera eficiente a incidentes de seguridad.

**Monitoreo y análisis continuo**
- Integra múltiples herramientas para realizar análisis continuo de la red y los sistemas ayudando a identificar patrones o anomalías que podrían indicar una brecha de seguridad.

#### Componentes principales

**Network Security Monitoring (NSM)**
- Para capturar y analizar el tráfico de la red

**Host-Based Intrusion Detection (HIDS)**
- Monitoreo basado en hosts mediante agentes como OSSEC

**Análisis y visualización**
- Integraciones gráficas basadas en ELK STACK para gestionar y enviar datos.

#### Usos

**Monitorizar la red**
- Intrusiones
- Escaneo de puertos
- Tráfico malicioso

**Análisis forense**
- Investigar incidentes pasados mediante el análisis del tráfico y los registros históricos

**Respuesta a incidentes**
- Gestionar la investigación y remediación de brechas de seguridad

**Simulación y laboratorio**
- Aprendizaje y experimentación en un entorno controlado.


#### Instalación

Al instalar **Security Onion** se pueden elegir varios tipos de instalación. 

**Import**

- Procesa grandes volúmenes de datos históricos para el análisis
- Requisitos mínimos
  - 2 Núcleos
  - 4GB RAM
  - 50 GB de disco duro
 
**Eval**

- Evaluación o pruebas de Security Onion, ideal para laboratorios o entornos de pruebas
- Requisitos mínimos
  - 4 núcleos
  - 8GB RAM
  - 200 GB
 
**Standalone**

- Todo en uno, combina roles de captura, análisis y administración
- **Requisitos mínimos**
  - 4 núcleos
  - 16 GB RAM
  - 200 GB
 
**Distributed**

- Administración centralizada de otros nodos en una sola configuración distribuida.
- **Requisitos mínimos**
  - 4 núcleos
  - 16 GB RAM
  - 200GB

Además de estas versiones, tiene una versión **Desktop**
En mi caso voy a instalar las versiones **STANDALONE y Desktop**.

---

### Standalone

#### Instalación y configuración

Ya con la parte teórica realizada, paso a la parte práctica, donde he creado una máquina virtual con la siguiente configuración: 

![1 1](https://github.com/user-attachments/assets/46d5d389-93ad-4048-94ff-7e3673344118)

Arranco la máquina y de primeras me salen las siguientes opciones: 

![1 2](https://github.com/user-attachments/assets/b9b4a392-a160-4fde-b353-fe1774e0637e)

Escojo la primera – **Install Security Onion 2.4.111** 
Al iniciar la instalación lo primero que nos pide es una contraseña de administrador.

![1 3](https://github.com/user-attachments/assets/12d3b92d-b47c-48a1-ab48-085256b820e5)

Y con esto comienza la configuración de la instalación.

![2 1](https://github.com/user-attachments/assets/791bf4f6-c8c3-4898-a558-dace5b3ef7de)

Antes de instalar, puedo elegir entre 2 opciones que son instalar ya todo el sistema 
o configurar solo la red. 
Yo elijo **Install**. 

![2 2](https://github.com/user-attachments/assets/0a0a4670-3f5a-4c2e-80f8-59dfd39ca561)

Entonces me pedirá la versión de Security Onion que quiero instalar. 
Como ya dije, voy a instalar 2 versiones, la Standalone y la Desktop.

![2 3](https://github.com/user-attachments/assets/0ef00bf0-5664-4093-9181-691fc103621a)

Elijo la Standalone para empezar y continuo. 
Ahora me pregunta cómo se debería de instalar el nodo si con acceso a internet – Standart o isn acceso a internet – Airgrap. 
Yo elijo que el nodo tenga acceso a Internet. 

![2 4](https://github.com/user-attachments/assets/686ef23c-b0d9-4502-a533-4c77ac9c2f8f)

El siguiente paso es establecer el hostname del equipo.

![2 5](https://github.com/user-attachments/assets/30a2b477-f0c7-4382-aac5-eb13cf34f655)

Ahora me pide que realice la configuración la tarjeta de red que usaré para la gestión del equipo.

![2 6](https://github.com/user-attachments/assets/aef11e24-1766-4e25-80b4-1586179627dc)

Elijo la interfaz enp0s3 para configurar de forma manual.

![2 7](https://github.com/user-attachments/assets/f0135007-3c39-4ec4-a2da-b6b5fba2ee98)

La configuración que le doy es la siguiente:

- IP 10.0.2.10/24
- Gateway - 10.0.2.1
- Conexión a Internet - Directa

![2 8](https://github.com/user-attachments/assets/a40bead9-04de-4d7a-bdb9-7b26edac02bc)

↓

![2 9](https://github.com/user-attachments/assets/3f793ede-cf08-4a09-b9b8-b5977b61c822)

↓

![2 10](https://github.com/user-attachments/assets/76b24508-af66-4f59-a16b-aa92d5cfcdc3)

Y la interfaz enp0s8 la usaré para la interfaz de monitor. 

![2 13](https://github.com/user-attachments/assets/af4ab6e2-23f2-4cc6-8598-f72c8407bbe8)

Ahora me pide registrar un correo para crear la cuenta de administrador de la interfaz web de Security Onion.
Yo uso la cuenta del centro.

![2 14](https://github.com/user-attachments/assets/f7e6d9b5-9803-4834-bb71-ea6f1db7e657)

↓

![2 15](https://github.com/user-attachments/assets/17c526e6-c129-4eec-b115-fc721918e6a2)

El siguiente paso es elegir el método para acceder a la interfaz web.
Yo elijo que por la IP del equipo. 

![2 16](https://github.com/user-attachments/assets/004b0800-a028-4e4f-b0f7-07fef18ee030)

Ahora me pide que elija la IP o el rango de IP que pueden acceder a la interfaz web. 
Pongo el rango completo de la red **10.0.2.0/24**

![2 17](https://github.com/user-attachments/assets/7b719aed-572f-4368-931f-be63ee54e17c)

Ya con esto, se crea un pequeño resumen de la configuración del equipo e instalo el sistema

![2 18](https://github.com/user-attachments/assets/bb5011c1-3336-4aec-b6f9-5531778364bc)


#### Iniciar el sistema

Después de esperar unas 2-4 horas se instala el sistema, se reinicia y puedo acceder a él

![3 1](https://github.com/user-attachments/assets/9eab5bdb-cce3-4ba5-ad23-a299e6c762d9)

Pero la instalación me dio un fallo y muchos servicios esenciales para el funcionamiento correcto del equipo no se instalaron, así que no sirve para mucho. 
De hecho, ni siquiera podría acceder a la interfaz web

---

### Desktop

La instalación y configuración de la versión Desktop es exactamente igual que la Standalone solo que la versión Desktop, como bien dice su propio nonmbre, posee una interfaz gráfica.

Vuelvo a pasar por el proceso de configuración (realizo exactamente la misma configuración) y el proceso de esperar 4 horas a que se instale.

Ya instalado se reinicia y puedo iniciar sesión en la interfaz gráfica: 

![4 2](https://github.com/user-attachments/assets/74d1ae08-b75e-43fd-bc52-2ec8b2874c88)

El único problema es que otra vez se ha instalado mal y otra vez la gran mayoría de módulos y paquetes que tendrían que haberse instalado no lo han hecho, así que esta instalación no sirve para mucho.

















