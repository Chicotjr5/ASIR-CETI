<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
</details>

---

## Introducción

En esta práctica se va a hablar de Splunk, explciando que es, para que se utiliza y dando detalles técnicos, además de realizando un proceso práctico de instaación, configuración y de uso.

---

### Qué es Splunk

Splunk es una plataforma la cual esta diseñada para:

- Buscar
- Analizar
- Procesar
- Visualizar los datos generados por máquinas de diferentes fuentes en tiempo real

Splunk permite la correlación, captura e indexación de datos para poder crear diferentes alertas, paneles y gráficos, facilitando la identificación de patrones y poder diagnosticar posibles problemas.

Ayuda a las organizaciones a obtener insights para poder aumentar la confiabilidad, seguridad etc de la infraestructura de las organizaciones. 

Es muy utilizado para:

- La respuesta a incidentes
- La detección de amenazas
- La gestión de incidentes TI

Incluye capacidades de aprendizaje automático para:

- Mantenimiento predictivo
- Detección de anomalías

También ofrece características de análisis de negocio que ayudan a las empresas a mejorar la toma de decisiones y las experiencias de los propios clientes.

En Septiembre de 2023, **Splunk** fue comprada por **Cisco**.

### Donde y como se usa

**Empresas financieras**

- Para procesar grandes cantidades de datos
- [FINRA](https://www.finra.org/)

**Empresas de tecnología**

- Para profundizar en los negocios y conocer mejor a los clientes
- Reducir el riesgo de ciebrataques
- Mejorar el rendimiento de sus servicios
- Reducir costos
- [Summan S.A.S](https://www.summan.com/)

**Empresas de redes y telecomunicaciones**

- Para monitorizar y analizar todo el big data de la empresa, desde aplicaciones, sistemas e infraestructuras, a través de una interfaz web. 

**Empresas de seguridad**

- Monitorizar y analizar todo el big data de la empresa en tiempo real
- Monitorización, análisis y visualización de datos generados por:
  - Máquinas
  - Sitios web
  - Servidores
  - Redes
  - Sensores
  - Móviles
 
**Empresas de nube**

- Splunk ofrece integración en la nube, permitiendo a las empresas migrar sus cargas de trabajo de Splunk locales a la nube de forma eficiente y sencilla

**Empresas eCommerce**

- Se analizan los datos de:
  - Transacciones
  - Rendimiento de sitios web
  - Comportamiento de usuarios
- Lo que ayuda a mejorar la experiencia del cliente y optimizar las operaciones

**Empresas de salud:**

- Monitorización y análisis de
  - Dispositivos médicos
  - Sistemas de gestión de accidentes
  - Registros de salud electrónicos
- Mejora la calidad de atención y la seguridad del paciente

**Empresas de energía**

- Monitorización y análisis de datos de:
  - Redes eléctricas
  - Sistemas de distribución de agua
  - Otros sistemas críticos
- Ayuda a la prevención de errores y a optimizar el rendimiento

**Empresas de gobierno y defensa**

- Monitorización y análisis de :
  - Sistemas de seguridad
  - Comunicaciones
  - Operaciones
- Ayudando a prevenir y responder ante amenazas cibernéticas y físicas.

---

## Caso práctico

### Versiones

- Enterprise
  - Se requiere licencia después de una versión de prueba de 60 días
- Cloud Platform
  - En la nube
  - Versión de e prueba de 143 días, luego a pagar
- Universal Forwarder
  - Limitada y gratuita 

Luego tienen otros productos más limitados:

![image](https://github.com/user-attachments/assets/9a92e23e-5f65-4a4d-b980-312c4635b0a2)

---

### Instalación

En mi caso voy a usar la versión Splunk Enterprise 
La propia página de Splunk nos da el comando para obtener el software:

```bash
wget -O splunk-9.4.1-e3bdab203ac8-linux-amd64.deb 
"https://download.splunk.com/products/splunk/releases/9.4.1/linux/splunk-9.4.1
e3bdab203ac8-linux-amd64.deb"
````

![1 1](https://github.com/user-attachments/assets/46bb91a2-fdea-4f61-9858-601e2aeeb8a5)

Ya descargado, lo instalo:

```bash
dpkg -i splunk-9.4.1-e3bdab203ac8-linux-amd64.deb
```

![1 3](https://github.com/user-attachments/assets/229a6600-8c88-40e4-8837-9d0aaf27d9ed)

En cuanto se instala, lo inicio y acepto la licencia. 
Además nos pedirán las creación de un usuario:

```bash
bin/splunk start --accept-license
```

![1 6](https://github.com/user-attachments/assets/daa5930d-ad48-4771-8c0a-6f1b794e1085)

---

### Iniciar sesión y prueba:

Accedemos a través del navegador: **http://kali:8000**

![1 8](https://github.com/user-attachments/assets/dcd8eac6-a0fd-4690-bbbb-21415907e399)

Esta es la pantalla de inicio:

![1 9](https://github.com/user-attachments/assets/cc1d5518-1433-471b-98e5-99478d304142)

Como prueba voy a subir un pequeño archivo que contiene registros de intentos de autenticación fallidos a un servidor ssh: 

![2 1](https://github.com/user-attachments/assets/e2c9faf8-c526-4d6c-9821-2166ccbdaf4f)

↓

![image](https://github.com/user-attachments/assets/0557dffc-ce5f-498e-8667-8113168a6819)

Selecciono el archivo/directorio de origen.

![2 3](https://github.com/user-attachments/assets/70fd4810-fbc7-4b32-a9e9-2b0914835118)

En mi caso es un directorio que he creado para esta primera prueba. 

![2 4](https://github.com/user-attachments/assets/38dbea94-200e-4da0-b442-403bab4cf7b5)

Splunk reconoce y lee los eventos del archivo / archivos y nos permite visualizar los registros antes de indexarlos:

![image](https://github.com/user-attachments/assets/0bd6645b-d1e0-47f8-9312-729cb9b72331)

De forma opcional podemos poner más parámetros, pero en mi caso lo dejo por 
defecto:

![2 7](https://github.com/user-attachments/assets/10e7cfd5-fc54-4b56-ad8a-5c333e5f9282)

Y se nos da un resumen de los registros subidos:

![2 8](https://github.com/user-attachments/assets/dc663d24-1eda-41cb-8723-bacfaad588af)

Y finalizo 
Ahora me dan diferentes opciones, como ver los datos, añadir más etc.

![2 9](https://github.com/user-attachments/assets/d14119d7-860e-42b1-832c-3cebd89061d6)

Ahora busco mis logs y los visualizo:

![2 11](https://github.com/user-attachments/assets/9097660b-4c7f-401e-a18e-603777f030f1)

Se podrían ver diferentes  opciones, como patrones en los logs, estadísticas etc, pero como mi archivo tiene muy poquitos logs, no me salen esas opciones: 

![2 12](https://github.com/user-attachments/assets/8ad4183e-77c3-43f8-a43f-c9367db4a68f)

---

### Creación de un dashboard

Otra cosa que se puede hacer es crear dashboards donde Splunk recoge información y nos la muestra. 
Tenemos muchísimas opciones sobre el tipo de datos que puede recopilar Splunk:

![image](https://github.com/user-attachments/assets/77024a07-9a74-461f-b5ae-9fe7266286f4)

Un ejemplo es **CPU USAGE : DEPLOYMENT** el cual registra el uso de la CPU en el servidor donde se encuentra instalado. 
Estos son algunos de los datos que recopila: 

![image](https://github.com/user-attachments/assets/cf12e3b7-1eba-4e50-9bec-9dc610457da1)

En este caso, hay algunos otros datos que no se han recopilado:

![image](https://github.com/user-attachments/assets/6656cab4-6d76-4c0d-88e6-f48fbaac1b9c)


---

### Desde donde está obteniendo Splunk la información

Hemos visto como Splunk puede interpretar un archivo de lo que le hemos pasado, pero splunk está pensado para recoger eventos de forma automática. 
¿De dónde recoge esta información? 
Para verlo, vamos a **Settings>Data>Data Input** 

![image](https://github.com/user-attachments/assets/c22fb220-4d92-4c1f-aa75-0212224c4db6)

Esto nos mandará a una nueva pestaña donde se encuentran todos los tipos de **Data Inputs**:

![image](https://github.com/user-attachments/assets/b255493f-a45c-4117-84fc-6b78d76c58aa)

Dentro de cada tipo de **Data Input** se especifica el archivo desde el cual se recogen los datos. 
Por ejemplo, en **Files and Directories** tenemos este registro el cual obtiene los datos de la dirección **$SPLUNK_HOME/etc/Splunk_version**.

![image](https://github.com/user-attachments/assets/88e425fc-686b-4809-a21d-2e9695521410)

Además de que se ven más archivos. 
Y en concreto este archivo me da información e la versión de Splunk instalada en el equipo: 

![image](https://github.com/user-attachments/assets/298ff106-ea16-4747-b845-eb22ad00ce2a)

---

### Eventos

Mientras estaba usando Splunk y documentando la práctica, he realizado una busqueda dentro de la herramienta y me han salido como unos 21000 registros y de cosas que ha analizado Splunk:

![4 1](https://github.com/user-attachments/assets/d86c057b-501c-43a8-9690-9268d9f0e919)

Estos registros que estoy sacando vienen del proceso **splunkd**.

Como ahora tengo muchos más registros, en **Patterns** ya se pueden ver los **“patrones”** de estas alertas / eventos que ha capturado splunkd. 

![image](https://github.com/user-attachments/assets/420c4705-ad10-468b-bcce-d6c9a7563508)

Se puede observar que el 13,18% de los eventos siguen el siguiente patrón: 
Son mensajes de información, que pertenecen al grupo **dutycycle** el cual hace referencia al ciclo de trabajo de un proceso / trabajo en el sistema. 
El nombre de la métrica es **management**, osease, está relacionado con métricas de gestión del sistema. 
Además de que se especifica de que el hilo del proceso es un hilo relacionado con un canal TCP.

![image](https://github.com/user-attachments/assets/1662c062-d622-48ec-842a-33b0bef23ba9)

---

### Creación de reglas

La versión que yo he instalado de Splunk no tiene reglas predefinidas, para ello habría que instalar el módulo **Splunk Enterprise Security**, pero se pueden crear reglas propias.

Hay 2 formas de crear las reglas, una es en base a información que ya ha recopilado Splunk y otra es en base a diferentes parámetros que le pongamos.

La primera se hace desde **“Search and Reporting”**

![image](https://github.com/user-attachments/assets/652fd081-2a70-4682-a329-745a5f24cf20)

Desde aquí se pueden buscar diferentes eventos (como hice anteriormente). 
Por ejemplo, busco por **host=kali**

![image](https://github.com/user-attachments/assets/a97ec214-d535-4800-b299-7fdc989ea31b)

Y se ve un evento (es de unos datos que he subido yo manualmente, no se han generado por defecto). 
Estos eventos se pueden guardar como **reportes** o como **alertas**. 

![image](https://github.com/user-attachments/assets/babb2756-25ec-4de1-87b0-6a6b4fcc5a52)

Entonces se muestra la siguiente pantalla:

![image](https://github.com/user-attachments/assets/653bc324-84de-4cff-88ba-22415fc18861)

Aquí podemos configurar nuestra alerta:

**Permissions**
- Indica que usuarios pueden ver la alerta, si los usuarios de splunk o solo el usuario que lo ha creado

**Alert Type**

- Indica si la alerta se ejecuta en un intervalo de tiempo o si se ejecuta en tiempo real

**Expires**

- Define cuanto tiempo pasara la alerta en el panel **“Triggered Alerts”** antes de que se elimine automáticamente.

**Trigger Conditions**

- Define en que casos se activará la alerta
- Number of Results
- Number of Hosts
- Number of Sources
- Custom

**Trigger Actions**

- Son las acciones que realizará Splunk cuando se active a alerta
- Algunas de ellas son ejecutar un script, mandar un correo, mandar una alerta a Splunk Mobile etc.

Ya creada, vamos a **alerts** donde se  puede ver: 

![image](https://github.com/user-attachments/assets/8a5df4a3-3bed-4675-bce9-1084636dd704)

La otra forma es crear nosotros nuestra propia alerta. 
En **Settings>Search, Reports and Alerts>New Alert**

![image](https://github.com/user-attachments/assets/3d5f6712-8279-4756-8b3f-93b0c628be45)

Los campos que nos salen son los mismos, pero esta vez hay uno más llamado **Search**. 

![image](https://github.com/user-attachments/assets/b96d30cd-1b3b-4eab-9856-338962b10656)

En este campo pondremos la consulta que Splunk ejecutará para poder encontrar los eventos y condiciones que harán saltar la alerta. 
En esta alerta, la consulta es la siguiente: 

```bash
index=auth_logs "failed password" OR "authentication failure" 
| stats count by src_ip 
| where count > 10
```

Esta alerta lo que hace es buscar intentos fallidos de autenticación, contando el nº de veces que una IP ha creado ese registro y mostrando la IP si ha generado más de 10 registros. 
La creo y se queda guardada: 

![image](https://github.com/user-attachments/assets/64e9c9aa-0b4a-407f-b8f6-397b98ff6b03)









































