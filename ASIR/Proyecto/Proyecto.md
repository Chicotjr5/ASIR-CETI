# PROYECTO

##  Estudio del problema y análisis del sistema 

### Introducción 

Se desea **crear un sitio web**, mediante **Wordpress**, el cual este **protegido con un HoneyPot**, para después atacarlo y ver el funcionamiento del HoneyPot 

Este sitio web estaría **hosteado** en un **servidor XAMPP**, el cual se encuentra en una máquina virtual en el ordenador personal del alumno.  

Para ello se crearía un **servidor DNS** que contendría un registro A para el servidor apache. 

Estos 2 servidores (DNS y XAMPP) se encontrarían en máquinas separadas 

Una vez hosteado nuestro sitio web y puesto en marcha, **se instalaría un HoneyPot**, para poder proteger este sitio web. 

Después de instalar el HoneyPot, comprobaríamos su funcionamiento, **atacándolo** con una máquina **Kali Linux**. 

A través del HoneyPot/herramientas instaladas, **recopilaríamos información** sobre el ataque y mediante el cotejamiento de esta información, **tomaríamos/propondríamos diferentes medidas**, para aumentar la **seguridad de nuestro sitio web**.

### Finalidad

La finalidad de este proyecto es **conocer algunos de los ataques más frecuentes que hacen sobre los sitios web** y en base a ello, **mejorar la seguridad de nuestro sitio web**, además de aprender a realizar una estructura de red con distintos elementos de seguridad y ponerlos a prueba.

### Objetivos 

- Adquirir conocimientos sobre:
  - La instalación, creación y personalización de un sitio web usando la aplicación web de Wordpress y el servidor web XAMPP o
  - La instalación y puesta en marcha de un HoneyPot, además, de aprender sobre el funcionamiento de las diferentes herramientas que vienen integradas en el mismo.
- Proponer y tomar medidas frente a las ciber amenazas/ciberataques más habituales, aprendiendo así, diferentes herramientas de Hacking y diferentes herramientas de protección de equipos vulnerables. 

---

## Recursos

### Recursos Hardware 

Para este proyecto, he usado mi portátil **HP 15-S EQ1071NS**, el cual, tiene los siguientes componentes:

| Componente     | Nombre                                             |
| -------------- | -------------------------------------------------- |
| CPU            | AMD Ryzen 4700U                                    |
| RAM            | 2 Crucial SO-DIMM DDR4 3200MHz PC4-25600 16GB CL22 |
| DISCO DURO     | INTEL SSDPEKNW010T8H 1TB SSD                       |
| GPU            | AMD Radeon(TM) Graphics - 512MB                    |
| PLACA BASE     | HP 8707 (FP6)                                      |
| TARJETA DE RED | Realtek RTL8822CE 802.11ac                         |

### Recursos Software

| Software                          | Nombre/versión                                                                 |
| --------------------------------- | ------------------------------------------------------------------------------ |
| Sistema Operativo                 | Windows 10 Pro 22H2                                                            |
| Software de virtualización        | Oracle VM VirtualBox 7.0.6                                                     |
| Sistemas operativos virtualizados | Ubuntu Server 22.04 / Kali Linux 6.5.0 / T-POT 22.04.0 / Kubuntu Desktop 23.10 |
| Servidor Web                      | Xampp 8.2.4                                                                    |
| Aplicación Web                    | Wordpress 6.4.2                                                                |
| SGBD                              | PhpMyAdmin 5.2.1                                                               |
| PHP                               | 8.2.12                                                                         |
| Servidor DNS                      | BIND 9.18.18                                                                   |
| Servidor Web Apache               | Apache 2.4.58                                                                  |
| OpenSSL                           | 1.1.1                                                                          |
| Ettercap                          | 0.8.3.1-Bertillon                                                              |
| Slowhttptest                      | 1.9.0                                                                          |
| Metasploit FrameWork              | 6.4.8                                                                          |

---

## Planificación 

### Planificación temporal 

Aquí podemos visualizar una tabla y un gráfico con la planificación temporal que esperaba llevar a cabo. 

Los colores de cada tarea van relacionados con los colores en el gráfico. 
 
El número que vemos dentro de cada barra corresponde al nº de horas estimadas. 

El inicio y el final de cada barra, está relacionada con el día de inicio y el día de finalización de esa tarea.

<img width="478" height="424" alt="image" src="https://github.com/user-attachments/assets/143c4fdf-94c3-43d2-b7ef-3bd476ab2aac" />

↓

<img width="434" height="854" alt="image" src="https://github.com/user-attachments/assets/0dd5f15d-bcc7-437f-a819-eae5c086f72f" />

---

### Planificación económica

Esta planificación, se puede visionar de 2 formas:

- Montando una red real, con cada equipo montado físicamente (más caro). 
- Crear máquinas virtuales (más barato)

Así que voy a hacer la planificación económica, suponiendo que vamos a instalar todo en máquinas virtuales. 
Necesitaríamos 1 equipo, con los siguientes componentes:

| Componente        | Modelo                                 | Precio    |
| ----------------- | -------------------------------------- | --------- |
| Procesador        | AMD Ryzen 5 5600X                      | 149,90 €  |
| RAM               | Kingston Fury Beast DDR4 3200          | 132,99€   |
| Caja              | Nfortec Krater X                       | 79,99€    |
| Refrigeración     | Nfortec ATRIA X                        | 97,99€    |
| Fuente            | Nox Hummer GD750 80 Plus Gold          | 86,99€    |
| Gráfica           | Asus Dual GeForce RTX 3050 Edition 6GB | 91,98€    |
| Almacenamiento    | WD Black SN770 1TB SSD                 | 210€      |
| Tarjeta de red    | ASUS PCE-AX1800                        | 82,98€    |
| Sistema operativo | Windows 10 PRO                         | 25,99€    |
| Placa base        | MSI MPG B550                           | 19,78€    |
| Monitor           | BenQ GW2780E 27"                       | 129,00€   |
| Teclado + ratón   | Logitech MK270                         | 32,98€    |
| Software + isos   | -                                      | 0€        |
| TOTAL             | -                                      | 1.140,57€ |

Y ahora deberíamos de calcular la mano de obra:

| Mano de obra                       | 30€/Hora        |
| ---------------------------------- | --------------- |
| Montar equipo                      | 2 horas – 60€   |
| Preparar equipo                    | 1 hora – 30 €   |
| Configurar servidor web + HoneyPot | 18 horas – 540€ |
| Montar Web                         | 20 horas – 600€ |
| TOTAL                              | 1230€           |

ESTO DA UN TOTAL DE 2370,57€

---

## Desarrollo y pruebas

### Conceptos previos 

Antes de empezar con el proyecto, me gustaría detenerme un momento para hablar sobre los Honeypots. 

Un Honeypot es una gran herramienta para un IDS (Intrusion Detection System), ya que nos ayuda a detectar y estudiar con antelación posibles ataques a nuestra infraestructura real. 

Cada Honeypot que vayamos a instalar, necesita su propia configuración y una adaptación al sistema donde va a ser implementado, para que funcione de la forma más eficiente y sea lo más realista posible, pues no es lo mismo un equipo en una red con 1000 equipos, 100 switches, 20 routers y 60 servidores, que un equipo en una red donde solo tenemos 2 portátiles, 4 teléfonos móviles y una tele. 

Esto puede suponer un contratiempo, pero hay una solución: 

**T-POT**

T-POT es una plataforma de Honeypots que tiene como base una distribución Linux Debian 22.04 (actualmente).  

Fue la empresa Telekom (telekom-security) quienes empezaron este proyecto de código abierto, alojando su repositorio en GitHub y licenciándolo bajo GNU GPL 3.0. 

Gracias a esta licencia, cualquiera puede aportar su granito de arena para mejorar T-POT. 

El enlace del repositorio es el siguiente: https://github.com/telekom-security/tpotce  

Esta plataforma incluye una gran variedad de honeypots ya preparados, configurados y listos para entrar en funcionamiento y que nos permite visualizar los resultados de los ataques a través de ELK

La **ventaja** de usar **T-POT** en vez de instalar los Honeypots de uno en uno, es que además de ahorrarnos muchísimo tiempo, **T-POT** ya integra todos en una misma instalación (en el mismo servidor) y todos **virtualizados con Docker**.  

