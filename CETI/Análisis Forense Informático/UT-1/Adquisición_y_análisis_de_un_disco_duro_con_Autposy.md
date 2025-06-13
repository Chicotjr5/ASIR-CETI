<details>
  <summary><h2>Índice</h2></summary>

- [Introducción](#introducción)
- [Obtener imagen de disco](#obtener-imagen-de-disco)
- [Crear caso en Autopsy](#crear-caso-en-autopsy)
- [Analizar datos obtenidos](#analizar-datos-obtenidos)
  - [Lista de ficheros agrupados por su extensión](#lista-de-ficheros-agrupados-por-su-extensión)
  - [Documentos generados desde MSOffice](#documentos-generados-desde-msoffice)
  - [Ficheros eliminados](#ficheros-eliminados)
  - [Agrupación de ficheros por tamaño](#agrupacion-de-ficheros-por-tamaño)
  - [Ficheros sin coincidencia de extensión con tipo](#ficheros-sin-coincidencia-de-extensión-con-tipo)
  - [Documentos que se han abierto recientemente (Data Artifacts)](#documentos-que-se-han-abierto-recientemente-data-artifacts)
  - [Páginas web marcadas como favoritas](#páginas-web-marcadas-como-favoritas)
  - [Archivos sospechosos](#archivos-sospechosos)
  - [OS Accounts](#os-accounts)
- [Línea de tiempo](#línea-de-tiempo)
  - [Acotación a unos meses (por ejemplo medio año) donde más actividad se vea](#acotación-a-unos-meses-por-ejemplo-medio-ano-donde-más-actividad-se-vea)
  - [Acotación a días (por ejemplo 3 días)](#acotacion-a-días-por-ejemplo-3-días)
  - [Acotación a horas de un día y posteriormente a minutos de una de las horas elegidas](#acotación-a-horas-de-un-día-y-posteriormente-a-minutos-de-una-de-las-horas-elegidas)
- [Generar un informe](#generar-un-informe)

</details>

## Introducción

En esta práctica se va a usar la herramienta **Autopsy** para obtener información de una imagen de disco. 
Para poder obtener esa imagen, se va a usar la herramienta **Guymager** la cual esta instalada en la máquina **Caine**.

---

### Obtener imagen de disco

Como dije hay que usar la máquina Caine, así que conecto el disco del cual quiero obtener la imagen a esta máquina (si fuera un equipo real, se conectaría el disco físico al equipo físico que tenga Caine / Guymager). Además del disco a copiar tengo un disco donde guardaré la imagen obtenida

![1 2 9](https://github.com/user-attachments/assets/3719a89f-b8eb-4a60-9036-879857278f3d)


Arranco la máquina y lo primero que tengo que hacer es poner los discos en modo lectura y escritura con la herramienta **unblock**

![1 6](https://github.com/user-attachments/assets/2b756a35-ed70-4f4e-b0c6-912035c29856)


Inicio la herramienta **Guymager** donde se pueden observar todos los discos y particiones que hay, además de todo tipo de información sobre estos.
Para poder adquirir la imagen es tan sencillo como hacer clic derecho sobre el disco deseado:

![1 7](https://github.com/user-attachments/assets/788eaaa0-f8b0-45fe-b568-f9bad81f43bd)


Pero antes de obtener la imagen, hay que preparar disco donde se va a guardar la imagen. Primero se formatea a **NTFS** (como el sistema donde se va a analizar la imagen es Windows, uso este sistema de archivos).

![1 8 1](https://github.com/user-attachments/assets/e794eca9-8554-4e34-aa0c-344ade5ce58c)


Y lo monto en un directorio:

![1 8 2](https://github.com/user-attachments/assets/acd33198-c924-4c91-ac76-7fa09bb3d038)


A la hora de adquirir la imagen, se me pide la siguiente información:

- Nº de caso 
- Nº de evidencia 
- Examinador 
- Descripción 
- Notas 
- Directorio donde se va a guardar 
- Nombre de la imagen 
- Tamaño de las imágenes 
	- Aquí se puede elegir el tamaño de las imágenes para que se cree solo 1 (si le ponemos el tamaño del disco) o varias (si el tamaño es menor). Usualmente y por defecto el tamaño de las imágenes será menor al del disco. 
- Calcular hashes

![1 8](https://github.com/user-attachments/assets/f721ac3d-50b4-41fc-8edd-4291c5f08f58)


Inicia la creación de la imagen:

![1 9](https://github.com/user-attachments/assets/ccda0f9d-b34e-46f9-8bac-fa2aba9203c3)


Y se guarda en el directorio especificado (osease, en el disco).

![1 10](https://github.com/user-attachments/assets/79e0f0f8-ddc0-4336-b30f-6eff267017d2)


---

### Crear caso en Autopsy

Ahora hay que conectar el disco con la imagen a la máquina Windows 10.

![2 1](https://github.com/user-attachments/assets/7e490891-ac7e-48d3-8865-61fde15b7e4e)


Inicio Windows 10 y abro **Autopsy**:

![2 2](https://github.com/user-attachments/assets/ceb77426-cf15-4e3d-8833-96be228f4266)


A la hora de crear un nuevo caso, lo primero que se pide es el nombre del caso y el directorio donde se guardará toda la información.

![2 3](https://github.com/user-attachments/assets/b9d9b946-5e8c-4c32-bd1a-d37711e41b64)


Además de estop, también se pide información opcional como puede ser el nº del caso, nombre del examinador, nº de teléfono (falso) y mi correo.

![2 4](https://github.com/user-attachments/assets/5dfd55f2-11fe-4baf-85a3-7714ae456b03)


El siguiente paso consiste en configurar la fuente de información. 
Será un disco:

![2 6](https://github.com/user-attachments/assets/deca8a6d-4e02-43c6-9566-aea7ee03f36e)



El siguiente paso es seleccionar el disco, el resto de cosas no nos interesan

![2 7](https://github.com/user-attachments/assets/a2877970-de8b-4d1d-999e-f5930f1896f8)


Para terminar, hay que establecer los módulos que se van a ejecutar. 
Cada uno obtiene un tipo de información, además de que cuantos más tengamos, más tarda el análisis en realizarse.

![2 8](https://github.com/user-attachments/assets/7efb1526-1a14-4e53-8179-2cf31bed3c34)


↓

![2 9](https://github.com/user-attachments/assets/de508bb5-0bb4-448e-b65e-7716408b63a3)


Algunos no los ejecuto porque no son necesarios y solo consumirían tiempo.

(En mi caso, no pude realizar el análisis de la imagen, ay que mi Autopsy funcionaba muy mal (este programa consume muchísimos recursos) así que tuve que montar el disco y analizar directamente el disco, pero el proceso para analizar una imagen es el visto anteriormente).

Una vez terminado el análisis, se obtiene toda la información del disco

![3 3](https://github.com/user-attachments/assets/d54db86d-969e-4529-a6b0-fa0beac82e9d)


---

### Analizar datos obtenidos

#### Lista de ficheros agrupados por su extensión

Para poder ver los ficheros agrupados por la extensión, vamos a **File Views>File Types>By Extension** donde ya se clasifican automáticamente en 7 categorias:

- Imágenes 
- Videos 
- Audio 
- Archivos 
- Bases de datos 
- Documentos 
- Ejecutables

![3 4](https://github.com/user-attachments/assets/fe052f26-5fe7-4c74-8cf5-166c2d15098d)


Dentro de estas categorías se encuentran diferentes archivos (obviamente, agrupados por su extensión) de los cuales se obtiene mucha información:

![3 7 1](https://github.com/user-attachments/assets/eedc25a2-464a-4c8e-a932-afbf82555968)

---

#### Documentos generados desde MSOffice

Dentro de **File Views>File Types>By Extension>Documents** se encuentra la categoría Office la cual hace referencia a esos archivos que han sido creados con MSOffice o cualquier programa del estilo (openoffice, libreoffice). 
Estos son los archivos que cuentan con las extensiones:
**Doc,docx,dot,xls,xlsx,ppt,pptx**

![3 5](https://github.com/user-attachments/assets/59cef36b-4c36-4e5b-bcf5-90e567609b81)


↓

![3 6](https://github.com/user-attachments/assets/42eb2a5a-53ba-4dc4-b8a0-48fc98f80da1)


---

#### Ficheros eliminados

Dentro de **File Views** se encuentra la categoría **Deleted** que son aquellos ficheros que se han eliminado.
Estos son archivos que se eliminaron tanto en la papelera de reciclaje, como los que se eliminaron directamente

![3 7](https://github.com/user-attachments/assets/e3fb3785-c884-4390-8513-f260ce8f8d8b)

↓

![3 8](https://github.com/user-attachments/assets/76725bfe-74fa-457e-b1a0-9b1e7afd4b68)


De estos archivos no hay tanta información:

---

#### Agrupación de ficheros por tamaño

Dentro de **File Views** se encuentra la categoría **File Size** donde tenemos 3 grupos de archivos.

- 50 - 200MB
- 200MB - 1GB
- +1 GB

![3 9](https://github.com/user-attachments/assets/6b2280a6-8b07-463d-8dd1-7128d4abf42d)


---

#### Ficheros sin coincidencia de extensión con tipo

Estos son ficheros cuya extensión no coincide con el tiupo de archivo que debería de ser (o que autopsy no sabe como clasificarlos). 
Se encuentran en **Analysis Results>Extension Mismatch Detected**

![3 10](https://github.com/user-attachments/assets/8f958df4-3aa0-4525-8efc-50729a54f5f3)


---

#### Documentos que se han abierto recientemente (Data Artifacts)

Estos archivos se encuentran en **Data Artifacts>Recent Documents** y son archivos a los que que se ha accedido hace poco/recientemente.

![3 15 archivos recientes](https://github.com/user-attachments/assets/9f9ec328-cd0c-4402-8b64-bbaaaac3b196)


---

#### Páginas web marcadas como favoritas

Esta información se obtiene de **Data Artifacts>Web Bookmarks**

![3 16](https://github.com/user-attachments/assets/f6ff3bca-ef5b-4e14-bf80-c6633e9f4c74)


---

#### Archivos sospechosos

Estos archivos se encuentran en **Score>Suspicious Items.**

![3 11](https://github.com/user-attachments/assets/89093a2c-4bac-451a-9b95-9b6e4f8ab5d5)



---

#### OS Accounts
Además de ver ficheros y su información, también se pueden ver las cuentas que estaban creadas en el sistema:

![3 12](https://github.com/user-attachments/assets/dc3bbfd4-8ca4-4f90-92f6-951e5eedf50a)


En versiones anteriores se podían marcar varios elementos como importantes y se podía generar un informe a posteriori, pero en versiones recientes ya no se pueden marcar algunos elementos (si se puede generar el informe).

---

### Línea de tiempo

Para poder ver/crear la línea de tiempo vamos a la parte superior y elegimos la opción **Timeline**

![4 1](https://github.com/user-attachments/assets/a7b47cac-9136-488c-9905-051e1b154652)


Se abre un nuevo apartado donde vemos una línea de tiempo:

![4 2](https://github.com/user-attachments/assets/4bf61282-f4e5-4f30-964f-4e646808cd40)



Esta línea de tiempo no esta muy acotada porque va desde 1980 hasta 2024 asi que ahora la tendré que acotar a diferentes fechas.

---

#### Acotación a unos meses (por ejemplo medio año) donde más actividad se vea

Para poder cambiar las fechas disponemos de varios elementos: 
Tenemos una barra para acotar por años y actividad:

Ser puede acotar de 2 formas, una de ellas es con la misma línea de tiempo, donde aparecen las fechas.

![4 3 1](https://github.com/user-attachments/assets/182ab57f-aa18-4d72-861c-70759ee87c07)


O también podemos con 2 calendarios, eligiendo la fecha de inicio y la fecha final:

![4 4 1](https://github.com/user-attachments/assets/7fde3f64-9ea7-49d4-98fa-1520fd9fa1e5)


Con esto acoto la línea de tiempo para que sea desde el 4/9/2016 – 4/2/2017:


![4 4](https://github.com/user-attachments/assets/e3272efd-ca37-4d66-ac85-9fb1dfe803d3)


---

#### Acotación a días (por ejemplo 3 días)

Con el mismo método, acoto a 3 días: 
Ahora se ven las horas del día

![4 6](https://github.com/user-attachments/assets/e0dfc1cc-96c7-435e-82ee-17bcb4832b7a)


---

#### Acotación a horas de un día y posteriormente a minutos de una de las horas elegidas.

Ahora la acotación será de horas:

![4 7](https://github.com/user-attachments/assets/30ef85c1-3fe8-467f-af96-adf503ecf501)


Y por último, los minutos de una hora:

![4 8](https://github.com/user-attachments/assets/600ccf68-bb13-4339-9669-61c986b46143)


---

### Generar un informe

Para poder generar un informe vamos a **Generate Report.:

![6 1](https://github.com/user-attachments/assets/b02887f9-48ce-4544-a25a-77ac7eb5f12c)


Se abrirá una ventana donde se puede elegir el tipo de informe a generar. 
En mi caso, quiero que este en formato Excel:

![6 2](https://github.com/user-attachments/assets/ee1dc43a-cabe-42ca-962a-4b2310ebe742)



Y para terminar, la fuente de información a incluir:

![6 3](https://github.com/user-attachments/assets/ae6824c0-f8f7-4288-a76f-487c867976ef)


Con todo esto, se ha generado el informe, el cual subiré junto con este documento.

![6 6](https://github.com/user-attachments/assets/d7a576e2-c1fe-4975-a7de-e87a94984068)



