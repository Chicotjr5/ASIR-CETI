## Visualiza el siguiente [video](https://www.youtube.com/watch?v=zDAYZU4A3w0) y realiza las siguientes actividades: 

### ¿Qué medidas de seguridad tiene Google frente a caídas del sistema? 

Los sistemas se diseñan desde 0 para solucionar los posibles problemas que surjan, además de que usan sistemas redundantes y los técnicos de fiabilidad, están siempre disponibles.

---

### ¿Qué tipo de sistema de identificación tienen para acceder al centro de datos?

- Escáner de iris biométrico
- Torno de seguridad
- Solo puede pasar una persona a la vez
- Autenticación Dual

---


### En el video se mencionan los siguientes programas: Borg, Colossus, Spanner, Kubernetes, Google Cloud Storage y Big Query.  Explica brevemente para qué sirve cada uno de ellos. 

En general, son herramientas similares a **Google Cloud Storage**, **BigQuery** y **Kubernetes**, las cuales permiten un manejo más fácil del servicio. 

**Borg** 
- Es un software diseñado el cual nos permite hacer copias de seguridad óptimas.  
- Este software de seguridad usa la técnica deduplication, la cual se basa en evitar hacer copia de seguridad de archivos duplicados comparando todos los archivos con el hash.
- 
**Colossus** 
- Gestor de contraseñas, el cual permite almacenar las contraseñas que habitualmente se usan al trabajar en un ordenador. 
- Contraseñas de acceso a sitios web
- Servidores de correo
- Claves de registro de programas

**Spanner**

- Servicio de gestión y almacenamiento de bases de datos SQL desarrollado por Google

**Spanner cloud**
- Transacciones globales
- Lecturas altamente consistentes
- Replicación y conmutación por error automáticas en mutiples sitios

**Kubernetes**

- Plataforma portable y extensible de código abierto para administrar cargas de trabajo y servicios.
- Kubernetes fue desarrollado por Google en 2014 y facilita la automatización y la configuración declarativa.
- Tiene un ecosistema grande y en rápido crecimiento.
- El soporte, las herramientas y los servicios para Kubernetes están mpliamente disponibles. 

**Google Cloud Storage**
- Servicio administrado para almacenar datos no estructurados.
- El servicio combina el rendimiento y la escalabilidad de la nube de Google con capacidades avanzadas de seguridad y uso compartido.

**Big Query**
- Almacén de datos empresariales rentable y sin servidor que funciona en diferentes nubes y es administrado por Google
- Utiliza funciones integradas de IA, aprendizaje automático y BI para obtener información valiosa a gran escala.

---

### En el video se menciona varias veces la palabra cluster. Investiga y explica qué es. 

En términos sencillos, **es la conexión entre dos o más ordenadores** con el propósito de mejorar el rendimiento de los sistemas en la ejecución de diferentes tareas. 

En el **cluster, cada equipo se llama nodo**, y no hay límites sobre cuántos nodos se pueden interconectar. 

Así, los ordenadores comienzan a actuar dentro de un solo sistema, trabajando juntos en el procesamiento, análisis e interpretación de datos e información, o realizando tareas simultáneas. 

La función de un **cluster** es combinar el funcionamiento de varias computadoras dentro de un mismo sistema, con el fin de mejorar su rendimiento. 

**Tipos**
- Failover
- Load Balancing
- High Performance Computying Cluster
- Procesamiennto paralelo