Esto permite tener en ejecución varios demonios (servicios) actuando sobre la misma tarjeta de red sin problemas.  

Además, al tener cada Honeypot su entorno dockerizado, es muy sencillo su mantenimiento (actualizaciones, por ejemplo), gestión y personalización. 

En la siguiente página podemos ver cómo es la infraestructura de T-POT 

<img width="736" height="541" alt="image" src="https://github.com/user-attachments/assets/925cf45c-0ea3-4668-8e6a-830eb326f5c2" />

En la imagen podemos ver la siguiente estructura:  

<img width="664" height="454" alt="image" src="https://github.com/user-attachments/assets/34409b29-4423-4eb1-b855-89cfb1022a44" />

**DockerFile**

- Es un archivo de texto que contiene todas las instrucciones necesarias para construir una imagen Docker.
- Estas instrucciones incluyen
  - Configuración del entorno
  - Definición de variables de entorno
  - Instalación del software
 
**Conpot Image**

- Al tener un **Dockerfile** podemos usarlo para construir una **imagen Docker**.
- En este ejemplo, estamos construyendo una imagen para el **Honeypot Conpot**.
- La imagen incluirá todo lo necesario para ejecutar **Conpot**

**Start Containers From Images**

- Al tener la imagen, podemos usarla para iniciar un contenedor Docker.
- Un contenedor es una instancia en ejecución de una imagen Docker.
- Podemos decir que un contenedor es un proceso aislado que se ejecuta en nuestro sistema operativo 

**Conpot Container**

- Este es el contenedor que hemos iniciado a partir de la **Conpot Image**
- El contenedor, como ya hemos dicho, está ejecutando una instancia de **Conpot**

**1025, 50100** 

- Puertos que **Conpot** está escuchando
- Cuando un atacante ataque a estos puertos interactuará con **Conpot** en vez de con el sistema real, recopilando información.

**Store HoneyPot data Temporaly (/data)**

- Todos los datos que registran los Honeypots, se almacenan temporalmente en un directorio **/data**.

**EWS Poster** 

- Herramienta usada para agregar los registros de nuestro Honeypot a un servidor central, que se encuentra en http://sicherheitstacho.eu./ 

**Kibana Dashboard**

- Es una herramienta de visualización de datos de código abierto que se utiliza comúnmente con Elasticsearch, una base de datos de búsqueda distribuida.
- Estos eventos se pueden visualizar en un tablero de control accesible en https://ip:64297.
- Esto nos permite ver y analizar las interacciones con los honeypots de una manera fácil de entender. 

---

### Planificación de la red

Antes de continuar, todas las instalaciones de los equipos, sus configuraciones de red se encuentran recogidas en los anexos, más precisamente en el Anexo I (Instalaciones máquinas virtuales) y Anexo II (Configuración de los parámetros de red) 

Para poder conseguir que este proyecto funcione correctamente, necesito de una configuración de red que sea precisa y funcional. 

Al haber hecho todo el proyecto en la empresa, he usado la red que ellos tienen allí, la cual es una red **192.168.33.0/24** con Gateway en la dirección **192.168.33.1** y como servidor DNS en la dirección 8.8.8.8 (el de Google), aunque yo crearé el mío propio con la IP **192.168.33.2**. 

Mi **equipo real** y el anfitrión de las máquinas virtuales obtendría una IP por DHCP, en concreto la **192.168.33.164**. 

Las máquinas virtuales, estarán configuradas como **adaptador puente**, contando así con una IP de la misma red que el ordenador anfitrión.

Tenemos 5 máquinas virtuales: 

**Kali Linux**

- Para realizar los ataques y escanear la red, en búsqueda de los puertos abiertos y las vulnerabilidades presentes en los equipos y en la red. 

**Kubuntu**

- Equipo usado para administrar el servidor web y T-POT desde interfaz gráfica

**Ubuntu Server - XAMPP**

- Contendrá el servidor web XAMPP, que a su vez tendrá Wordpress, donde crearemos nuestro sitio web.

**Ubuntu Server – DNS**

- Contendrá el servidor DNS, con los registros de todos los equipos

**T-POT**

- El HoneyPot, al cual realizaremos diferentes ataques y veremos la información/datos que nos da de los mismos.
- Según esa información, determinaremos que medidas implementar para evitarlos.

El esquema de red sería el siguiente:

<img width="550" height="739" alt="image" src="https://github.com/user-attachments/assets/73aa446b-9655-4ab7-bbaf-9f6713207f5d" />

---

### Justificaciones

#### XAMPP 

**XAMPP** es un servidor web, el cual nos permite poder instalar y crear nuestras propias aplicaciones web. 

La característica de **XAMPP** es que se puede instalar en sistemas operativos Windows, GNU/LINUX y MacOs, además de que tiene un uso muy básico. 

Otras opciones a parte de **XAMPP** serían **WAMPP** que es para sistemas operativos **Windows** y **LAMPP** que es para sistemas operativos **Linux**. 

¿Se podría haber elegido **LAMPP** en vez de **XAMPP**? 

Sí, debido a que el sistema operativo del servidor es un **Ubuntu server 22.04.3** por lo que **LAMPP** es completamente compatible y factible para este caso, pero he preferido usar **XAMPP** porque tengo más experiencia usando este servidor web, además, de que su uso sería muy parecido que en un sistema operativo Windows (con la pequeña diferencia de que en Ubuntu Server no tenemos interfaz gráfica). 

En el **Anexo III**XAMPP es un servidor web, el cual nos permite poder instalar y crear nuestras propias 
aplicaciones web. 
La característica de XAMPP es que se puede instalar en sistemas operativos Windows, 
GNU/LINUX y MacOs, además de que tiene un uso muy básico. 
Otras opciones a parte de XAMPP serían WAMPP que es para sistemas operativos Windows 
y LAMPP que es para sistemas operativos Linux. 
¿Se podría haber elegido LAMPP en vez de XAMPP? 
Sí, debido a que el sistema operativo del servidor es un Ubuntu server 22.04.3 por lo que 
LAMPP es completamente compatible y factible para este caso, pero he preferido usar XAMPP 
porque tengo más experiencia usando este servidor web, además, de que su uso sería muy 
parecido que en un sistema operativo Windows (con la pequeña diferencia de que en Ubuntu 
Server no tenemos interfaz gráfica). 

En el **Anexo III** podéis visualizar la instalación de **XAMPP**

#### Wordpress

La aplicación web usada para montar y crear el sitio web, es Wordpress. 

Pero ¿Porque usar Wordpress y no otro software/aplicación web? 

Wordpress es el **CMS (sistema de gestión de contenidos)** más popular del mundo, siendo que el **42,7%** de **todos los sitios web creados** en el mundo, han sido con Wordpress y teniendo una **cuota de mercado del 62,5%**, mientras que otros CMS como **Joomla** poseen una **cuota de mercado del 2,6%** y tan solo el 1,8% de los sitios web del mundo han sido creados con Joomla.

Otras razones son: 

- Es de código abierto y gratuito
  - Algunos plugins son de pago, pero se pueden hacer webs muy chulas y bien estructuradas sin necesidad de pagar.
- Compatible con todo tipo de contenido.
  - Se pueden subir todo tipo de imágenes, videos, audios etc (aunque en algunos casos haya que tocar algún archivo de configuración).
- El sitio web creado puede escalar fácilmente gracias a la instalación de plugins y temas.
  - Con los cuales podemos realizar una mayor personalización del sitio.
- Es fácil de aprender a usar y fácil de administrar. 

Además, Wordpress es una aplicación web con la que yo ya tengo algo de experiencia, debido a que ya he realizado un par de webs con este **CMS**. 

En el **Anexo IV** se puede ver el proceso de instalación de Wordpress + cómo monté la web y en el **Anexo V** también se ve el cómo se instalan **Temas y Plugins** en Wordpress.

---

### Montar web

####  Tema y plugins usados 

El sitio web que he montado trata sobre la F1 y cuenta con la siguiente estructura:

Página de inicio 
- Estructura de un GP
- Mejores carreras Alonso 
Pilotos 
Escuderías 
Galería

