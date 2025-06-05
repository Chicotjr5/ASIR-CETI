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

![2 1](https://github.com/user-attachments/assets/c3190edf-9d8f-4027-98f8-d86e068bd2b2)


Esto nos abrirá una ventana donde elegir la imagen con los datos a analizar:

![2 2](https://github.com/user-attachments/assets/502e9c75-d330-4c32-897e-b7aa98e2d64a)


Se carga la imagen y ya desde aquí podemos empezar a realizar acciones.

![2 4](https://github.com/user-attachments/assets/66b91cb7-d5f3-4b2d-a0b7-39685a146028)


---

#### Realizar extracción

Si le damos al botón **Examinar el teléfono** se abrirá una ventana donde podremos ver los datos que contiene la imagen. 
Se visualizan 3 directorios:

- Interno
- Externo
- Aplicaciones

Dentro de Interno se encuentran los directorios más importantes de la estructura de archivos de Android, como lo es **/data/data**

![2 6](https://github.com/user-attachments/assets/33aec368-7db0-4d20-bc4f-7e1b3a37b3b4)


Con esta herramienta también se puede hacer una extracción de la información en forma de informe. 
La herramienta nos pregunta por el tipo/cantidad de información a extraer, en mi caso especifico, el **Contenido Completo**.

![2 7](https://github.com/user-attachments/assets/18ab555b-1a07-441b-b98e-3794299f5946)


A la hora de generar el informe podemos especificar información como:

- Nº de la prueba 
- Idioma
- La zona horaria 
- Datos del investigador
- Detalles del móvil etc.

![2 8](https://github.com/user-attachments/assets/126c6ea3-99ea-4890-b151-a2dbfa023d81)


Por último, podemos elegir el formato de salida del informe, teniendo como opciones:

- HTML
- PDF
- Excel
- Cellebrite

![2 10](https://github.com/user-attachments/assets/4d6970d4-2fee-4cfc-8f5c-3c3cc865f285)


Ya con todo listo, se inicia la exportación:

![2 12](https://github.com/user-attachments/assets/9b1d4f85-539d-4599-af75-32f9a267d8f4)


Se crea un directorio con toda la información extraída y los reportes que se han generado:

![2 14](https://github.com/user-attachments/assets/99b568f3-20e4-4b8e-8b0d-460f67a1d8e3)


---

#### Analizar información

En los reportes, hay una parte inicial con información sobre el caso, como:
- El producto
- Nº de evidencias
- Fechas de las extracciones
- Información del investigador
- Versión del SO etc.

![2 15](https://github.com/user-attachments/assets/3e40ea59-b598-4135-a733-fe4c22e52f29)


Además, también se puede ver información sobre los archivos / cuentas que contiene la memoria:

![2 16](https://github.com/user-attachments/assets/bf2967cf-175e-4c0a-bf7a-f8aaa6fca589)


↓

![2 17](https://github.com/user-attachments/assets/325de314-1f73-4b38-b428-a29915f8f047)


↓

![2 18](https://github.com/user-attachments/assets/4f74aec9-67f8-4f5f-b1bb-995741fade73)


También hay un apartado con la información de los directorios y ficheros internos de la memoria:

![2 19](https://github.com/user-attachments/assets/f462cee2-4e54-484e-a226-21a5c3f99b5d)


Si volvemos al directorio del caso, se habrá creado dentro del mismo una carpeta llamada **phone_files>phone** donde se encuentran todos los archivos de la memoria interna del móvil:

![2 20](https://github.com/user-attachments/assets/3766435b-d006-447e-9774-4d52767eff12)


Si entro de nuevo a **raw0/data/data** y accedo a uno de los directorios que hay, se pueden ver y extraer los archivos que contiene:

![2 21](https://github.com/user-attachments/assets/c994325d-8aa8-46fe-bc67-05bb256f3320)



En este caso, **/data/data/com.android.providers.media** corresponde a **la ubicación donde la app del sistema "Media Storage" o "Media Provider" guarda sus datos internos**. 
Esta app se encarga de indexar, catalogar y proporcionar acceso a los archivos multimedia del dispositivo, como fotos, vídeos y música.

---

### MOBILEdit – Xiaomi Redmi Note 9

Al conectar mi móvil, el software lo detectaba, pero en el móvil me salió el típico mensaje para autorizar a la máquina a conectarse al dispositivo.

![4 1](https://github.com/user-attachments/assets/633850e0-efa5-4450-89cb-19c937b64125)


En cuanto lo acepto, el software reconoce el dispositivo:

![4 2](https://github.com/user-attachments/assets/0e053059-67ff-4a3c-bef2-8777c2b553d2)


Pero para poder usarlo, hay que instalar una aplicación llamada **Forensic Connector:**

![4 3](https://github.com/user-attachments/assets/48a54578-dc88-453c-9eb7-f22adaf8a2e9)


A partir de aquí la extracción es similar a la del móvil LG, donde elijo la extracción completa

![4 4](https://github.com/user-attachments/assets/42c280e7-106f-44f0-ab82-76522eb82410)



Pero al realizar la extracción, se desconectaba el móvil ya que este tiene el puerto un poco roto y no se termina de conectar bien. 
Hice 2 extracciones y esta es la que más información sacó.

![4 6](https://github.com/user-attachments/assets/39088bb0-3e8a-43fa-b5cf-57fd0f6374b3)


Aunque solo saco un 3% del contenido, dentro del mismo se podía ver información como mis contactos, con su nombre y nº de teléfono, el historial de llamadas y el historial de mensajes.

![4 7](https://github.com/user-attachments/assets/b0d66468-0084-4e66-9c8a-53326a7c29a7)


En la siguiente imagen se muestra la cantidad de páginas que contiene el informe:

![4 8](https://github.com/user-attachments/assets/85c23d5a-c3b7-48d5-ac09-54479d9f8cc9)


Y al igual que en la anterior extracción, **MOBILEdit** realizó una copia de los directorios de mi móvil, pero no saco todos porque ocmo ya dije, solo saco un 3% de la información.

![4 9](https://github.com/user-attachments/assets/39acec00-ca05-474c-b4e5-c3a040a627b5)


---

### Magnet AXIOM Process

#### Crear nuevo caso y preparar extracción

Este es otro software que nos permite adquirir evidencias de diferente software y crear casos, donde se puede ver la información de las imágenes extraídas. 
Creo un nuevo caso:

![3 1](https://github.com/user-attachments/assets/4467d7f7-be9e-4e5b-a6bd-1ec003117d4e)


Me pide información del caso y la ubicación de las evidencias, junto con la ubicación donde guardaré la extracción de estas.

![3 2](https://github.com/user-attachments/assets/630b19c5-ce15-4c02-b892-a1be53986739)


El siguiente paso es elegir la fuente de la evidencia y el SO:

![3 3](https://github.com/user-attachments/assets/1a38f16d-b4f2-4cb1-95ad-c2074d203c81)


↓

![3 4](https://github.com/user-attachments/assets/a2ff36c8-d9e0-41f8-84ee-8d862a1b8a5e)


Proseguimos y le decimos que queremos cargar una evidencia en vez de adquirirla, además de especificar que es una imagen, cargándola.

![3 5](https://github.com/user-attachments/assets/545b457c-aa2f-41bd-acd4-0cf17ab516fa)


+

![3 6](https://github.com/user-attachments/assets/14e83106-6d89-41c9-8f37-2d2f95469e7e)


↓

![3 7](https://github.com/user-attachments/assets/4becf462-869c-414f-b26d-b34746658d28)


Antes de extraer toda la información de la imagen, se nos pide que elijamos los artefactos para poder analizar la imagen y sacar la información de esta. 

En mi caso selecciono todos los artefactos, aunque la mayoría de ellos no son necesarios.

![3 9](https://github.com/user-attachments/assets/01f964ad-5dc1-49ae-afe5-39e1d6ecdaeb)


Tras esperar unos 40 minutitos de nada, acaba la extracción:

![3 11](https://github.com/user-attachments/assets/9e6ea5fe-4f84-4b87-a16e-601d1b013a5e)


---

### Ver datos extraídos

En el directorio de la extracción tenemos toda la información extraída y todos los archivos que se han generado durante el proceso:

![3 17](https://github.com/user-attachments/assets/50c7f8d2-4603-4db8-b739-469f39d5872c)


El archivo más importante es el **case.mfdb** que es donde se encuentra el resumen de la extracción:

![3 12](https://github.com/user-attachments/assets/a8223f00-66d2-45a8-a846-2105f249fbfd)


Si vamos a artefactos se puede ver toda la información que se ha extraído de la imagen:

![3 13](https://github.com/user-attachments/assets/fd088555-1189-48e1-ad5e-74bd1c0ec038)


Se ha extraído información de todo tipo:

![3 14 1](https://github.com/user-attachments/assets/3517af2f-eed2-4c27-b97f-cfb7b7c19491)


Dentro de cada apartado, se nos muestra cada una de las evidencias (archivos, imágenes, audios, cuentas etc) encontradas:

![3 14](https://github.com/user-attachments/assets/3f4f8ffb-d6d0-41b5-b6c3-72c31199d1f6)


Y en la parte derecha, una pequeña vista previa de esa evidencia, con detalles de esta:

![3 14 2](https://github.com/user-attachments/assets/f9010379-7aa8-4774-9319-9f32a58bf795)


Otra de las cosas que se pueden hacer con esta herramienta, es una **línea de tiempo**. 
Aunque en este caso, solo salen archivos del 1 de enero de 1970 al 5 de enero de 1970.

![3 16](https://github.com/user-attachments/assets/14249811-7118-40d6-b523-3a1fc7e53f7e)


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


![3 18](https://github.com/user-attachments/assets/341897b1-49d4-4c25-9917-c40e3ec751cf)

