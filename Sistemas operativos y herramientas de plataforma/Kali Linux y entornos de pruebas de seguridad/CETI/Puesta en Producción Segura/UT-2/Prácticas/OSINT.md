<details>
  <summary><h2>Índice</h2></summary>
  
- [Introducción](#introducción)
- [SHODAN](#shodan)
  - [Descripción detallada](#descripción-detallada)
  - [Finalidad y propósito principal](#finalidad-y-propósito-principal)
  - [Datos que permite obtener y analizar](#datos-que-permite-obtener-y-analizar)
  - [Tipos de usuarios que podrían usarla](#tipos-de-usuarios-que-podrían-usarla)
  - [Disponibilidad](#disponibilidad)
  - [Rival](#rival)
  - [Uso práctico](#uso-práctico)

- [Maltego](#maltego)
  - [Descripción detallada](#descripción-detallada-1)
  - [Finalidad y propósito principal](#finalidad-y-propósito-principal-1)
  - [Datos que permite obtener y analizar](#datos-que-permite-obtener-y-analizar-1)
  - [Tipos de usuarios que suelen utilizarla](#tipos-de-usuarios-que-suelen-utilizarla)
  - [Disponibilidad](#disponibilidad-1)
  - [Rival](#rival-1)
  - [Uso práctico](#uso-práctico-1)

- [Exif-Tool](#exif-tool)
  - [Descripción detallada](#descripción-detallada-2)
  - [Finalidad y propósito principal](#finalidad-y-propósito-principal-2)
  - [Datos que permite obtener y analizar](#datos-que-permite-obtener-y-analizar-2)
  - [Tipos de usuarios que suelen utilizarla](#tipos-de-usuarios-que-suelen-utilizarla-1)
  - [Disponibilidad](#disponibilidad-2)
  - [Rival](#rival-2)
  - [Uso práctico](#uso-práctico-2)

</details>

---

## Introducción

En esta práctica se van a usar 3 herramientas diferentes para realizar búsquedas OSINT.
Se hablará un poco de ellas a nivel teorico y luego se realizará un caso práctico.

---

## SHODAN

### Descripción detallada

Shodan es un motor de búsqueda especializado en dispositivos conectados a internet. 
A diferencia de Google, este no indexa páginas web, sino que escanea puertos y recopila datos técnicos de dispositivos expuestos públicamente.  
Funciona mediante el rastreo constante de direcciones IP y puertos abiertos, analizando respuestas como banners, metadatos y servicios activos. 

### Finalidad y proposito principal

Su objetivo principal es identificar dispositivos vulnerables o mal configurados en internet para mejorar la seguridad cibernética. 
Usos comunes incluyen: 

- Detectar fugas de información en servidores
- Localizar sistemas sin parches de seguridad
- Monitorear infraestructuras críticas (Sistemas industriales SCADA)
- Investigación en ciberseguridad y pentesting

### Datos que permite obtener y analizar 

Shodan recopila y muestra información técnica como: 

- Direcciones IP y puertos abiertos
- Banners de servicios
- Geolocalización dle dispositivo
- Protocolos
- Vulnerabilidades conocidas
- Dispositivos específicos
  - Cámaras IP
  - Bases de datos expuestas
  - Routers
  - Impresoras
- Certificados SSL/TLS y detalles de configuración

### Tipos de ususarios que podrían usarlas

- Profesionales de ciberseguridad
  - Para identificar riesgos en redes propìas o de clientes
- Pentesters/Red Teams
  - Evaluar superficies de ataque
- Investigadores
  - Estudiar tendencias de exposición en IoTo infraestructuras
- Administradores de sistemas
  - Verificar si sus equipos están expuestos
- Atacantes maliciosos
  - Explorar dispositivos vulnerables
 
### Disponibilidad

Shodan opera bajo un modelo **freemium**

- Versión gratuita
  - Permite búsquedas básicas con límites (ej. 50 resultados/mes, filtros restringidos).
  
- Planes de pago
  - Shodan Membership - 59€/mes
    - Acceso completo a filtros, descargas de datos, API
  
  - Empresarial
    - Para equipos o uso corporativo, con soporte personalziado
  
  - Licencias educativas
    - Descuentas para instituciones académicas

### Rival

**Censys**, es una herramienta de se enfoca en el análisis de infraestructura de red, especialmente en certificados digitales, servidores y configuraciones de seguridad.  

Su propósito es ayudar a los investigadores y profesionales de la seguridad a comprender mejor la superficie de ataque de una organización, analizando registros de DNS, certificados SSL/TLS y otras métricas de seguridad. 

**Censys** usa una combinación de escaneos pasivos y análisis de bases de datos de certificados.  

Su motor de búsqueda recopila información de fuentes como el Proyecto ZMap, registros DNS y certificados SSL/TLS para mapear la infraestructura de Internet sin generar tráfico de escaneo en vivo. 

Los datos que recopila son: 

- Información de certificados SSL/TLS (emisor, fechas de expiración, claves públicas).
- Dominios asociados a direcciones IP.
- Registros de DNS y ASN (Sistemas Autónomos).
- Configuraciones de servidores y datos de cifrado.
- Historial de direcciones IP y dominios en infraestructura organizativa.

También cuenta con una versión gratuita con acceso limitado a datos. Sin embargo, muchas de sus funcionalidades avanzadas están disponibles solo en planes de pago dirigidos a empresas y profesionales de seguridad. 

Shodan es la mejor opción para analizar dispositivos conectados a Internet, descubrir puertos abiertos y evaluar la exposición de servicios. 
Censys es más útil para analizar infraestructura de red, certificados digitales y configuraciones de seguridad. 

---

### Uso práctico

Voy al sitio web de [shodan](https://www.shodan.io/)

![image](https://github.com/user-attachments/assets/58ec8ecb-9e0a-45b4-bfaf-3916abfa9349)

Una forma de buscar objetivos es usar su propio buscador pero si pones una IP de la que no hay información, no te mostrara nada 

![image](https://github.com/user-attachments/assets/7d04a7f6-1ee1-48ba-8d24-848cc89448ca)

En cambio sí le pasas una IP de la que si que tenga información, te la mostrará. 

![image](https://github.com/user-attachments/assets/d016544c-4ff2-45ce-b4ea-79e0958311d2)

Esta IP corresponde a una página de login de un sitio web de Indonesia. 
Vemos información general del objetivo: 

![image](https://github.com/user-attachments/assets/05d0bfc7-cb9f-48d9-a4f6-5dc67b2dd3b7)

También vemos las principales vulnerabilidades de cada puerto abierto y servicio:

![image](https://github.com/user-attachments/assets/13ef4416-4e94-45d7-a986-2e2ec9646988)

E información y notas de esas vulnerabilidades.

![image](https://github.com/user-attachments/assets/c4fb7cb5-41f6-4181-a308-fed2c4818496)

También se ve información sobre otros dominios relacionados. 

![image](https://github.com/user-attachments/assets/ae8b7abd-325f-4ce0-882a-c21ec44f68d8)

Si veo la información de este otro dominio veo que tiene abierto el puerto 3306 
(MySQL) junto con sus vulnerabilidades y las tecnologías usadas en la web:

![image](https://github.com/user-attachments/assets/148107c5-81ef-4749-8e83-0a81ba0c7967)

↓

![image](https://github.com/user-attachments/assets/a3f8bc3c-1c4b-404d-a79c-b6d7ecc50da7)

↓

![image](https://github.com/user-attachments/assets/8532b940-7255-4fcf-a955-bab6079b6909)

También parece ser que hay un servidor de correo aunque cuando accedo a esta IP en internet, me sale una página de login.

![image](https://github.com/user-attachments/assets/67da5308-952b-4b22-ac2d-e4cf0f92cb63)

↓

![image](https://github.com/user-attachments/assets/b6a41f84-022d-4cf0-b593-616e0f9c8ce4)

Y su información general: 

![image](https://github.com/user-attachments/assets/e138cd67-5742-44f1-a438-33044f4acc03)

---

## Maltego

### Descripción detallada 

Maltego es una plataforma de inteligencia de código abierto (OSINT) y análisis de relaciones, diseñada para mapear conexiones entre entidades (personas, dominios, IPs, organizaciones, etc.).  

A diferencia de Shodan o Metagoofil, su enfoque principal es la visualización gráfica de redes complejas mediante grafos interactivos.  

Funciona mediante:

- Transforms Módulos que extraen datos de fuentes públicas (WHOIS, redes sociales, APIs, bases de datos).
- Integración con fuentes externas Shodan, VirusTotal, redes como Bitcoin, etc.
- Automatización de investigaciones Rastreo de relaciones ocultas en tiempo real.

Es ampliamente utilizado en investigaciones forenses, ciberseguridad y análisis 
de amenazas

### Finalidad y propósito principal 

Su objetivo principal es descubrir patrones y conexiones ocultas para:

- Identificar infraestructuras de atacantes (ej. dominios maliciosos vinculados a una IP).
- Mapear redes sociales o profesionales de individuos (para ingeniería social).
- Investigar fraudes, filtración de datos o campañas de phishing.

### Datos que permite obtener y analizar

Maltego recopila y correlaciona datos como:

- Entidades básicas
  - Personas: Nombres, correos, perfiles en Linkedin/Twitter
  - Dominios, subdominios y registros DNS
  - Direcciones IP, ASN y servicios asociados
- Metadatos avanzados
  - Documetos públicos vinculados a un dominio
  - Relaciones entre empleados de una empresa y sus activos digitales
  - Vulnerabilidades asociadas a una infraestructura
 
### Tipos de usuarios que suelen utilizarla 

- Equipos de ciberseguridad
  - Analizar amenazas o ataques dirigidos
- Agencias de Ley Enforcemen
  - Investigar crímenes cibernéticos o fraudes
- Pentesters/Red Teams
  - Mapear superficies de ataque de organizaciones.
- Analistas de inteligencia
  - Estudiar redes criminales o terroristas.
- Periodistas de investigación
  - Rastrear conexiones en casos de corrupción.
- Empresas
  - Monitorear fugas de información o reputación en línea.
 
### Disponibilidad

Maltego opera bajo un modelo freemium con licencias comerciales: 

- Maltego CE (Community Edition)
  - Gratuita, pero con límites: Máximo 12 resultados por transform, sin acceso a fuentes premium.
  - Ideal para uso personal o aprendizaje
 
- Versiones de pago (Maltego Pro, Enterprise, XL)
  - Precios desde ~$1,000 USD/año (dependiendo del plan).
  - Acceso a +70 transforms premium (ej. datos de redes sociales, blockchain).
  - Soporte técnico y funciones colaborativas para equipos
 
- Opciones para gobiernos y empresas
  - Licencias personalizadas con integraciones a medida.
 
### Rival 

SpiderFoot es una herramienta que cuenta tanto con una interfaz web como un software enfocándose en la automatización de recopilación de datos OSINT de forma masiva. 

Realiza escaneos masivos sobre IPs, dominios, correos, leaks, vulnerabilidades, etc y es más adecuado para auditorías de seguridad y monitoreo de amenazas. 

Es de código abierto y gratuito y cuenta con una versión comercial avanzada.

---

### Uso práctico

Obtengo la herramienta desde su [sitio web](https://app.maltego.com/download) y la inicio (hay que crearse una cuenta para ello, además de que la versión gratuita tiene un uso limitado.

Al iniciarla creo un nuevo archivo donde mi objetivo será https://www.funkselector.com

![image](https://github.com/user-attachments/assets/43d218e0-54f5-4035-aa97-131af17910ec)

Como dije anteriormente, Maltego funciona con los **transforms** los cuales hacen que Maltego busque cierta información. 
También están las **Machines** donde se ejecutan varios **transforms** simultáneamente. 
En este caso ejecuto la machine **Footprinting L1**.

![image](https://github.com/user-attachments/assets/c07bf506-dcad-42e2-a592-2c04a866825d)

La información que he obtenido de este escáner es la siguiente: 

![image](https://github.com/user-attachments/assets/90fc32e1-dd84-40d0-b528-e68feefcef36)

Es bastante información, aunque en algunos casos la mayoría no sirve de mucho o no tiene la suficiente importancia como para tenerlo en cuenta. 

Pero he podido obtener las direcciones IP de lo que parecen ser los servidore FTP, MAIL y el dominio principal.

![image](https://github.com/user-attachments/assets/6859a74f-5f30-4b30-8bc6-e7e56eb0def2)

Y se puede observar que estas IP apuntan a AMAZON:

![image](https://github.com/user-attachments/assets/eeb1fb47-f19b-4161-b799-7d501d28f072)

En páginas como https://www.whois.com se puede ver más información sobre estas ip: 
https://who.is/whois-ip/ip-address/75.2.70.75 
https://who.is/whois-ip/ip-address/99.83.190.102

![image](https://github.com/user-attachments/assets/252915c4-23cb-4b97-bfb9-835a4c615331)

---

## Exif-Tool

### Descripción detallada

ExifTool es una herramienta de línea de comandos y biblioteca escrita en Perl, desarrollada por Phil Harvey y utilizada para leer, escribir y manipular metadatos en archivos de imágenes, videos, documentos y otros formatos.  

Es ampliamente utilizada en fotografía, análisis forense digital y gestión de archivos multimedia.

ExifTool soporta una gran variedad de formatos de metadatos:

- EXIF
- IPTC
- XMP
- ICC Profile
- MakerNotes

Es una herramienta flexible, capaz de extraer información sobre la cámara utilizada, ubicación GPS, fecha y hora de captura, modificaciones realizadas al archivo, y mucho más. 

### Finalidad y propósito principal

Análisis, edición y manipulación de metadatos en archivos multimedia y documentos.  
Algunas de sus aplicaciones son:

- Análisis forense digital
  - Extraer metadatos de imágenes y documentos para determinar su origen y autenticidad.
- Ciberseguridad y privacidad
  - Identificar información sensible incrustada en archivos, como coordenadas GPS en imágenes.
- Gestión de archivos multimedia
  - Organizar imágenes y videos en base a metadatos
- Edición y corrección de metadatos
  - Modificar fechas, ubicaciones y otros atributos en archivos.
- Verificación de archivos
  - Identificar alteraciones y posibles manipulaciones en imágenes y documentos. 

### Datos que permite obtener y analizar

ExifTool puede extraer y analizar una gran cantidad de metadatos, incluyendo:

- Datos de la imagen/video/documento
  - Resolución, dimensiones, formato, profundidad de color.
  - Perfiles de color y ajustes de compresión.
    
- Información sobre la cámara y configuración de captura
  - Marca y modelo de la cámara.
  - Apertura, velocidad de obturación, ISO, distancia focal.
  - Uso de flash, balance de blancos, modo de disparo.
    
- Datos de ubicación GPS
  - Coordenadas de latitud y longitud.
  - Altitud y dirección de la toma.
 
- Información sobre edición
  - Software utilizado para editar la imagen o video.
  - Fechas y horas de modificación del archivo.

- Metadatos de documentos y PDFs
  - Autor, fecha de creación y modificación.
  - Programas utilizados para su generación.
 
### Tipos de usuarios que suelen utilizarla

ExifTool es utilizada por una variedad de profesionales y entusiastas, incluyendo: 

- Expertos en seguridad y forense digital:
  - Para analizar imágenes en investigaciones criminales y determinar la autenticidad de archivos.
  
- Fotógrafos y editores de imagen:
  - Para organizar, etiquetar y modificar metadatos de sus fotografías.

- Profesionales de TI y administradores de sistemas:
  - Para auditar archivos en redes y servidores.

- Periodistas e investigadores:
  - Para verificar la autenticidad de imágenes y detectar manipulaciones.

- Entusiastas de la privacidad:
  - Para eliminar metadatos sensibles antes de compartir imágenes en línea.
 
### Disponibilidad 

ExifTool es completamente gratuito y de código abierto. 

- Windows:
  - Se puede descargar una versión ejecutable o usar con Perl.
- Linux/macOS:
  - Puede instalarse a través de paquetes de gestión como brew install exiftool o sudo apt install libimage-exiftool-perl.
- Código fuente:
  - Disponible en GitHub y en su página oficial.
 
No tiene versiones de pago ni restricciones en su funcionalidad. 


### Rival

Metagoofil es una herramienta más enfocada en la extracción de metadatos de documentos públicos. 

Extrae información como nombres de usuarios, correos, rutas de archivos y software utilizado. 

Se enfoca en OSINT y reconocimiento en pruebas de pentesting. 

Automatiza la búsqueda en Google para encontrar documentos expuestos. 

Mientras tanto, ExifTool se usa para analizar, editar y eliminar metadatos en archivos multimedia (imágenes, videos, documentos) extrayendo detalles como modelo de cámara, coordenadas GPS, fecha de captura, software de edición. 

Es ampliamente utilizado en forense digital, privacidad y gestión de archivos multimedia. 

Ya diferencia de Metagoofil, no realiza búsquedas en internet, solo trabaja con archivos locales.

---

### Uso práctico

Instalo la herramienta con el comando: 

```bash
apt install libimage-exiftool-perl
```

![image](https://github.com/user-attachments/assets/e24756e3-68bc-4aa9-b23f-81d3a1893f68)

Ya instalado la uso ejecutando el comando:

```bash
exiftool resultados/primera.pdf 
```

![image](https://github.com/user-attachments/assets/5e386e29-1529-4042-9afa-76e03245bdf1)

↓

![image](https://github.com/user-attachments/assets/4139dda5-754c-412a-8219-143a5ae280d5)
