Para poder montar esta web se ha utilizado el tema **Mesmerize** y el plugin **Elementor**. 
**Mesmerize** es uno de los mejores temas de Wordpress, debido a que en su página de inicio nos permite realizar una personalización profunda al igual que en las páginas secundarias. 
Y **Elementor** es el mejor plugin para la personalización de nuestras páginas. 

<img width="379" height="201" alt="image" src="https://github.com/user-attachments/assets/02b8c223-2223-4082-a234-a7a217fdce1d" />

Usualmente, al elegir un tema en Wordpress, solo podemos personalizar la página de inicio (a no ser que paguemos la versión Pro). Por suerte, con Elementor, la edición de estas páginas se vuelve mucho más sencilla, pudiendo poner todo tipo de contenido a las mismas (también tiene versión PRO, pero aún sin usarla, se pueden obtener muy buenos resultados.)

<img width="445" height="229" alt="image" src="https://github.com/user-attachments/assets/e08eec54-b5da-4c2a-a351-bdd310504772" />

#### Página de inicio 

Al acceder a la web, esto es lo primero que vemos: 
En la parte superior contamos con el logotipo del sitio web, además de las páginas que conforman el sitio web. 

<img width="773" height="361" alt="image" src="https://github.com/user-attachments/assets/3c956f46-e02a-4256-a3da-9f5bc50654c2" />

Además de eso, tenemos el nombre del sitio web, que se llama **ACMORS**

Luego tenemos 2 botones, que nos llevan a otras páginas, que contienen una tabla con la clasificación del mundial de 2023 y 2024 (aunque este último no ha acabado aún). 

Y más abajo, tenemos otros 2 enlaces, pero a páginas del sitio, una que nos cuenta sobre la estructura de un GP de fórmula 1 y otra donde encontramos diferentes carreras de Fernando Alonso

<img width="531" height="223" alt="image" src="https://github.com/user-attachments/assets/df567b56-4391-4551-bd6c-2cbdb53d310d" />

Más abajo tenemos más enlaces, estos nos llevan a otras páginas, con algunos de los principales récords de la F1. 

<img width="705" height="256" alt="image" src="https://github.com/user-attachments/assets/725bcf77-ddc3-47a4-8d8c-58fa3feb709f" />

En la siguiente sección nos encontramos con una pequeña “Galería” en la que se encuentran diferentes F1, al pasar el cursor por encima de una foto, saldrá un botón, que es un enlace a la entrada de la Wikipedia que corresponde con ese coche.

<img width="733" height="519" alt="image" src="https://github.com/user-attachments/assets/5d79856c-34a9-47ba-869c-a7fe7fa59714" />

Más abajo contamos con algunas declaraciones que han dado los campeones del mundo sobre diferentes temas de la F1. 

<img width="758" height="445" alt="image" src="https://github.com/user-attachments/assets/521cc245-9566-44ae-8ed9-95b6fdf3e164" />



#### Estructura de un GP

<img width="716" height="335" alt="image" src="https://github.com/user-attachments/assets/64f7975d-6b70-4649-bc57-ac5c7854835f" />

Todas las páginas interiores tienen ese fondo de F1, con el título de la propia página en el medio. 
En esta página se habla sobre cómo se estructura un GP de F1 y los diferentes eventos/sesiones que se celebran durante el mismo. 

#### Pilotos

Pasamos a la página de Pilotos. 

En esta página se habla sobre los 20 pilotos que conforman la parrilla de la temporada 2024. 

Se informa de su nombre y apellidos, nacionalidad, edad y varias curiosidades. 

Además, se cuenta una descripción bastante extensa sobre su carrera deportiva en la F1 y algunos datos del piloto en la F1 y en otras categorías en las que haya participado. 

<img width="761" height="646" alt="image" src="https://github.com/user-attachments/assets/987d7b7e-be83-4903-8854-18575c0ad975" />

↓

<img width="412" height="556" alt="image" src="https://github.com/user-attachments/assets/8856c9fd-f15d-4f96-a546-5683948eb2e8" />

↓

<img width="322" height="242" alt="image" src="https://github.com/user-attachments/assets/3af6b0e2-9119-4d79-9c94-b31904218262" />

#### Escuderías 

Ahora pasamos a la página de las **Escuderías**. 

En esta página nos encontramos con todas las escuderías que participan en la temporada 2024 de la F1. 

De cada escudería se muestran diferentes datos sobre la misma, los pilotos y el coche actuales que usan para la temporada 2024. 

<img width="662" height="581" alt="image" src="https://github.com/user-attachments/assets/320e96a2-7040-4613-afd1-d637a17293e7" />

↓

<img width="765" height="277" alt="image" src="https://github.com/user-attachments/assets/731d3553-acf8-4277-be9c-f44e5c5092f6" />

↓

<img width="761" height="255" alt="image" src="https://github.com/user-attachments/assets/3b10c24f-014c-4a4d-be40-5a4f66b433e4" />

#### Galería

Vamos a la siguiente página, que es una pequeña galería donde se han reunido imágenes de todos los campeones del mundo que ha habido a lo largo de la historia de la F1. 

<img width="760" height="675" alt="image" src="https://github.com/user-attachments/assets/604d2bea-8eea-41bc-be42-7d261b985714" />

#### Tributo a Fernando Alonso 

Y para terminar la web, tengo una página donde se recogen algunos de los momentos más importantes de **Don Fernando Alonso Díaz**. 

#### Acceso a la web

Tras acabar la web, Julián, un miembro de la empresa JMJ informática me sorprendió diciéndome que me había creado un dominio para poder subir la web. 

Instalamos Wordpress en el dominio, instalé los plugins necesarios, importe mi sitio de la máquina virtual al dominio nuevo y realicé un par de ajustes para que el sitio quedara perfecto.

Y se puede visitar, desde la URL https://marcos.jmjinformatica.net 

<img width="780" height="418" alt="image" src="https://github.com/user-attachments/assets/8e51b83a-4fd6-4c60-969f-ad571e138460" />

---

### Acceso a T-POT

Para poder acceder a T-POT voy a Kubuntu, y en un navegador web pongo la siguiente URL: https://192.168.33.150:64294 

Con esta URL accedemos a la administración web, donde inicio sesión con el usuario tsec y su correspondiente contraseña. 

<img width="645" height="667" alt="image" src="https://github.com/user-attachments/assets/42092ad4-9758-45df-97cf-fd5d6c8bfccd" />

#### Visión global 

Una vez dentro nos encontramos con lo siguiente: 
A la izquierda, un panel con diferentes apartados: 

- Visión global
- Registros
- Almacenamiento
- Redes
- Cuentas
- Servicios
- Aplicaciones
- Software Update
- Terminal

De todos estos apartados el más importante sería el de Terminal debido a que así no tendríamos por qué hacer las tareas desde la máquina, la misma idea que con XAMPP – Kubuntu, pero sin ssh, para conectarse por ssh a la T-POT habría que poner en el navegador: 

```bash
ssh://192.168.33.150:64295
```

Ahora mismo estoy en Visión global, donde vemos: 

- Último inicio de sesión
- Salud del sitio
- Uso
- Información del sistema
  - Modelo
  - Id de máquina
  - Tiempo de encendido 
- Configuración de la máquina
  - Hora
  - Dominio
  - Nombre del equipo
  - 
<img width="784" height="379" alt="image" src="https://github.com/user-attachments/assets/6c022f65-5bee-4265-8731-67fb507f80db" />

#### Herramientas T-POT

Después de echar un pequeño vistazo a la administración web, voy a la parte importante para ver todas las herramientas de las que dispone T-POT para registrar los ataques y cotejar la información recopilada por el HoneyPot.

Ahora accedo a traves del puerto 64297

Al intentar entrar, pide unas credenciales de usuario, las cuales ya configuré en la instalación de T-POT en su momento. (ANEXO I)

<img width="734" height="715" alt="image" src="https://github.com/user-attachments/assets/eed2238a-bf22-43e8-ac2e-d6e6d862ad63" />

Una vez iniciada la sesión, saldrá la siguiente pantalla de inicio: 

<img width="715" height="303" alt="image" src="https://github.com/user-attachments/assets/0e87b598-8205-4dc8-8b56-da268aeaf798" />


Como podemos observar, tenemos a nuestra disposición diferentes herramientas:

- **Attack Map**
  - Esta herramienta visualiza los eventos de los honeypots en tiempo real.
  - Conecta con Elasticsearch y extrae información como la IP de origen, la IP de destino, el puerto de origen, el puerto de destino, la marca de tiempo, el tipo de honeypot atacado y las estadísticas de este (eventos por último minuto, hora, día etc). 

- **Cockpit**
  - Interfaz web ligera y segura para la administración remota del sistema operativo y el monitoreo del rendimiento en tiempo real (la que acabamos de ver). 

- **CyberChef**
  - Aplicación web diseñada para llevar a cabo operaciones de análisis de seguridad, incluyendo:
    - Codificación/descodificación de datos
    - Compresión/descompresión de datos
    - Análisis de HASH
   
- **Elascticvue**
  - Interfaz web que permite navegar e interactuar con un cluster de ElasticSearch, proporcionando una forma fácil de navegar entre los datos almacenados, realizar consultas etc
 
- **Kibana**
  - Es la **herramienta más importante**, debido a que cada ataque que hagamos a los diferentes **HoneyPots**, lo podremos ver aquí, permitiendo visualizar diferentes tipos de datos (IP origen, ubicación, puerto atacado, vulnerabilidad explotada etc)
 
- SpiderFoot
  - Herramienta de automatización de inteligencia de código abierto, que recopila información sobre cualquier objetivo (IP, nombres de dominio, redes etc).
  - Usa una gran cantidad de fuentes de datos de amenazas, listas negras, DNS y otros detalles de la red


Además de todas esas herramientas, tenemos 3 enlaces distintos:

https://sicherheitstacho.eu/ - SecurityMeter
https://github.com/telekom-security/tpotce/ - Enlace al proyecto T-POT
https://github.com/telekom-security/tpotce/blob/master/README.md - Guía

**SecurityMeter** es un enlace que nos lleva a una página de la empresa alemana **Telekom** llamada **sicherheitstacho** en la cual,  se registran diferentes ataques que se están realizando en tiempo real en todo el mundo. 

<img width="731" height="332" alt="image" src="https://github.com/user-attachments/assets/7cf4492d-de25-40b9-b486-87f4d6b5e00c" />

Además, de que muestra que puertos son los más atacados. 
Estos gráficos dicen que los puertos **22 (ssh), 23 (telnet), 25 (smtp), 80 (http), 445(smb)**, son de los más atacados, cosa que me sirve de referencia 

<img width="519" height="458" alt="image" src="https://github.com/user-attachments/assets/46383667-d3f3-45af-8583-28e59eafc35b" />

---

### Kibana

Kibana es el componente/herramienta más importante debido a que con este, puedo ver todos los HoneyPots instalados en T-POT a través de unos Dashboard, además de que, si se ataca a uno de estos, se registrará y guardará, así pudiendo ver diferente información (depende del tipo de ataque, unos nos dan más o menos información). 

Para acceder es tan sencillo como seleccionar la opción de Kibana en la pantalla de inicio  

Al entrar, veremos los Dashboard de todos los honeypots instalados en T-POT. 

<img width="717" height="296" alt="image" src="https://github.com/user-attachments/assets/beb41344-f20e-41a3-9c7c-6374d8b72fa2" />

Además de los Dashboard, Kibana contiene más herramientas y componentes, que no los voy a usar, pero quiero mencionar

<img width="768" height="447" alt="image" src="https://github.com/user-attachments/assets/41c9ace7-5dd0-4850-b747-b2e31c4a232a" />

#### Principales Dashboard 

Los Honeypots más importantes/que más voy a usar, son los siguientes:

**Cowrie**

Es un honeypot de interacción media a alta de SSH y Telnet diseñado para registrar los ataques de fuerza bruta y la interacción del shell realizada por el atacante.  

En modo de interacción media (shell) emula un sistema UNIX en Python, en modo de interacción alta (proxy) funciona como un proxy SSH y telnet para observar el comportamiento del atacante a otro sistema. 

Es el HoneyPot sobre el que realizaré los ataques de fuerza bruta.

<img width="296" height="138" alt="image" src="https://github.com/user-attachments/assets/c99cf0de-c3d9-4ae5-b3c3-80a0cf681140" />

**T-POT Live Attack Map**

Este no es un HoneyPot como tal, sino que es un panel que nos permite ver todos los ataques que se están realizando en vivo. 

Tambien se puede acceder en la pantalla de inicio, pero desde el Dashboard se registran más cosas.

<img width="251" height="305" alt="image" src="https://github.com/user-attachments/assets/95180fc0-6f1a-41e5-8a40-e31dfb69ee40" />

↓

<img width="372" height="152" alt="image" src="https://github.com/user-attachments/assets/e57eadd4-86bf-447e-be4a-c9c0334cc2e7" />

**Suricata**

Suricata no es un **Honeypot**, sino que es un sistema de detección de intrusos que nos permite detectar actividades sospechosas en la red y que nos alerta sobre ello. (En resumidas cuentas, es un **IDS**). 

<img width="264" height="119" alt="image" src="https://github.com/user-attachments/assets/cc6811f9-b97d-4799-a4ac-d0347d528392" />

Este **IDS** proporciona información adicional que no vemos en otros **Dashboard**. 

<img width="736" height="481" alt="image" src="https://github.com/user-attachments/assets/346dcb65-0039-4a7d-81eb-f94650bc700c" />

**Dionaea**

Es un honeypot de carácter general diseñado para simular vulnerabilidades de red y servicios como SMB, http, FTP, MSSQL e incluso VoIP. 

Es uno de los honeypots más completos que hay debido a que simula más de 10 puertos, permitiendo realizar todo tipo de ataques y pruebas a él.

<img width="378" height="177" alt="image" src="https://github.com/user-attachments/assets/28f49791-bd9d-4432-8918-4e01e2e67f51" />

---

### Ataques

#### Introducción 

Llegamos al punto más importante del proyecto: **Los ataques**. 

Antes de nada, hay que tener claro 2 cosas 

#### Las fases de un ataque

**Reconocimiento**

- Ver a que equipos/sistemas puedo atacar

**Rastreo/Exploración**

- De esos equipos, que vulnerabilidades tienen, que yo puedo explotar.

**Obtener acceso**

- Acceder/atacar al equipo elegido

**Mantener acceso**

- Permanecer conectado en el equipo vulnerado

**Borrado de huellas**

- Eliminar cualquier rastro de nuestro ataque


#### Principios de la ciberseguridad 

**Confidencialidad**

- Cualidad del mensaje, comunicación o datos, para que solamente las personas autorizadas puedan acceder a ellos.

**Integridad**

- Se cumple la integridad cuando los datos/información no ha sido alterada en ningún momento.

**Disponibilidad**

- Capacidad de un servicio, datos o sistema de estar disponible

**Autenticación**

- Consiste en la verificación de la identidad de un usuario, aportando algún modo que permita verificarlo

**No repudio**

- Permite comprobar la participación de 2 partes en una comunicación
- No repudio en el origen + No repudio en el destino.

Según el ataque que vaya a realizar, realizaré todas las fases o no 
Realizaré 3 ataques: 

- Ataque DoS
- Ataque de fuerza bruta a ssh
- Ataque MiTM 

Y en todos los ataques, pondré que principios de la ciberseguridad que estoy vulnerando

**¿Cómo voy a hacer los ataques?**

A través de la máquina Kali Linux se realiza un escaneo de toda la red, buscando el equipo con más puertos abiertos. 
Este será el objetivo del ataque y según que puertos estén abiertos, se hará un ataque u otro 
El equipo con más puertos abiertos es T-POT, por lo que será el objetivo. 

---

### Escaneo de la red 

Con **Kali Linux** ejecuto **nmap** para buscar que equipos están conectados a la red, en búsqueda de vulnerabilidades. 

Usaré el comando: 

```bash
nmap -R 192.168.33.* 
```

Con la opción **-R** resolvemos todas las direcciones IP en nombres de host. 

Algo muy útil en estos casos de querer ver todos los equipos en una red. 

Ejecuto el comando y después de un esperar unos pocos segundos, muestra los resultados en orden numérico (primero el equipo 33.2, luego el 33.3 etc ).

