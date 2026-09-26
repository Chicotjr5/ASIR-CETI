<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [Suricata](#suricata)
   - [Instalación](#instalación)
   - [Configuración de reglas y logs](#configuración-de-reglas-y-logs)
 - [ELK](#elk)
   - [Instalación](#Instalación-1)
   - [Configuración Kibana](#configuración-Kibana)
   - [Configuración Logstash](#configuración-logstash)
   - [Comprobación](#comprobación)
 - [Visualización Kibana](#visualización-kibana)
   - [Ver datos crudos](#ver-datos-crudos)
   - [Crear dashboard](#crear-dashboard)
</details>

---

## Introducción

La idea de la práctica es crear un SOC pudiendo usar Snort o Suricata e integrarlo con Grafana o con ELK - ElasticSearch, Logstash y Kibana. 

Kibana es la herramienta de visualización y análisis de datos diseñado para trabajar con elasticsearch que es el motor de búsqueda y análisis de datos que se encarga de indexar y almacenar grandes volúmenes de información. 

Logstash es quien recoge y transforma los logs para pasárselos a elasticsearch.

En nuestro caso hemos instalado el IPS Suricata e integrándolo con ELK en una Raspberry Pi 5 proporcionada por nuestro compañero Esteban. 

---

### Suricata

#### Instalación

Antes de hacer nada, actualizamos el sistema con nuestro clásico:

```bash
apt update -y apt upgrade -y
```

![image](https://github.com/user-attachments/assets/ff43945e-0f16-465e-9525-61224fae3679)

Ya con esto, instalamos suricata: 

```bash
sudo apt install suricata -y  
sudo systemctl enable suricata  
sudo systemctl start suricata 
```

![image](https://github.com/user-attachments/assets/e1a880a3-52ea-407c-9a95-8b5e5cef9e8c)

Se instaló y habilitó sin ningún problema, proseguimos con su configuración

#### Configuración de reglas y logs 

En el archivo de configuración de Suricata, - **/etc/suricata/suricata.yaml** - se definen varios parámetros clave para su correcto funcionamiento.

Uno de los aspectos más importantes es la variable - **HOME_NET** - donde se especifican las redes internas que Suricata debe considerar como confiables o protegidas. 
Cualquier tráfico que entre o salga de estas redes será analizado según las reglas configuradas.

![image](https://github.com/user-attachments/assets/dba70405-2a5e-46e3-b31f-159c4068e899)

Las reglas de Suricata, que se encuentran en **/etc/suricata/rules/** contienen condiciones que determinan qué tráfico debe ser monitoreado y cuándo generar alertas. Estas reglas pueden detectar patrones sospechosos, ataques conocidos o comportamientos maliciosos en la red. 

Así, Suricata compara el tráfico con estas reglas y, si hay coincidencias, genera alertas o toma acciones dependiendo de la configuración del modo de operación (IDS o IPS)

![image](https://github.com/user-attachments/assets/aa0bb5d7-722f-41d6-96f0-17e50f5c9568)

En el archivo de configuración, el archivo con las reglas se configura en el parámetro **default-rule-path**


Si visitamos el archivo **/etc/suricata/rules** se podrán visualizar las reglas que hemos creado.

En este archivo vienen por defecto muchas reglas creadas para detectar todo tipo de incidentes, pero al final hemos configurado estas 4 para controlar nosotros el tipo de incidencias que recogerá suricata y que este no genere demasiadas alertas ni logs.

Hablando de logs, en suricata, estos se pueden generar en diferentes formatos, pero el que hemos elegido es el formato json, con el archivo **/var/log/suricata/eve.json**.

Este formato facilitara la integración con **ELK** y con otros softwares como **Splunk o Grafana** 

![image](https://github.com/user-attachments/assets/5a078abb-debc-4170-9b03-b137c51ac1fb)

Este es un ejemplo de su contenido tras aplicar las reglas.

---

### ELK

#### Instalación

Como ya dije, ELK es la unión de 3 herramientas – **Elasticsearch, Logstash y Kibana** – y cada uno de estos se instala por separado (lo intentamos con docker, pero no funciono y nos daba errores, así que desistimos). 

```bash
sudo apt install elasticsearch -y  
sudo systemctl enable elasticsearch  
sudo systemctl start elasticsearch 
sudo apt install kibana -y  
sudo systemctl enable kibana  
sudo systemctl start kibana 
sudo apt install logstash -y 
```

![image](https://github.com/user-attachments/assets/83b21822-aabd-4d31-818e-c10ac5b775bf)

#### Configuración Kibana

Configuración Kibana 
El archivo de configuración e Kibana es **/etc/Kibana/Kibana.yml** en el cual definiremos los parámetros clave para su funcionamiento:

**server.host** – Permite accesos remotos a la interfaz web de kibana

![image](https://github.com/user-attachments/assets/3fcd4e02-f78f-4292-96ad-443b759fdcfa)

**elasticsearch.host** – Especifica la IP y URL del host
**elasticsearch.username / elasticsearch.password – usuario** y contraseña para acceder

![image](https://github.com/user-attachments/assets/f5ffc04f-b063-499c-9892-db00cdc288a0)

**elasticsearch.ssl.verificationMode: none** – Desactiva la verificación de certificados ssl. 

![image](https://github.com/user-attachments/assets/cf7fe4d0-11f3-4bc0-b6d3-8bfe0860a0f9)

Para guardar los cambios realizados, se reinicia el servicio:

```bash
sudo systemctl restart kibana
```

#### Configuración Logstash

En el archivo **/etc/logstash/conf.d/suricata.conf** se define un pipeline para poder procesar los logs de Suricata y enviarlos a ElasticSearch. 

En el contexto de **Logstash**, un pipeline se define normalmente con tres bloques: 

- **input:** dónde se reciben los datos (por ejemplo, desde un archivo, red, syslog…).
- **filter:** cómo se procesan o transforman los datos (parseo, limpieza, enriquecimiento, etc.). 
- **output:** a dónde se envían los datos procesados (por ejemplo, a Elasticsearch) 

El pipeline definido es el siguiente:

```bash
input { 
  file { 
    path => "/var/log/suricata/eve.json"     codec => json  start_position =>
"beginning"     sincedb_path => "/dev/null"
  } 
}
````

![image](https://github.com/user-attachments/assets/f0d31a6b-dffb-4c1c-a605-300842343fa2)

- Se leen los logs desde **/var/log/suricata/eve.json**.
- Se usa el **codec JSON** para interpretar los datos correctamente.
- **start_position => "beginning"** asegura que se lean los logs desde el inicio
- **sincedb_path => "/dev/null"** evita que Logstash recuerde la posición de lectura, asegurando que procese todos los logs cada vez que se inicie

```bash
filter { 
  if [timestamp] { 
    date { 
      match => [ "timestamp", "ISO8601" ] 
    } 
  } 
} 
```

- Convierte el campo timestamp en formato de fecha (ISO8601) para que Elasticsearch lo reconozca correctamente

```bash
output { 
  elasticsearch { 
    hosts => ["https://192.168.1.10:9200"] 
    index => "suricata-%{+YYYY.MM.dd}" user => "elastic" password => 
"***************"  ssl => true ssl_certificate_verification => false 
  } 
} 
```

- Se envían los datos a **Elasticsearch** en la IP 192.168.1.10, puerto 9200.
- Se crea un índice diario llamado suricata-YYYY.MM.dd.
- Se configuran usuario, contraseña y **conexión segura (SSL)**, pero sin verificar certificados (ssl_certificate_verification => false). 

Otro archivo que hemos modificado es **/etc/logstash/pipelines.yml** donde se define el pipeline principal y su archivo:  

![image](https://github.com/user-attachments/assets/4244b5ae-6a74-4a86-abc1-26b8bbc020b3)

Para aplicar los cambios, reiniciamos el servicio:

```bash
sudo systemctl restart logstash
```

#### Comprobación

Para ver que todo funciona correctamente vemos los logs de Logstash:

```bash
sudo journalctl -u logstash -f
```

![image](https://github.com/user-attachments/assets/3210245d-3a00-444b-ab06-320a4df4f046)

Además del estado de los servicios: 

```bash
sudo systemctl status elasticsearch 
```

![image](https://github.com/user-attachments/assets/e374779d-2f58-4686-a867-f4ce133cc119)

```bash
sudo systemctl status kibana  
```

![image](https://github.com/user-attachments/assets/a7ca8970-0db4-4f84-b75c-b2d5a1dd8ee8)

```bash
sudo systemctl status logstash
```
![image](https://github.com/user-attachments/assets/6cdad32d-6d7b-49d0-bfa8-507f638971b6)

```bash
sudo systemctl status suricata 
```

![image](https://github.com/user-attachments/assets/98febe10-d34a-4195-92ba-618c855c49dd)

---

### Visualización Kibana

#### Ver datos crudos

Para acceder a Kibana, desde el navegador otro equipo en la misma red que la Raspberry, ponemos: 

```bash
https://192.168.1.10:5601 (https://<ip máquina>:5601) 
```

En nuestro caso, para trabajar de forma más cómoda, se permitió el acceso a la IP pública de los integrantes del grupo al puerto 5601 del servidor utilizando un Fortigate 30E, por lo que también es posible acceder desde fuera con el dominio xenlor.com :

```bash
https://xenlor.com:5601 
```

![image](https://github.com/user-attachments/assets/26caaca6-78f7-410c-9c02-9d35312bd972)

Reglas para permitir el acceso a la aplicación desde internet (redes específicas):

![image](https://github.com/user-attachments/assets/dec00336-c07d-47d2-a94c-5822ef973f22)

Si desplegamos el panel de la izquierda, veremos muchos menús y diferentes opciones tanto de Kibana como de elasticsearch. Para ver toda la información que se está recopilando vamos a **Kibana>Discover**

![image](https://github.com/user-attachments/assets/96b02c2e-1556-4739-98a5-d6a5460ef3d5)

Aquí se muestran todos los eventos que Suricata está detectando.
Se podría decir que esta es la información “en crudo”:

![image](https://github.com/user-attachments/assets/f0d59faf-b7f5-45f5-8fda-cdec8a871f14)

En el panel de la izquierda se pueden buscar los eventos por diferentes parámetros, por ejemplo, **las IP origen o por su ‘alert.signature’**, que sería el título de la alerta detectada (por ejemplo, ICMP detectado). 

![image](https://github.com/user-attachments/assets/7610aa6f-7517-4919-9aeb-a099e9e4f268)

Si le damos al símbolo solo saldrán los registros que tengan como src_ip la IP que hayamos seleccionado. 
Otra cosa que se puede hacer es crear filtros.

En el símbolo de filtro de la barra de búsqueda se pueden realizar filtros sencillos como, por ejemplo, buscar aquellos registros cuya IP destino sea la **192.168.1.1**: 

![image](https://github.com/user-attachments/assets/36e37669-14bf-435a-85b5-1fbca1c31286)

También se pueden hacer filtros más complejos, añadiendo más condiciones:

![image](https://github.com/user-attachments/assets/ad880b00-9f7a-470f-912f-58c3c29188e5)

↓

![image](https://github.com/user-attachments/assets/93cd34b6-5500-4a54-8178-672af0f2fcd3)

#### Crear dashboard

Para poder crear un dashboard vamos a **Kibana>dashboards>Create dashboard>Create Visualization** donde se crean gráficas con los tags @timestamp, alert.signature etc.

![image](https://github.com/user-attachments/assets/fed4763d-1315-4bab-bdab-2c8cdf0d73d1)

Si queremos hacer tablas más elaboradas, donde podremos usar consultas SQL, lens, maps etc, iríamos a **Add panel:**

![image](https://github.com/user-attachments/assets/0a7bc937-7048-49c1-bd95-b782f2e44526)

En **"create visualization"** podemos cambiar el tipo de gráfico (barras, rosco de porcentajes, grafica de líneas...) y de que logs lo saca (lo de suricata) (está a la derecha), y vamos añadiendo los tags (lo de la izquierda).

![image](https://github.com/user-attachments/assets/b07eb482-3e28-4c86-b51f-9d1de07d4832)

Por ejemplo, en esta visualización se esta creando un gráfico de barras donde se pueden ver la cantidad de IPs que se están registrando. 

![image](https://github.com/user-attachments/assets/2ba0beca-8e44-4e2e-a2e4-628ee712716e)

Vamos a **Add panel** y creamos un panel en el cuál se usa una consulta SQL para filtrar las alertas por el texto “ALERTA – Tráfico UDP sospechoso a puerto sensible” y que solo muestre las 10 últimas:

![image](https://github.com/user-attachments/assets/5c8fe14e-02d4-4c78-92be-801031b2dd04)

Añadimos más paneles y visualizaciones y nos queda de la siguiente forma:

![image](https://github.com/user-attachments/assets/43b78957-01e4-42f9-b79a-d64e3564fc31)

Por un lado, tenemos una línea de tiempo donde se registran el nº de eventos que ocurren a lo largo del tiempo. 

Por otro lado, tenemos un rosco donde se cuentan el nº de registros y su clasificación. Los registros más habituales ocuparán una mayor parte del rosco. 

El último gráfico es un gráfico de barras donde se registran las IP implicadas en las alertas. Las IP más habituales tendrán una barra más grande. 

En la parte de abajo se ven registros con las 4 reglas de suricata que creamos anteriormente. 

![image](https://github.com/user-attachments/assets/2c03c288-28c5-45c5-bb12-7b9c23401f6b)