![image](https://github.com/user-attachments/assets/28280248-cf06-4d79-9bf4-a970aad4a985)

---

### En un solo edificio del datacenter

#### ¿Cuantás máquinas puede haber?

75000

#### ¿Que banda ancha se alcanza y se puede llegar a superar?

Puede superar un Petabit por segundo, lo que supera el total de internet. 

---

### ¿Cómo se conecta el centro de datos con otros centros de datos en todo el mundo? 

Tienen una **WAN que interactúa con diferentes dominios de Internet**, la cual intercambia tráfico con los usuarios. 
Otra **WAN privada** (una red central privada de alta eficiencia) **intercanecta los CPD de Google** la cual soporta todo tipo de tráfico. 
El 90% del tráfico de Google pasa por esta red. 

---

### ¿Qué hacen con los discos duros cuando ya no los van a usar? 

Los borran y trituran en una trituradora.

---

### Explica el término PUE en cuanto a eficiencia energética y cómo se calcula. ¿Cuál es el PUE del centro de datos de Google en el momento en el que se realizó el video?

Variable definida por **The Green Grid** como instrumento para medir la eficiencia de los centros de datos. 

El PUE evalúa el rendimiento del centro de datos calculando la relación entre la energía que utiliza en su conjunto y la energía utilizada por el equipo informático únicamente, tomada de forma aislada.

**Cálculo**

PUE = Potencia eléctrica total del centro / Potencia eléctrica total consumida por los sistemas.  

El valor del PUE puede estar en un rango que va desde 1.0 hasta infinito. Un 1.0 de valor indicaría una eficiencia del 100%.

El PUE del CPD de Google es del 20-12% cuando en 2008 era del 100%.

![image](https://github.com/user-attachments/assets/4bc189bf-cb57-4343-8b31-2972d297175b)

---

## Lee el artículo que puedes encontrar en la [dirección](https://www.xataka.com/otros/viaje-al-corazon-del-cpd-mas%20moderno-de-europa) y responde a las siguientes preguntas

### En un momento del artículo habla de la certificación Tier IV, busca en Internet en qué consiste e indica brevemente que son los Tier I, II, III y IV

**Tier I** 
- CPD básico, sin características ni medidas contra fallos inesperados. Tiene todas las funcionalidades básicas de un CPD. 

**Tier II**
- Cuenta con dispositivos redundantes que permite aguantar fallos o interrupciones no planeadas, teniendo suelo técnico, generador de reserva y alguna medida de redundancia más avanzada que los dispositivos básicos. 

**Tier III**
- La Característica principal es redundancia en la alimentación.  
- Esto permite mantenimiento y caídas de tensión sin perder disponibilidad  
- Se debe poder realizar tareas de mantenimiento de los dispositivos sin interrumpir el servicio.  
- La mayoría de estos CPDs se construyen para ser convertidos en el siguiente Tier según aumente la demanda de la empresa.  

**Tier IV**
- Categoria máxima de un CPD.  
- Debe permitir que los servicios estén siempre activos soportando cualquier tipo de fallo. La redundancia de alimentación pasa a ser alimentación simultánea para no perder tiempo en un posible fallo

---

### En el artículo se habla del uso de pasillos fríos y calientes para refrigerar el CPD. Busca en Internet en qué consiste y explícalo.

El diseño basado en un sistema de refrigeración de pasillos fríos y calientes facilitará llevar a cabo el control de los niveles de gasto de energía.

**Funcionamiento**

Se alinean los racks en forma de pasillos de modo que en un pasillo se enfrentará la parte trasera de los racks, creando así un pasillo caliente, y otros la parte delantera, siendo éste el lado frío, y se situarán de forma alterna.  

De esta forma, por la parte delantera los racks obtienen aire frío a través de las rendijas de ventilación y por la trasera expulsan aire caliente. 

La clave de la optimización del sistema de refrigeración, cuando se habla de centros de procesos de datos, se sitúa en aislar correctamente los pasillos. 

Ya sea al comienzo o al final de los racks, los pasillos fríos o calientes deben estar correctamente aislados para evitar que el aire se mezcle.

![image](https://github.com/user-attachments/assets/c11efcc5-3ce2-481d-8555-2723282a87a4)

---

## Accede a las páginas Web de HP o Dell y realiza un presupuesto de un servidor de gama baja y de uno de gama alta reseñando características principales 

Si vamos a la WEB de [DELL](https://www.dell.com/es-es) podremos encontrarnos con una gran cantidad de servidores, los cuales podemos personalizar, para cambiarle casi todos los componentes a nuestro gusto. 

Un ejemplo es este RACK de gama alta, el cual sin personalizar, costaba 7200€, pero con la personalización que yo le hice, ese precio subió hasta los 340000€ 

![image](https://github.com/user-attachments/assets/896e9234-8d7a-4f2d-baa3-4b8164e0e69e)


Ahora vamos con el servidor de gama baja. 

Y encontramos este servidor de 1843€ (es el rack más barato que tienen). 
También podemos cambiarle los componentes.

![image](https://github.com/user-attachments/assets/3df53e15-aed5-42be-959a-2e95dbb3d0f5)

---

## Supón que tienes 4 discos de 2 TB y quieres configurarlos en RAID. Indica el espacio disponible que tendrás si utilizas RAID 0, RAID 1, RAID 5 y RAID 0+1

En un **RAID 0** tendremos los 8TB completos, debido a que la información se guarda en todos los discos. 

En **RAID 1** tendremos tan solo 2TB disponibles, debido a que la información se guarda en un disco y se replica en los demás. 

En **RAID 5** tendremos 6GB disponibles, debido a que el dato de paridad ocupa espacio y nos quita esos 2GB. 

En **RAID 10** tendremos la mitad del espacio, 4TB disponibles, debido a que es un RAID 0 montado en 2 RAID 1. 

Para hacer este ejercicio, me ayude de la siguiente [calculadora](https://www.synology.com/es-es/support/RAID_calculator)

![image](https://github.com/user-attachments/assets/e160987f-b38d-404d-a8b6-3bb29a920a5c)

---

## Busca información sobre los servidores virtuales y servidores virtuales privados, qué son, ventajas e inconvenientes, elementos que integran, etc 

Es la simulación de un servidor físico en un entorno virtual lo cual permite ejecutar varios servidores virtuales en una máquina física. 
Un servidor virtual recrea la funcionalidad de un servidor físico.  
Existe de manera transparente para los usuarios como un espacio de partición dentro de un servidor físico. 

**Ventajas**

- Instalaciones a simplificar, que ahorran espacio, ahorran tiempo y dinero.
- Gestión centralizada y compatibilidad total con las aplicaciones.
- Mayor disponibilidad y recuperación más fácil en caso de desastre.
- Capacidad de realizar copias de seguridad.
- Usar múltiples entornos del S.O en el mismo ordenador.
- Mejor uso del Hardware. 

**Desventajas**
- Difícil de administrar completamente.
- Mucho uso de discos duros.
- Gran consumo de CPU y RAM.
- Dificultad de acceso indirecto al Hardware

Un servidor virtual privado es una modalidad de alojamiento web donde un único servidor físico es particionado virtualmente para brindar múltiples servidores virtuales, el cual es mucho más seguro.

**Ventajas VPS**

- Más rápida la carga de la web porque no se comparte la RAM ni el almacenamiento.
- Más seguro porque tampoco se comparten direcciones IP.
- Al ser privado, el ancho de banda no se comparte, así que los aumentos de tráfico no afectarán a tu sitio. 
- Puedes ir aumentando la capacidad, de manera que a medida que aumente tu tráfico, mejores tu alojamiento. 
- Su relación calidad precio le convierte en una de las opciones más populares en el mercado.

**Desventajas VPS**

- Elevado costo
- Se requiere conocimientos de medio a avanzado para un buen manejo del sistema operativo y raíz del servidor.
- Limitaciones para alojar páginas Web:
- Para los usuarios que no tienen conocimientos de desarrollo web, puede convertirse en un experiencia complicada puesto se deberán cumplir requisitos de programador.

**Elementos que integran**

- Mucha RAM
- Un procesador de servidor (Intel Xeon o AMD EPYC)
- SO de servidor
- SAI
- Sistema de copias de seguridad.

---

## Investiga acerca del cloud computing, debes explicar, al menos, qué es el cloud computing y los conceptos de IaaS PaaS y SaaS, poniendo ejemplos de servicios de empresas de cada uno de ellos.

El **Cloud Computing** es la disponibilidad bajo demanda de recursos de computación como servicios a través de Internet.  
Esta tecnología evita que las empresas tengan que encargarse de aprovisionar, configurar o gestionar los recursos y permite que paguen únicamente por los que usen. 

Los modelos de servicio de cloud computing se basan en el concepto de compartir recursos informáticos, software e información bajo demanda por Internet. 


**IaaS**

- Modelo de servicio en la nube que ofrece recursos de infraestructura bajo demanda, como computación, almacenamiento, redes y virtualización, a empresas y particulares a través de la nube.
- Google Docs y Microsoft Office 365 son algunos ejemplos

![image](https://github.com/user-attachments/assets/70feadda-3186-473a-9baa-2b95c24f8c4a)

**PaaS**

- Entorno en la nube integral que incluye todo lo que los desarrolladores necesitan para crear, ejecutar y gestionar aplicaciones, desde servidores y sistemas operativos herramientas y más.
- **AWS Elastic Beanstalk, Google App Engine, Microsoft Azure** son algunos ejemplos.

![image](https://github.com/user-attachments/assets/dfc38333-7408-423f-93b0-0f7394656721)

**SaaS**

- Modelo de software basado en la nube que ofrece aplicaciones a los usuarios finales a través de un navegador de Internet. Los proveedores de SaaS alojan servicios y aplicaciones para que los clientes puedan acceder a ellos bajo demanda.
- Zoom, Paper y Basecamp son algunos ejemplos de este servicio

![image](https://github.com/user-attachments/assets/c7f9f8c5-4bd8-4e46-a638-c0545f2b2a63)

---

## Investiga acerca de Microsoft Azure y relaciónalo con lo que has expuesto en el ejercicio anterior. Indica y explica los tipos de servicios que ofrece y los métodos de facturación 

Es una plataforma de computación en la nube creado por Microsoft compuesta por más de 200 productos y servicios en la nube usada para construir, probar, desplegar y administrar aplicaciones y servicios mediante el uso de sus centros de datos.

Azure ofrece servicios de todo tipo:

- IA
- Análisis
- Bases de datos
- Redes
- Seguridad
- Almacenamiento
- DevOps
- Internet de las cosas

Algunos ejemplos son:

- Azure Files
- Azure Queue Storage
- Azure Open Datasets
- Azure Database for MySQL A
- Azure DNS
- Content Delivery Network

En Azure, pagas por los servicios que usas, además de tener una [calculadora](https://azure.microsoft.com/es-es/pricing/calculator/) de precios, en la cual, añades los servicios que quieres contratar y según ciertos parámetros de estos, calculará un precio u otro.





