Primero ha detectado los puertos abiertos del servidor DNS, el cual tiene 2 puertos abiertos. 
El **22**, que es para la conexión por **ssh**. 
El puerto **53**, que es para el protocolo **dns**.

<img width="649" height="201" alt="image" src="https://github.com/user-attachments/assets/743cb686-11fa-45e6-bc34-03f07504c3ea" />

El siguiente equipo es la propia máquina Kali Linux y observo, que no tiene ningún puerto abierto.

<img width="699" height="96" alt="image" src="https://github.com/user-attachments/assets/6f86c6c1-e1d0-46b9-adef-b0f667857ec8" />

Pasamos con **T-POT**  

Vemos que están los puertos de **ftp, ssh, telnet, smtp, http, pop3, imap, https, smtps, nfs, mysql** y más servicios/protocolos. 

<img width="492" height="654" alt="image" src="https://github.com/user-attachments/assets/e8fd1530-ce22-4142-9339-88202302d185" />

Y, para terminar, los puertos del servidor web: 
Nada fuera de lo esperado, **ftp y ssh**. 

<img width="528" height="138" alt="image" src="https://github.com/user-attachments/assets/808f41e6-589f-44de-9f0c-653ab36511a0" />

---

### Ataque de fuerza bruta 

Vemos que hay 3 equipos a los que poder atacar  
Como hemos observado, el equipo con la IP **192.168.33.150** es el que más puertos abiertos tiene. 

Seguramente un cracker experimentado, lo ignoraría y atacaría cualquiera de los otros 2 equipos (todos tienen el puerto 22 abierto) pero en esta ocasión, voy a atacar a T-POT. 

El primer ataque va a ser un ataque de fuerza bruta al servicio ssh (puerto 22).

**¿Qué es un ataque de fuerza bruta? 
¿En qué consiste?**

Un ataque de fuerza bruta es un método de piratería informática, que usa un método de prueba y error para poder descifrar credenciales de inicio de sesión. 

Hay varios tipos de ataques de fuerza bruta, en un ataque tradicional, los crackers intentan hallar la contraseña probando con todos los caracteres posibles, mientras, que nosotros vamos a hacer un ataque de diccionario. 

Este ataque consiste en que los crackers tienen archivos con muchísimos usuarios/contraseñas que obtienen de diferentes métodos (contraseñas comúnmente usadas, contraseñas filtradas por una fuga de información etc) y usan diferentes herramientas que les permiten ir probando uno a uno a una gran velocidad, hasta dar con las credenciales correctas y poder vulnerar el sistema/cuenta objetivo. 

Actualmente se usan otros métodos bastante más sofisticados **(tablas rainbow)**, pero yo voy a hacer un ataque más sencillo, en particular, un ataque de diccionario.

En este ataque vulneramos:

- **Confidencialidad**
  - Debido a que el atacante intenta descubrir información que está protegida.
- **Integridad**
  - No es uno de los objetivos principales, pero si accedemos a un sistema, podemos alterar su información.
- **Autenticidad**
  - Al adivinar las credenciales de un usuario, nos podemos hacer pasar por él
- **No repudio**
  - Al acceder a un sistema como un usuario (al que hemos adivinado sus credenciales) pues podemos realizar x acciones como ese usuario.
 
Para poder realizar el ataque, usaré la herramienta **Metasploit FrameWork**. 

<img width="543" height="227" alt="image" src="https://github.com/user-attachments/assets/771b6ad1-89cc-49cd-aa33-1ece55cc4ca1" />

Dejo que arranquen los módulos y la base de datos de **Metasploit**.

<img width="529" height="521" alt="image" src="https://github.com/user-attachments/assets/8616db26-f06e-4102-a8f5-d5f0457123a0" />

Me creé un pequeño archivo donde se encontrarán algunas de las contraseñas que probaremos para hacer el ataque. (estos archivos en un ataque real contienen muchísimas más contraseñas, pero para hacer este ataque, con estos ejemplos nos es suficiente)

<img width="578" height="155" alt="image" src="https://github.com/user-attachments/assets/815718eb-abee-4f8a-aa09-05835b7ec436" />

Usaremos el módulo **auxiliary/scanner/ssh/ssh_login** el cual intenta iniciar sesión en un servidor SSH usando diferentes combinaciones de usuario y contraseñas. 

Al usarlo, debemos de especificar 3 cosas:

- Fichero de contraseñas
  - Comando set PASS_FILE /home/Kali/Desktop/contrasena
- Hosts a atacar
  - Comando set RHOSTS 192.168.33.150
- Usuario a usar
  - Comando set USERNAME adminipot

<img width="744" height="94" alt="image" src="https://github.com/user-attachments/assets/a814c495-aa35-49d8-98ef-1f28f019fe1c" />

↓

<img width="698" height="49" alt="image" src="https://github.com/user-attachments/assets/f447834f-6138-43ea-b0da-f8ae307b6219" />

Aunque con tan solo esos 3 parámetros ya se puede hacer el ataque, hay bastante más información a tomar en cuenta en este ataque. 
Para verlo, ejecutamos el comando **info**. 

<img width="773" height="609" alt="image" src="https://github.com/user-attachments/assets/43d29bc7-3ba7-4ffb-bdfd-4ac79c4b6df9" />

Hay otros parámetros como **USER_FILE** que es similar al de **PASS_FILE** solo que, en vez de tener contraseñas, tiene usuarios. 
Y si tuviera la opción de tener un solo archivo para ambos, usando el parámetro **USERPASS_FILE** 
Otros parámetros interesantes son: 

**RPORT** – Puerto objetivo 
**STOP_ON_SUCCESS** – Si al encontrar una coincidencia en las credenciales, deja de intentar 
adivinar más credenciales, o no.  
**ANONYMOUS_LOGIN** – Si queremos intentar un Login sin usuario/contraseña 
**BLANK_PASSWORDS** – Si queremos probar logins sin contraseñas 
**BRUTEFORCE_SPEED** – Velocidad con la que se prueban los usuarios/contraseñas. 

Una vez listo, ejecuto el ataque con el comando **run**.

<img width="777" height="133" alt="image" src="https://github.com/user-attachments/assets/906e2791-0110-4703-b869-db0b9b65f90b" />

Parece que ha encontrado una coincidencia, nuestro ataque ha sido exitoso, , tenemos una sesión abierta (se ven con el comando **sessions -l**)

<img width="763" height="127" alt="image" src="https://github.com/user-attachments/assets/cbe16fe0-30d1-49e4-b9fa-dcf2d3b04e26" />

Así que las credenciales son usuario adminipot y contraseña alonso , voy a intentar hacer una conexión ssh al equipo. 

ssh adminipot@192.168.33.150 con contraseña alonso. 

Me he podido conectar conectado y parece ser que el equipo se llama Ubuntu. 

<img width="741" height="229" alt="image" src="https://github.com/user-attachments/assets/703facee-a5cc-47ad-af1c-434448a46232" />

Navego por los directorios y vemos que tiene 2 usuarios, adminipot, que es con el que hemos entrado, y phil. 

<img width="770" height="117" alt="image" src="https://github.com/user-attachments/assets/7d42a042-d9ba-4c36-b62c-5291fae7d3d8" />

Voy a probar a editar un fichero, puesto que si me he conectado por ssh tendré permisos para realizar cualquier acción sobre el equipo 
Probamos con el archivo **/etc/resolv.conf** que tiene la configuración del servidor **DNS**.

<img width="573" height="48" alt="image" src="https://github.com/user-attachments/assets/cb8165ee-c163-4ddd-8a6f-724428b4d535" />

Pero si estoy conectado al equipo ¿Porque no puedo editar ficheros? 
La cosa es que NO estoy conectado al equipo real. 

Esto parece ser que es un **“entorno simulado”** donde **T-POT** engaña a los atacantes, haciéndoles creer que su ataque de fuerza bruta ha sido un éxito y que pueden entrar al equipo y hacer lo que quieran. 

La máquina **T-POT** no se llama Ubuntu, se llama **proyecto-chicote** y solo tiene un usuario, el usuario **tsec**.

<img width="485" height="86" alt="image" src="https://github.com/user-attachments/assets/51254717-0b7c-447a-b8ab-9ab966a50ca9" />

