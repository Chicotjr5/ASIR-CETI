## Índice

- [Introducción](#introducción)
- [MOBILEdit - LG](#mobiledit---lg)
  - [Configurar extracción](#configurar-extracción)
  - [Realizar extracción](#realizar-extracción)
  - [Analizar información](#analizar-información)
- [MOBILEdit – Xiaomi Redmi Note 9](#mobiledit--xiaomi-redmi-note-9)
- [Magnet AXIOM Process](#magnet-axiom-process)
  - [Crear nuevo caso y preparar extracción](#crear-nuevo-caso-y-preparar-extracción)
  - [Ver datos extraídos](#ver-datos-extraídos)


## Introducción

En esta práctica se van a ver varias herramientas con las que extraer información de un móvil desde un punto de vista más forense, más específicamente una imagen extraída de un móvil LG (además de un )

Estas herramientas son:

- MOBILedit
- Magnet AXIOM Process
- Autopsy

---

### MOBILEdit - LG

#### Configurar extracción


Para poder usar MOBILEdit deberemos de pasarle la imagen del móvil que nos ha proporcionado nuestra profesora. 
En la siguiente pantalla, seleccionamos **Importar datos**.

![[2.1 1.png]]

Esto nos abrirá una ventana donde elegir la imagen con los datos a analizar:

![[2.2 3.png]]

Se carga la imagen y ya desde aquí podemos empezar a realizar acciones.

![[2.4 1.png]]

---

#### Realizar extracción

Si le damos al botón **Examinar el teléfono** se abrirá una ventana donde podremos ver los datos que contiene la imagen. 
Se visualizan 3 directorios:

- Interno
- Externo
- Aplicaciones

Dentro de Interno se encuentran los directorios más importantes de la estructura de archivos de Android, como lo es **/data/data**

![[2.6.png]]

Con esta herramienta también se puede hacer una extracción de la información en forma de informe. 
La herramienta nos pregunta por el tipo/cantidad de información a extraer, en mi caso especifico, el **Contenido Completo**.

![[2.7.png]]

A la hora de generar el informe podemos especificar información como:

- Nº de la prueba 
- Idioma
- La zona horaria 
- Datos del investigador
- Detalles del móvil etc.

![[2.8.png]]

Por último, podemos elegir el formato de salida del informe, teniendo como opciones:

- HTML
- PDF
- Excel
- Cellebrite

![[2.10.png]]

Ya con todo listo, se inicia la exportación:

![[2.12.png]]

Se crea un directorio con toda la información extraída y los reportes que se han generado:

![[2.14.png]]

---

#### Analizar información

En los reportes, hay una parte inicial con información sobre el caso, como:
- El producto
- Nº de evidencias
- Fechas de las extracciones
- Información del investigador
- Versión del SO etc.

![[2.15.png]]

Además, también se puede ver información sobre los archivos / cuentas que contiene la memoria:

![[2.16.png]]

↓

![[2.17.png]]

↓

![[2.18.png]]

También hay un apartado con la información de los directorios y ficheros internos de la memoria:

![[2.19.png]]

Si volvemos al directorio del caso, se habrá creado dentro del mismo una carpeta llamada **phone_files>phone** donde se encuentran todos los archivos de la memoria interna del móvil:

![[2.20.png]]

Si entro de nuevo a **raw0/data/data** y accedo a uno de los directorios que hay, se pueden ver y extraer los archivos que contiene:

![[2.21.png]]


En este caso, **/data/data/com.android.providers.media** corresponde a **la ubicación donde la app del sistema "Media Storage" o "Media Provider" guarda sus datos internos**. 
Esta app se encarga de indexar, catalogar y proporcionar acceso a los archivos multimedia del dispositivo, como fotos, vídeos y música.

---

### MOBILEdit – Xiaomi Redmi Note 9

Al conectar mi móvil, el software lo detectaba, pero en el móvil me salió el típico mensaje para autorizar a la máquina a conectarse al dispositivo.

![[4.1.png]]

En cuanto lo acepto, el software reconoce el dispositivo:

![[4.2 2.png]]

Pero para poder usarlo, hay que instalar una aplicación llamada **Forensic Connector:**

![[4.3 1.png]]

A partir de aquí la extracción es similar a la del móvil LG, donde elijo la extracción completa

![[4.4.png]]


Pero al realizar la extracción, se desconectaba el móvil ya que este tiene el puerto un poco roto y no se termina de conectar bien. 
Hice 2 extracciones y esta es la que más información sacó.

![[4.6.png]]

Aunque solo saco un 3% del contenido, dentro del mismo se podía ver información como mis contactos, con su nombre y nº de teléfono, el historial de llamadas y el historial de mensajes.

![[4.7.png]]

En la siguiente imagen se muestra la cantidad de páginas que contiene el informe:

![[4.8.png]]

Y al igual que en la anterior extracción, **MOBILEdit** realizó una copia de los directorios de mi móvil, pero no saco todos porque ocmo ya dije, solo saco un 3% de la información.

![[4.9.png]]

---

### Magnet AXIOM Process

#### Crear nuevo caso y preparar extracción

Este es otro software que nos permite adquirir evidencias de diferente software y crear casos, donde se puede ver la información de las imágenes extraídas. 
Creo un nuevo caso:

![[3.1 1.png]]

Me pide información del caso y la ubicación de las evidencias, junto con la ubicación donde guardaré la extracción de estas.

![[3.2 2.png]]

El siguiente paso es elegir la fuente de la evidencia y el SO:

![[3.3 2.png]]

↓

![[3.4 2.png]]

Proseguimos y le decimos que queremos cargar una evidencia en vez de adquirirla, además de especificar que es una imagen, cargándola.

![[3.5 2.png]]

+

![[3.6 1.png]]

↓

![[3.7 2.png]]

Antes de extraer toda la información de la imagen, se nos pide que elijamos los artefactos para poder analizar la imagen y sacar la información de esta. 

En mi caso selecciono todos los artefactos, aunque la mayoría de ellos no son necesarios.

![[3.9.png]]

Tras esperar unos 40 minutitos de nada, acaba la extracción:

![[3.11.png]]

---

### Ver datos extraídos

En el directorio de la extracción tenemos toda la información extraída y todos los archivos que se han generado durante el proceso:

![[3.17.png]]

El archivo más importante es el **case.mfdb** que es donde se encuentra el resumen de la extracción:

![[3.12.png]]

Si vamos a artefactos se puede ver toda la información que se ha extraído de la imagen:

![[3.13.png]]

↓

![[3.14.png]]

Se ha extraído información de todo tipo:

![[3.14.1.png]]

Dentro de cada apartado, se nos muestra cada una de las evidencias (archivos, imágenes, audios, cuentas etc) encontradas:

![[3.14 1.png]]

Y en la parte derecha, una pequeña vista previa de esa evidencia, con detalles de esta:

![[3.14.2.png]]

Otra de las cosas que se pueden hacer con esta herramienta, es una **línea de tiempo**. 
Aunque en este caso, solo salen archivos del 1 de enero de 1970 al 5 de enero de 1970.

![[3.16.png]]

Y a diferencia de **MOBILEdit** esta herramienta no realiza la extracción de los archivos, asi que no podemos verlos

A parte del informe creado, hay otros archivos que se han creado y que también nos proporcionan información, como el **Case_information.xml** el cual contiene metadatos del caso:

- Nombre del caso 
- Investigador (nombre del examinador) 
- Fecha y hora de creación del caso 
- Número de caso 
- Notas o descripción del caso 
- Nombre del dispositivo o imagen analizada 
- Rutas de evidencia añadidas (por ejemplo, una imagen .E01, un dispositivo lógico, etc.) 
- Versión de AXIOM utilizada

No contiene ningún tipo de evidencia, pero es útil para realizar la documentación


![[3.18.png]]