Al conectarnos a ese **“entorno simulado”** no tengo permisos, solo de navegar por los directorios y ver su contenido (el cual no es real, debido a que, por ejemplo, usuario phil no hay).

Y es que T-POT no solo nos engaña de esta forma, sino que, además, todo lo que he hecho dentro de ese “entorno simulado”, ha quedado registrado. 
Voy a Kibana y seleccionamos el Dashboard del Honeypot Cowrie.

<img width="763" height="382" alt="image" src="https://github.com/user-attachments/assets/efbde5e6-2056-4ebd-bd03-76d00af2dbb0" />

Y vemos que tenemos **141 ataques** registrados, desde **1 sola IP**. 
Si miramos otros paneles, vemos que se ha atacado al puerto **22 y 23**. 

Puertos afectados por el ataque:


<img width="784" height="214" alt="image" src="https://github.com/user-attachments/assets/fd4461d8-a327-4db8-b512-4b4c3a9fb079" />

Servicio y versión usados


<img width="713" height="261" alt="image" src="https://github.com/user-attachments/assets/98a9e0ac-9f5e-48d7-9f3d-477cf0833e42" />

En este panel, podemos ver los usuarios y contraseñas que se han usado en el ataque de fuerza bruta. 


<img width="756" height="212" alt="image" src="https://github.com/user-attachments/assets/c574f8f5-48fb-4d9c-a0b8-679e5ce2f872" />

Ahora vemos que los ataques se han lanzado desde la IP **192.168.33.44**, que es la de **Kali Linux**. 


<img width="763" height="160" alt="image" src="https://github.com/user-attachments/assets/52c1217e-b6f1-4537-9d31-5f58004b7cb4" />

Y, por último, vemos los comandos que ha ejecutado el atacante mientras estaba conectado. 


<img width="177" height="458" alt="image" src="https://github.com/user-attachments/assets/571cd8e9-81db-497c-939e-e1241ce8bbfd" />

#### ¿Cómo podemos evitar estos ataques?

A fin de cuentas, este ataque no ha surgido efecto porque T-POT está preparado para este tipo de ataques, porque si hubiese atacado a cualquiera de los 2 servidores, habría entrado perfectamente. 
Para proteger a un equipo de este tipo de ataques, tomaríamos las siguientes medidas 


**Denegar tráfico al puerto 22**

- Mediante la implantación de un Firewall o mediante UFW podemos crear reglas.
- Estas reglas pueden ser de (como bien digo) cerrar el puerto, rechazar cualquier conexión a ese puerto

**Tener contraseñas más seguras**
- La contraseña de los servidores es adminidns/adminixampp por lo que vemos que no son contraseñas seguras.

**Cambiar el puerto por defecto**

- Mediante diferentes ficheros de configuración, podemos cambiar cual es el puerto de escucha por defecto y desactivar el puerto 22, así, los atacantes verán que el puerto 22 no está activo y no intentarán este ataque 

**Abrir cerrar los puertos cuando vayamos a usarlos a través de reglas de entrada**

- Esta medida es algo más molesta de tomar, debido a que requiere tener que abrir y cerrar el puerto cada vez que se vaya a usar, pero creo que es una de las más eficientes

- Y al final, cuanta más seguridad, menor facilidad, tanto para nosotros como para el atacante.

**Tomar estas medidas también para el resto de los servicios**

- FTP y MySQL también tiene estas carencias y es otra forma que tienen los atacantes de entrar a nuestro servidor, así que deberíamos de hacer lo mismo con este y el resto de los servicios vulnerables de nuestros servidores. 

---

### Ataque DoS

Prosigo con el ataque **DoS**

**¿En qué consiste?**

Un ataque **DoS (Denial of Service)** es un tipo de ciberataque que tiene como objetivo hacer que un ordenador, red o servicio sea inaccesible para el resto de los usuarios. 

Los ataques **DoS** se logran inundando el objetivo con tráfico o enviándole información que desencadena un bloqueo. 

Suele haber 2 tipos de ataque **DoS**

- **Ataque de desbordamiento de búfer**
  - Ocurre cuando se envía tráfico a una dirección de red que supera las capacidades del sistema al que se ataca.
  - Esto provoca lentitud, caídas del sistema etc, lo que provoca, la denegación del servicio.
 
- **Ataques de inundación**
  - Este se da cuando un servidor es saturado con una gran/absurda cantidad de paquetes, provocando la denegación del servicio.
  - De hecho, es el ataque que vamos a realizar.

No hay que confundirlo con el ataque DDOS puesto que no es lo mismo. 

La diferencia radica en que un ataque DOS se realiza desde 1 único sistema, mientras que el ataque DDOS se realiza desde varios sistemas, los cuales han sido infectados con malware y son controlados por el atacante. 

Estos últimos son más difíciles de mitigar, porque el origen del ataque no está claro, al hacerse desde múltiples direcciones.

En este ataque, se están vulnerando:

- **Disponibilidad**
  - Porque dejamos a los usuarios sin acceso a un servicio.
 
- **Integridad**
  - Al sobrecargar tanto el objetivo, los datos pueden verse comprometidos y no cargarse/mostrarse de forma correcta.
 
Como ya tenemos el escaneo de la red hecho, no hace falta que vuelva a realizarlo, aun así, vuelvo a poner los puertos que están abiertos para recordarlos. 

<img width="491" height="655" alt="image" src="https://github.com/user-attachments/assets/e1fbdf49-a6f6-4381-b999-ca3bc9afaf54" />

Esta vez, la víctima será el puerto **80** el cual es usado por el protocolo **http**. 

En esta versión de **T-POT****** no hay ningún HoneyPot que se encargue de monitorizar los ataques DoS que se puedan hacer hacia este puerto, pero contamos con **Suricata** el cual es un IDS que registra TODO tipo de tráfico que hay en nuestra red. 

Usaré la herramienta **slowhttptest**, la cual nos permite simular muchos ataques **DoS**, como **Slowloris, Slow HTTP POST, Slow Read o Apache Range Header**. 

En esta ocasión, vamos a realizar un ataque **Sloworis/SlowHeaders** el cual consiste en abrir muchas conexiones con el servidor y mantenerlas abiertas el mayor tiempo posible, para agotar los recursos del servidor y tumbarlo. 

Lo primero será instalar la herramienta, que se hace con un simple apt install slowhttptest. 

<img width="372" height="55" alt="image" src="https://github.com/user-attachments/assets/fb31ce87-b31a-4b34-adb4-3575cd50e3c9" />

Ya instalado, realizo el ataque, usando el siguiente comando:

```bash
slowhttptest -c 20000 -H -o slowhttp-g -i 1 -r 600 -t GET -u http://192.168.33.150:80 
```

<img width="772" height="43" alt="image" src="https://github.com/user-attachments/assets/e6d3abdd-068f-4c1c-8319-f6c201655897" />

**¿Qué hace este comando?**

-c 20000 

- Con este parámetro especificamos el nº de conexiones concurrentes que van a ser abiertas.
- En este caso, serán 20000 conexiones 

-H 

- Este parámetro indica que el ataque a realizar es un Slowloris.

-o slowhttp-g 

- Especifica el nombre del archivo donde se guardarán los datos del ataque

-i 1 

- Especifica el intervalo entre los seguimientos de las conexiones abiertas.
- En este caso, será cada 1 segundo (aunque en verdad, lo hace cada 5). 

-r 600 

- Especifica la velocidad en la que se abrirán las conexiones
- En mi caso, 600 por segundo

-t GET 

- Especifica el tipo de solicitud HTTP que se usará en el ataque
- En mi caso, usaré GET.

-u http://192.168.33.150:80 

- IP y puertos objetivo


Al ejecutarlo, nos saldrá una pantalla: 

Donde se nos muestra, el tipo de ataque, el nº de conexiones totales, el objetivo, el tipo de mensaje HTTP, el tamaño de la cabecera de los paquetes,  el nº de conexiones por segundo, y la duración del test. 

Además, de que nos informa del nº de conexiones realizadas, pendientes, cerradas y si el servicio está habilitado o no. 

<img width="635" height="582" alt="image" src="https://github.com/user-attachments/assets/6af5bd93-1cb5-4023-a34d-38847fa385a3" />

Esta es una captura del ataque una vez han finalizado esos 4 minutos de ataque, donde vemos que el servicio ha caído. 


Esta versión de T-POT no tiene ningún Honeypot en específico que registre este tipo de ataque (antes estaba glastopf en la versión 16.04) y no puedo comprobar que realmente se haya caído ningún servicio, solamente lo sé porque lo pone en el resultado del ataque, pero he de decir que al entrar en Kibana para ver el Dashboard de Suricata me di cuenta de que iba muy lento el equipo. 

Una vez realizado el ataque, vamos a Suricata a ver qué datos se han recogido. Suricata recoge todo tipo de eventos/paquetes que hay por la red. 

Como se ha realizado un ataque DoS se han estado creando una gran cantidad de tráfico por la red y Suricata los ha detectado perfectamente. 

Aquí vemos el nº de eventos, el nº de IPs implicadas y cuantos eventos a registrado en un intervalo de tiempo de 5 minutos aprox

<img width="744" height="550" alt="image" src="https://github.com/user-attachments/assets/b0e42426-c11e-4ae6-b783-609f4fa85045" />

Ojo, en **Suricata** los eventos no tienen por qué ser ataques.

En estos paneles, podemos ver la cantidad de ataques que se han realizado, recogiendo el tipo de alerta generada (la gran mayoría son Generic Protocol Command Decode) y los puertos afectados, viendo la gran cantidad de peticiones que ha recogido el puerto 80.


<img width="778" height="216" alt="image" src="https://github.com/user-attachments/assets/d4413f01-37b3-4da1-9e9a-1362a7860cdd" />

En este gráfico de Donut podemos ver que todos los mensajes que se han lanzado han sido de tipo **GET**.


<img width="342" height="248" alt="image" src="https://github.com/user-attachments/assets/62d4deed-4fd3-4532-b298-30ce51534d8d" />

Y, por último, uno de los paneles más interesantes, el panel de **IPs origen**. 

Como ya mencioné en repetidas ocasiones, aunque no hagamos nada, Suricata va a recoger información, por lo que al ver las IPs origen, me doy cuenta de que hay 2 IP que no reconozco, la IP 192.168.80.6 y la 192.168.33.164. 

Al estar en la red de la empresa, habrá más equipos conectados a parte de los míos, por lo que habrán generado tráfico y suricata lo habrá detectado. 


<img width="379" height="277" alt="image" src="https://github.com/user-attachments/assets/03cfa745-5262-4f92-b917-ad056274ac76" />

Otro ataque realizado, aunque estos datos no son tan útiles como los del anterior ataque.  
En el otro ataque teníamos contraseñas usadas, usuarios, comandos usados etc. 
Ahora, solo se nos muestra nº y tipo de conexiones además desde que IP se ha realizado.

Aunque con eso nos es más que suficiente para tomar medidas

**Implantar un Firewall**

- “Al igual que en el caso anterior, la implementación de un firewall robusto en nuestra red resulta en un incremento significativo en la seguridad.

- Por ejemplo, podemos denegar tráfico hacia el puerto 80 u otros puertos, desde ciertas IP o solo permitir el tráfico de las IP que queramos en específico, inclusive podemos usar el mismo UFW el cual mencioné en las anteriores medidas para realizar estas acciones.

**Limitar la cantidad de tráfico recibido**

- Así, si nos hacen un ataque, el servidor nunca se caerá o será mucho más dificil conseguirlo

**Balanceo de carga**

- Esta solución es un bastante más técnica, pues consiste en tener varios servidores y distribuir el tráfico recibido en cada uno de ellos, mitigando los efectos de un ataque como este.

- Esta medida es recomendable para grandes empresas, que se pueden permitir el gasto de tener varios servidores.

**Redundancia**

- Al igual que con el balanceo de carga, podríamos tener más servidores, para que, en caso de que caiga un servidor, otro se ponga en funcionamiento y tenga el servicio activo, hasta que pare/detengamos el ataque.

- Al igual que la medida anterior, esta es recomendable para grandes empresas.

**Monitorización**

- Si tenemos una herramienta como Suricata, podemos ver si nos están atacando o no y tomar cartas en el asunto. 

---

### Ataque MiTM 

**¿En qué consiste?**

Este ataque consiste en que un atacante intercepta la comunicación entre 2 equipos, los cuales creen que se están comunicando de forma directa y segura. 

Toda la información que envíe un equipo al otro será interceptada por el atacante, que podrá ver todos los datos que se están transfiriendo. 

Esto es muy peligroso, debido a que este ataque puede detectar credenciales de inicio de sesión, datos bancarios, información sobre uno de los 2 equipos (o de ambos) además de poder modificar esa información, llegando a afectar a la integridad y al no repudio 

Estos ataques suelen ser silenciosos, por lo que es muy difícil detectarlos, lo que los hacen aún más peligrosos.

En este ataque, se vulnera:

**Confidencialidad**
- El atacante puede ver toda la información que se transmite.

**Integridad** 
- No solo puede ver la información, si no que, además, puede modificarla. 

**No repudio** 
- Si se modifica la información, la parte originaria no podría demostrar que el mensaje se ha alterado o no. 

Este ataque ha presentado ciertos desafíos inesperados.  

Habría sido preferible explorar aspectos más intrigantes, como la visualización de las credenciales de inicio de sesión de T-POT. Sin embargo, el resultado obtenido ha cumplido con las expectativas.


La herramienta que voy a usar para realizar este ataque es **ettercap-graphical**.


Esta es una herramienta gratuita y de código abierto usada para el análisis de red y las auditorias de seguridad. 
No solo eso, sino que también permite realizar ataque de MiTM, incluso haciendo posible una inyección de datos en una conexión ya establecida entre 2 equipos.


<img width="757" height="112" alt="image" src="https://github.com/user-attachments/assets/7e71065b-b614-4101-afd1-14f9eb9efff9" />

Para poder usarla, se nos piden privilegios de administrador, así que ponemos la contraseña de Kali (que es Kali). 


<img width="556" height="260" alt="image" src="https://github.com/user-attachments/assets/0cf85ae8-ee9f-4363-af2c-824fe378cbb8" />

Y accedo a **Ettercap**.

<img width="762" height="347" alt="image" src="https://github.com/user-attachments/assets/fa36b9aa-8b89-4e2b-9dfb-eb50c5765bad" />

Para empezar este ataque, primero hay que saber que equipos vamos a atacar. 
Hago clic sobre los 3 puntitos de la parte superior derecha y nos salen diferentes opciones: 

Voy a **Hosts>Scan for hosts** 


<img width="316" height="319" alt="image" src="https://github.com/user-attachments/assets/451fe1fd-35fb-49dd-8ae5-45aa75c6bb8f" />

↓


<img width="282" height="249" alt="image" src="https://github.com/user-attachments/assets/6dc80466-0b1e-4c63-9fa1-18cd40407299" />

Este escáner lo hice con las **máquinas en modo red interna**, por eso se ven tan pocos equipos.


<img width="720" height="73" alt="image" src="https://github.com/user-attachments/assets/59c9f0e7-dd4e-41f1-a3bf-5c13e6bdacc9" />

Interceptaré la comunicación entre Kubuntu y T-POT así que los añado a los Target1 y Target2 respectivamente. 


<img width="361" height="143" alt="image" src="https://github.com/user-attachments/assets/8bc9b2a2-a586-470f-9c7a-86460cffd17a" />

↓


<img width="169" height="34" alt="image" src="https://github.com/user-attachments/assets/d21b1952-358d-48ca-b646-b3fb955e0338" />

↓

<img width="157" height="37" alt="image" src="https://github.com/user-attachments/assets/2284b23c-5ee8-4305-88b6-3269c5079cbc" />

↓

<img width="315" height="47" alt="image" src="https://github.com/user-attachments/assets/05d37fba-e4e8-4bf1-b1ac-53adc1f2b60d" />

Haremos un **ARP POISONING**  

<img width="176" height="296" alt="image" src="https://github.com/user-attachments/assets/6673779b-5e6d-41ab-addb-608ccc16903c" />

Al seleccionarlo saltará una última ventana, donde tendremos 2 parámetros opcionales que podemos añadir. 

**Sniff remote connections**

- Ettercap no suele analizar las conexiones con salidas a internet, pero con si añadimos este parámetro, pasará a hacerlo, lo cual es útil cuando queremos interceptar tráfico a través de un Gateway o route

**Only posion one-way**

- Fuerza a Ettercap a realizar en envenenamiento ARP en una sola dirección, es decir, de Target 1 a Target 2.
- Es muy útil para este tipo de casos

Aunque la 1º opción no nos es de mucha utilidad, también voy a seleccionarla, por si acaso. 

<img width="450" height="165" alt="image" src="https://github.com/user-attachments/assets/8f99d6e4-666f-4e44-8aba-ca2b9b8c2f0b" />

Y ya tenemos el ataque ejecutándose

<img width="349" height="76" alt="image" src="https://github.com/user-attachments/assets/c888555d-7277-4a47-9256-ff0a22e68ec0" />

Una vez he lanzado el ataque, vamos a hacer una conexión desde Kubuntu a T-POT. 

Me hubiese gustado poder capturar las credenciales de inicio de sesión de la interfaz gráfica pero no sé porque, Ettercap no es capaz de capturarla. 

Tampoco captura ssh, pero hay una que si la captura: FTP. 

Realizo una conexión FTP de Kubuntu a T-POT poniendo las credenciales de usuario alonso alonso.

<img width="413" height="236" alt="image" src="https://github.com/user-attachments/assets/cef57958-b57c-46ad-a04e-8190a4886e2a" />

Si vuelvo a Kali Linux, veo lo siguiente: 
Así es, obtuve las credenciales de usuario 

<img width="489" height="127" alt="image" src="https://github.com/user-attachments/assets/f87b5679-90c8-4f64-9201-4f5f3f62eebc" />

Ya tenemos las credenciales de FTP, así que habrá que hacer una conexión por FTP desde Kali Linux, al igual que hice con ssh.

Abro un terminal y nos conectamos por FTP a T-POT. 
A ver si esta vez puedo entrar al sistema y ver que hay dentro (referencia a que en ssh no pudimos).

<img width="416" height="248" alt="image" src="https://github.com/user-attachments/assets/f5e73e7d-7231-47e7-a3b4-ea37e9592474" />

Primero, con el comando pwd veo en que directorio estoy localizado. 
Veo que estoy en / por lo que ahora podré realizar cualquier acción sobre el equipo, por ejemplo, un ls. 
Pues no funciona, intentaré entrar al directorio /etc. 

<img width="548" height="179" alt="image" src="https://github.com/user-attachments/assets/26d03186-83b5-4008-88f1-9853366a662d" />

Una vez más, nos encontramos en una situación similar a la experimentada con SSH. En realidad, no estamos estableciendo una conexión con TPOT, sino con un entorno simulado en el que nuestros permisos son inexistentes. 

Es evidente que las credenciales de T-POT no serán ‘alonso alonso’, una vez más, TPOT ha logrado engañarnos. 

Vamos a T-POT y vemos los resultados. 
Al atacar a FTP el HoneyPot que estamos atacando es Dionaea, así que nos dispondremos a ver su Dashboard.


La verdad, es que aquí hay bastantes menos datos con los que tratar. 
Tenemos los típicos, que nos cuentan el nº de ataques, el nº de IPs implicadas y cuando se han hecho los ataques

<img width="749" height="421" alt="image" src="https://github.com/user-attachments/assets/89c3d85e-5bdc-403e-89c1-e61a7a3fc698" />

Ahora tenemos 2 gráficos, donde vemos el protocolo de transporte usado y desde que puertos se ha atacado. 

<img width="776" height="244" alt="image" src="https://github.com/user-attachments/assets/5af3dd94-5362-4356-bc22-52e5a9f39daf" />

Proseguimos con el último gráfico (ya sé que son pocos, pero no me ha mostrado más información interesante este HoneyPot en este caso.)

<img width="742" height="145" alt="image" src="https://github.com/user-attachments/assets/827e812a-866b-4a0c-a2db-22d19d8906b7" />

Se ha llevado a cabo el último ataque.  
Es imperativo considerar qué medidas preventivas deberíamos implementar para eludir este tipo de ataques en el futuro. 

**Usar conexiones cifradas**
- Si usamos conexiones cifradas, Ettercap no será capaz de detectar la información que es transmitida por los paquetes de red

**Usar un Firewall o crear reglas de entrada/salida con UFW**
- Si evitamos que cualquier equipo no autorizado entre a nuestra red, este problema ya estará solucionado.
- Y en caso de no evitar que entre, si podemos limitar su movilidad en la red.

**Realizar escaneos de red constantes**
- Usando diferentes herramientas de monitorización, como puede ser el propio Suricata

**Mantener equipos y software actualizados**
- Así, tendremos menos vulnerabilidades en nuestro sistema

---

## Conclusiones finales 

### Grado de cumplimiento de objetivos finales

Una vez realizado el proyecto, es hora de ver si he completado los objetivos propuestos, o si, por el contrario, nos han faltado cosas. 
Procedo a repasar cada objetivo de manera individual.

**Adquirir conocimientos sobre la instalación, creación y personalización de un sitio web, usando la aplicación web Wordpress y el servidor web XAMPP.**

Este objetivo se ha cumplido de forma satisfactoria. 
En este proyecto he aprendido a instalar XAMPP de forma correcta y dentro de XAMPP, he podido instalar y hacer funcionar Wordpress (después de otros 3-4 intentos). 

Y no solo eso, si no que he creado un sitio web completamente funcional, aunque podría haber sido mucho más grande y añadir más información. 
Mis expectativas eran demasiado altas para el tiempo disponible  

**La instalación y puesta en marcha de un HoneyPot, además, de aprender sobre el funcionamiento de las diferentes herramientas que vienen integradas en el mismo.**

No he instalado un solo HoneyPot en específico, si no que he instalado una herramienta que contiene muchísimos HoneyPots. 

Este objetivo también se ha cumplido, he instalado satisfactoriamente T-POT, he accedido a él, he podido ver todas las herramientas que incluye (aunque tan solo haya usado 1 o 2) y he hecho que funcione, pudiendo recoger diferente información sobre los ataques. 

**Proponer y tomar medidas, frente diferentes ciberamenazas/ciberataques más 
habituales, aprendiendo así, diferentes herramientas de hacking y diferentes 
herramientas de protección de equipos vulnerables**

Este objetivo se ha cumplido. 
Todas las medidas que se han propuesto nos sirven para poder anular o prevenir los ataques que se realizan, aunque no las he tomado, debido a que mi infraestructura de red (equipos virtualizados) me impide implementar la mayoría de las medidas propuestas. 
Y, por último, he aprendido a como realizar con éxito ataques de fuerza bruta, DoS y de MiTM

Así que todos los objetivos propuestos, se han cumplido de forma satisfactoria

---

### Propuestas de mejora o ampliaciones futuras

Aunque se hayan cumplido los objetivos, este proyecto tiene mucho más potencial 

Primero, en el sitio web se podrían añadir diferentes formas de Login o añadiendo algún formulario. 

Además de que se podría haber creado más páginas y tener más información dentro del sitio. 

Otra cosa que se podría haber hecho, es dejar abierto T-POT para internet: 

Hay un video de [s4vitar](https://www.youtube.com/@s4vitar) sobre este proyecto, pero en vez dejarlo en una red local, lo sacan a Internet para que lo ataquen, dejándolo unas semanas, para ver qué tipo de información recopilan. 

Y desde el Attack Map pueden ver en vivo desde donde le están haciendo los ataques, mientras que yo, aunque los haga, no puedo verlo. 

Además de eso, se podrían haber hecho muchos más ataques al T-POT para así poder usar otras herramientas o ver otros HoneyPots, pero por el contexto del proyecto (atacar a un sitio web) no he podido hacer otros ataques o usar otras herramientas específicas debido a que me he tenido que limitar a ataques que se hacen a sitios/servidores web. 

Otra cosa que se podría hacer, que de hecho la explico ya en la planificación económica, es “profesionalizar” la infraestructura creada, poniendo equipos reales e instalando ahí cada uno de los sistemas operativos propuestos. 

No solo eso, si no que la misma infraestructura de red se podría expandir aún más y añadir más equipos, más servidores (más vulnerabilidades).









