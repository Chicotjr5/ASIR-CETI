## Contexto

En esta práctica, vamos a proceder con la creación de un espacio web con el CMS Joomla 5.0.2, para hacer un prototipo de sitio/espacio web. 

### ¿Qué es Joomla? 

Sistema de gestión de contenido (CMS) de código abierto que permite crear y publicar sitios web de manera eficiente, nacido en 2005.

**Características**

- Multilingüe 
- Presenta un código bien estructurado
- Ofrece sitios web/páginas que funcionan y se ven bien en cualquier dispositivo
- Tiene una interfaz "amigable"
- Opciones avanzadas de administración de usuarios.
- Es gratuito y de código abierto
- Por lo que cada usuario, puede aportar a Joomla, creando sus propios módulos o extensiones o mejorando cualquier aspecto del mismo.

### Instalación Joomla 5.0.2

**Requisitos mínimos**

- PHP 8.1
  - Módulos
    - JSON
    - SimpleXML
    - DOM
    - GD
    - Mysqlnd
    - Pgsql
  - MYSQL 8.0.13
  - Apache 2.4
 
**Versiones instaladas**

- PHP 8.1.2
- MySQL 8.0.35
- Apache 2.4.52

### Alternativas

**Wordpress**
- Es el CMS más utilizado actualmente
- Interfaz más amigable
- Más sencillo de usar

**Wix**
- Perfecto para usuarios con muy poca experiencia
- Poco profesional si nos vamos a un punto de vista crítico

**Drupal**

- CMS robusto
- Para cxrear sitios web complejos

### Sitios de descarga

**Versiones de Joomla**
[Enlace](https://downloads.joomla.org/es/cms)

**Extensiones**
Aunque se pueden instalar desde el Administrador de Joomla, tambien podemos instalarlas desde su propio sitio web. 
[Enlace](https://downloads.joomla.org/es/extensions)

**Idiomas**
Lo mismo que para las extensiones, se pueden instalar desde el Administrador de Joomla 
O desde su sitio web.
[Enlace](https://downloads.joomla.org/es/language-packs)

**Última versión**

Para ver las últimas versiónes publicadas de Joomla
[Enlace](https://downloads.joomla.org/es/lates)

Cabe recalcar, que aunque Joomla sea gratuito, no quiere decir que lo mismo aplique para sus extensiones. 

## Finalidad de la propuesta

Con este sitio web, los clientes podrán acceder a diferente información de todo tipo: 

**Deportes de motor**

- Para que los más interesados en estos deportes disfruten de contenido de calidad sobre sus competiciones favoritas.

**Sobre motor**

- En este espacio, los usuarios encontrarán diversas tiendas de repuesto, concesionarios y talleres de Burgos.

**Foro del motor**

- Donde aquellos usuarios registrados, podrán discutir y exponer su punto de vista/opinión sobre diferentes aspectos del mundo del motor.

**Valoraciones**

- Parecido al Foro del motor, pero aquí los usuarios registrados dejarán sus opiniones sobre el sitio web, permitiéndonos tener feedback por parte de nuestra comunidad. 

**Información general**

- Contiene un pequeño resumen del sitio web, con los datos de contacto del creador y algo de información técnica sobre el sitio web.

Así, este sitio esta pensado para que todos los que lo visiten, estén satisfechos con su visita y, porque no, se animen a participar en el **Foro del motor**.

Además de que dispondremos de diferentes niveles de acceso.

- Usuarios normales
  - No registrados
- Amigos del motor
  - Registrados
- Administradores
  - Podsrán hacer alguna modificación sobre los artículos y menúes
- Super usuarios
  - Pueden realziar cualquier acción
 
---

## Acceso al sitio

Para probar este CMS he creado una demo/prototipo de como sería este sitio web. 

Joomla se encuentra instalado en una máquina virtual Ubuntu Server 22.04.03 y para acceder a ella a través de Windows, haremos una conexión **SSH**. 

<img width="568" height="62" alt="image" src="https://github.com/user-attachments/assets/4f7e4c2f-945b-430d-8eb5-54eee277d665" />

Y nos dirigimos al directorio donde se encuentra instalado nuestro Joomla

<img width="737" height="52" alt="image" src="https://github.com/user-attachments/assets/6149bb8f-420a-4aa3-b2a7-007f161e2d22" />

Desde aquí podríamos subir diferentes recursos multimedia o modificar el código de algunos archivos para poder personalizar de mejor manera nuestro sitio web. 
Pero vamos a dejar la consola y nos vamos a conectar a través del navegador web.

Joomla tiene 2 partes:

**Front-end**
- Lo que los usuarios ven al entrar al sitio

**Back-end**
- Donde se configura el sitio

Obviamente, a nosotros nos interesa ingresar al backend, para ello, pondremos la siguiente url en el navegador:

**http://192.168.56.9/joomla/administrator**

<img width="783" height="389" alt="image" src="https://github.com/user-attachments/assets/93791a78-a069-4ed3-b8c9-9b52d928307d" />

Una vez accedemos, vemos lo siguiente: 

<img width="764" height="369" alt="image" src="https://github.com/user-attachments/assets/252111d8-d6d7-4833-8a04-055e1d9e756b" />

Aquí es donde vamos a crear todas las páginas, a personalizar el aspecto de nuestro sitio, a crear los usuarios y demás cosas

Lo primero que vamos a ver, con las plantillas de nuestro sitio. 

Este determina el aspecto que tendrá el **front-end**.  

En este caso, contamos con la plantilla por defecto, se intentó instalar otra plantilla, pero salían errores muy peligrosos, así que decidí no invertir más tiempo en ella y pasar a la acción con la plantilla por defecto, que no está nada mal. 

<img width="768" height="274" alt="image" src="https://github.com/user-attachments/assets/9c423c7c-2a2e-40a4-9e6e-a9c6a3531a59" />

---

## Personalización del sitio 

Si en la plantilla, damos a **Detalles y archivos de plantilla Cassiopeia** nos llevará al siguiente apartado: 

Aquí se encuentran todos los archivos de Joomla y es lo mismo que hacer cambios desde la consola, solo que aquí disponemos de una interfaz más cómoda y mejor

<img width="788" height="340" alt="image" src="https://github.com/user-attachments/assets/0e704d92-7dfd-4162-b252-94c06474bc97" />

Por ejemplo, si queremos cambiar los colores de nuestro sitio, vamos al archivo css correspondiente y lo hacemos a mano.
 
Lo único malo de esto, es ese botón de **Borrar el archivo**, que hay que tener cuidado de no confundirnos y darle clic en vez de seleccionar el botón de **Cerrar el archivo**.

<img width="631" height="442" alt="image" src="https://github.com/user-attachments/assets/73f9582c-bb0a-4e4a-8db9-0e73fba420d3" />

Pero esa no es la única forma de personalizar nuestro sitio. 
Estas plantillas tienen estilos, los cuales podemos personalizar.
De hecho, habrás visto que tenía 2 plantillas iguales, no?
Bueno, una es la principal del sitio, la cual usaremos para la parte pública del sitio. La otra, la usaremos para aquellas páginas a las que solo puedan acceder usuarios registrados al sistema, para poder tener una diferenciación visual entre zonas.

<img width="874" height="256" alt="image" src="https://github.com/user-attachments/assets/22f708be-1b80-4be5-8869-170e3f2b67cb" />

A esta plantilla podemos asignarle un nombre y elegir si va a ser la predeterminada para todas las páginas o no.

<img width="826" height="254" alt="image" src="https://github.com/user-attachments/assets/e8bc535c-4658-40a7-b12f-3b1a83c94c89" />

Además, en el apartado **Avanzado**, también podemos elegir un logo para nuestro sitio, o si no tenemos ningún logo (comoes mi caso, porque para poner una imagen hecha por IA, mejor no pongo nada) podemos poner el nombre del sitio. 

<img width="665" height="272" alt="image" src="https://github.com/user-attachments/assets/c546cc9b-79df-4f21-b9ec-f01bcd965552" />

Y no solo eso, si no que tambien podemos elegir las que serán las fuentes de texto de la plantilla, además de poder cambiar la paleta de colores (aunque esto mejor se hace en el archivo css correspondiente que casualmente, es el que puse anteriormente).

<img width="754" height="355" alt="image" src="https://github.com/user-attachments/assets/75bca4df-e8ed-41dd-a9e6-77c0f3e85a8a" />

Y en el último apartado, el de **Asignación de menú**, podemos elegir en que páginas vamos a usar este estilo. 
Como tengo puesto que esta plantilla sea la por defecto, no hace falta marcar ninguna casilla.

<img width="619" height="593" alt="image" src="https://github.com/user-attachments/assets/33049746-b25e-47e8-b1a5-a60aacaeb289" />

Ahora le toca a la otra plantilla, donde tenemos exactamente los mismos apartados y casi la misma configuración, solo cambiando un par de cosillas. 
Aquí solo cambiamos el nombre del estilo. 

<img width="579" height="178" alt="image" src="https://github.com/user-attachments/assets/10cf0bca-0a52-444e-8e95-575e446deffb" />

Pero aquí ya empiezo a hacer más cambios como, por ejemplo, cambiar la fuente del texto y la paleta de colores. 

<img width="664" height="304" alt="image" src="https://github.com/user-attachments/assets/9fb3ac55-2b70-4b1a-b801-733a8301873f" />

Y como esta plantilla va a ser usada para aquellas zonas privadas, la asignamos a las páginas que conforman esa zona privada.

<img width="344" height="334" alt="image" src="https://github.com/user-attachments/assets/b6f1a2b8-2819-4067-8adb-87e531c553f0" />

Pero no solo el **Front-end** tiene una plantilla, si no que el mismo **back-end** posee una. 
Esta se llama **Atum** y la verdad, no la he tocado mucho, tampoco es que sea estrictamente necesario para este caso.  

Si que sería más interesante ver la plantilla de la zona de administración en caso de disponer de más administradores, pero como solo hay uno (yo) no hace falta. 

<img width="789" height="222" alt="image" src="https://github.com/user-attachments/assets/12958236-5eb5-465f-9d11-1714cb8f1708" />

Y al igual que las otras plantillas, también tenemos un estilo, el cual no he tocado, por las razones anteriormente mencionadas.

<img width="811" height="177" alt="image" src="https://github.com/user-attachments/assets/8560bbcc-60db-4fc4-b4f0-8ffbbada9ed0" />

---

## Configuración del sitio

La gran parte de la configuración del sitio se encuentra en **Sistema>Configuración global**. 
Aquí se encuentran todas las opciones de Joomla, con todo tipo de configuraciones distintas. 
Aunque de momento, solo nos importa cambiar el nombre del sitio, ya llegaremos a los permisos.

<img width="795" height="246" alt="image" src="https://github.com/user-attachments/assets/fb057fd1-e9e8-4522-ae18-28e203efc4bb" />

---

## Crear contenido

### Artículos

Ahora pasaremos a la creación del contenido en nuestro sitio web. 
Para poder crear el contenido, vamos a **Artículos>Nuevo**. 
Además, desde **Artículos** podemos ver todos los artículos que se han creado en nuestro sitio web.

<img width="796" height="373" alt="image" src="https://github.com/user-attachments/assets/85c7a691-9e40-4bb9-93ca-f7a35d965eb6" />

Cuando creamos un artículo, nos saldrá la siguiente pantalla, desde la cual, crearemos/configuraremos el artículo. 

<img width="773" height="352" alt="image" src="https://github.com/user-attachments/assets/ec6dfc94-7437-4115-92a0-cf4714f3133c" />

Estamos en el apartado **Contenido** el cual es uno de los más importantes, debido a que aquí editaremos todo el contenido del artículo, añadiendo información, borrando etc. 
Además de asignarle un nombre y un alias (que sin estos, no podemos crear el artículo). 
Otras cosas que podemos hacer son: 
Seleccionar la categoría a la que va a pertenecer (más adelante explico que es)

<img width="382" height="407" alt="image" src="https://github.com/user-attachments/assets/4ed313a8-abed-468e-b5a7-9f578cea51ea" />

Que niveles de acceso van a poder acceder a este artículo (si hacemos que el acceso sea MiniJoomla, solo podrán acceder los usuarios que estén dentro de AdminiJoomlas y MiniJoomla, el resto no debería de poder acceder) 

<img width="514" height="270" alt="image" src="https://github.com/user-attachments/assets/cf914f2d-de41-4f04-8959-444f4f6fff26" />

Pasamos de apartado, al de imágenes y enlaces. 
En este apartado, podemos poner la imagen que servirá de introducción para el artículo y otra imagen, la cual se verá a lo largo de todo el artículo, además de permitirnos poner enlaces a otros sitios .

<img width="749" height="335" alt="image" src="https://github.com/user-attachments/assets/4e01f63a-f0f8-4dc2-9850-fdc21a4e39d9" />

Siguiente apartado, **Opciones**

Aquí podemos hacer que se muestre o no diferente información en nuestro artículo, como el título, el texto de introducción (el cual viene con la imagen de introducción previamente explicada) y demás cosas.

<img width="739" height="323" alt="image" src="https://github.com/user-attachments/assets/7e8e6d70-1af7-4090-9549-06544cab1e12" />

Pasamos al apartado **El autor**. 
Este sirve para añadir información sobre el autor del artículo.

<img width="759" height="190" alt="image" src="https://github.com/user-attachments/assets/028464e1-6178-4e62-b650-880497053e85" />

Y, por último, uno de los apartados más importantes, el de los permisos. 
Aquí podemos editar 3 permisos: 

- Borrar el elemento
- Editar elemento
- Editar estado

Según los permisos asignados, los usuarios del sitio podrán realizar una acción u otra, aunque no se suelen editar estos permisos, debido a que se otorgan/heredan de la manera correcta solos.

<img width="665" height="301" alt="image" src="https://github.com/user-attachments/assets/09e0136f-9c8c-4908-9a04-4887477fbda3" />

### Categorías

Las categorías son una parte crucial en la organización de los artículos. 
Como expuse anteriormente, cada artículo tiene asignado (o suele tener asignada) una categoría. 

Estas, proporcionan una estructura jerárquica para organizar los artículos. Puedes crear categorías principales y subcategorías, permitiendo un control preciso sobre qué artículos se muestran en qué secciones del sitio. Además de facilitar la navegación por el sitio web.

Para poder configurarlas, vamos a **Artículos**.

<img width="785" height="377" alt="image" src="https://github.com/user-attachments/assets/588515bb-be41-4010-9abe-765c0e2a9b74" />

Lo bueno de una categoría, además de todo lo que he dicho, es que al configurarla no tiene tantos apartados. 

Al crear una nueva categoría, lo primero y más importante es ponerle un nombre, que indique bien su función. 
Como ahora estoy creando un ejemplo, vamos a llamarla **Prueba**.

<img width="836" height="89" alt="image" src="https://github.com/user-attachments/assets/1ef94c2f-4d63-4f53-857e-40997f3f6600" />

Y ahora sí, vamos a ver los diferentes apartados de configuraciones que tiene la categoría:

El apartado **categoría** nos permite darle una descripción a la categoría, al cual se mostrará en el **Front-end**.

<img width="831" height="373" alt="image" src="https://github.com/user-attachments/assets/0524dc9e-bfc4-438b-84a3-57faf8595e13" />

También nos permite especificar si se trata de una categoría principal o una subcategoría. 
Si hacemos que no tenga una categoría principal, se convertirá en una categoría principal 

<img width="224" height="278" alt="image" src="https://github.com/user-attachments/assets/ad452c06-c032-4cd3-9740-1eda33cae5a8" />

Otra cosa que podemos hacer (y que también se puede hacer en los artículos) es el publicar, despublicar, archivar o mover a la papelera la categoría. 
Obviamente, si despublicamos la categoría, todos los artículos ligados a la misma, se despublicaran. 

<img width="497" height="230" alt="image" src="https://github.com/user-attachments/assets/e9b07aed-1669-438d-97f7-c53683101efa" />

Y al igual que en los artículos, podemos modificar el nivel de acceso 

<img width="455" height="232" alt="image" src="https://github.com/user-attachments/assets/cfa31194-a868-422f-adbd-c94b4d0bc221" />

El siguiente apartado es **Opciones**, donde tenemos muy poca cosa, debido a que lo más destacable es poner una imagen y elegir el tipo de presentación.

<img width="598" height="375" alt="image" src="https://github.com/user-attachments/assets/747a4a48-636e-4f55-a385-03cd932570d6" />

Pasamos al apartado **Publicación**, en el cual, podemos poner la fecha de creación de la categoría, quien la creo, cuando la modificaron, quien la modifico, cuantas veces han visto la categoría etc. Además de permitirnos poner metadatos

<img width="799" height="299" alt="image" src="https://github.com/user-attachments/assets/68757636-4119-47d9-9934-0f02f090a072" />

Y, por último, los permisos, donde esta vez, tenemos más permisos para asignar: 

- Crear
  - Crear un elemento
- Borrar elemento
- Editar elemento
- Editar estado
- Editar propios
  - Editar elementos creados pormmi y no los de los demás
 
<img width="805" height="359" alt="image" src="https://github.com/user-attachments/assets/7f9884f0-1f31-4082-8527-bf6258250310" />

### Menús y elementos de menú 

Pasamos a los menús. 
Estos nos permiten organizar los diferentes contenidos de nuestro sitio web.

<img width="836" height="188" alt="image" src="https://github.com/user-attachments/assets/c6a91eeb-5678-4a17-ae9c-692ff273f9a3" />

Contenido como los artículos u otros “objetos”.

<img width="823" height="274" alt="image" src="https://github.com/user-attachments/assets/844a8ab2-ec1f-4e72-aa68-a6750e0d8d47" />

Primero, vamos a ver como se crea un menú.

Vamos a **Menús>Gestionar>Nuevo** y se nos abrirá una pantalla, en la cual, tan solo ponemos el título del menú y configuramos los permisos del mismo 

<img width="768" height="205" alt="image" src="https://github.com/user-attachments/assets/680dda8f-9c1a-4f4d-ba0d-65bb8f91cd4b" />

Ahora, pasamos con los elementos de menú. 

Los elementos de menú son la estructura central de un sitio web Joomla.  

Cada elemento del menú es un enlace a una página web.  

El tipo de elemento del menú determina el tipo de página que se mostrará cuando el usuario seleccione esta opción de menú. 
Para crear uno, vamos a **Menús>Todos los elementos de menú>Nuevo**.

<img width="720" height="333" alt="image" src="https://github.com/user-attachments/assets/7c301426-c2f9-4195-a9c2-eaabbc8b1e4d" />

Se nos abrirá una pantalla (al igual que las anteriores veces) y empezaremos a configurar los diferentes apartados. 
Lo primero de todo, el Título del elemento de menú. 

<img width="898" height="54" alt="image" src="https://github.com/user-attachments/assets/f831804e-9f1e-4b06-9511-e8ec47230f13" />

Y pasamos a los apartados.

El primer apartado es **Detalles**. 
Aquí podemos elegir los diferentes tipos de elementos de menú y la categoría sobre la que se aplicarán, además de permitirnos elegir el menú , el estado del elemento etc. 

<img width="813" height="295" alt="image" src="https://github.com/user-attachments/assets/8e3c8028-726e-4bb3-9599-3a92826bed56" />

El resto de apartados son las mismas que hemos visto anteriormente con los artículos y categorías. 
Y estos son los tipos de elementos de menú que podemos crear.

<img width="289" height="520" alt="image" src="https://github.com/user-attachments/assets/be2bdc4d-b79b-4b79-92e4-d42101100236" />

---

### Front-end

Esta sería casi toda la configuración que se puede hacer en el administrador del sitio, pero, tambien podemos hacerla en el **frontend**. 
Si le damos a este botón, accederemos al **frontend** (tambien se puede acceder poniendo 192.168.56.9/joomla). 

<img width="230" height="66" alt="image" src="https://github.com/user-attachments/assets/70fb3cf7-c84c-468d-a433-8003c9b3f9da" />

Y accedemos al menú principal. 

<img width="619" height="319" alt="image" src="https://github.com/user-attachments/assets/6bfcfde3-5d1a-473d-989b-cfe8c3f6b924" />

Para poder editar el contenido desde aquí, tenemos que darle a ese icono que aparece a la derecha de algunos elementos. (Y tambien cabe recalcar, que debemos de ser administradores o tener los permisos necesarios para ello) 

<img width="75" height="71" alt="image" src="https://github.com/user-attachments/assets/6fcbabcc-a4b8-4cbb-85a7-325ad8c431f0" />

Al darle al icono, se abrirá un apartado, en el cual podremos editar el módulo/elemento que hayamos elegido. 

<img width="316" height="253" alt="image" src="https://github.com/user-attachments/assets/91478f74-8163-4163-b357-52fccadf68d3" />

Por ejemplo, en este módulo, podemos elegir la imagen que se verá en el fondo: 

<img width="725" height="274" alt="image" src="https://github.com/user-attachments/assets/2354b052-640d-4a94-ae85-f6427ab1b58f" />

Y el texto que se verá en el mismo:

<img width="669" height="182" alt="image" src="https://github.com/user-attachments/assets/f0cb848c-6697-49ca-b76b-c0d0b8ba0ac8" />

Estos módulos se encuentran por todo nuestro sitio debido a que casi cualquier elemento que creamos, tiene asignado un módulo. 
Por ejemplo, en esta captura vemos varios módulos.
El módulo que esta sobre la barra en la que pone **Esta aquí: Inicio** es un módulo que muestra la ruta de navegación. 
Mientras que los de la derecha, muestran un menú en una parte **pública** del sitio.

<img width="760" height="368" alt="image" src="https://github.com/user-attachments/assets/ec30c848-83e0-46d1-9341-8d5074aafaca" />

---

## Visualización del contenido creado

Ya sabemos como crear cada cosa, así que ahora, vamos a ver todos los contenidos que tiene esta demo.
Empezaremos con la sección de **Deportes**.

<img width="777" height="44" alt="image" src="https://github.com/user-attachments/assets/b43025f5-976a-498a-ae5e-0298eb59ed98" />

Esta sección contiene 3 artículos, de los cuales, uno esta despublicado. 
Los 3 son sobre diferentes deportes relacionados con el mundo del motor. 
Podemos ver que por cada artículo, tenemos unos detalles, que nos dicen.

- Quien lo ha creado
- Su categoría
- Cuando se publico
- El nº de visitas que tiene el artículo

<img width="814" height="314" alt="image" src="https://github.com/user-attachments/assets/128d12ca-cba5-40f1-8314-4a79df6b030c" />

Estos artículos, los podemos editar desde aquí o desde el administrador. 
Y desde el administrador, podemos ver todos los artículos que conforman esta “sección”.

<img width="375" height="235" alt="image" src="https://github.com/user-attachments/assets/6ca1af8a-9b13-456f-a384-7ca9cf4388d0" />

Cada uno de estos artículos contiene una introducción y una explicación sobre el deporte del cual se redacta el artículo. 
Por ejemplo, el artículo de la **F1** se vería de la siguiente forma:

<img width="835" height="395" alt="image" src="https://github.com/user-attachments/assets/e2298231-7099-48e8-ae4c-0865d04d3da0" />

Aunque el contenido del sitio web lo veremos más a fondo en el vídeo. 

<img width="709" height="456" alt="image" src="https://github.com/user-attachments/assets/6904f95d-b48c-4a86-b0ab-9e79263f5c5c" />

Pasamos a la siguiente sección: **Sobre el motor**. 
Aquí es donde encontraremos información sobre diferentes tiendas de respuesto, concesionarios y talleres.

<img width="290" height="260" alt="image" src="https://github.com/user-attachments/assets/ab570a4b-fe93-4d44-9958-944ae854bae6" />

En este artículo se recogen algunas de las tiendas de repuestos online más famosas. 
Teniendo una imagen de su logo (que contiene un enlace que nos lleva a la tienda online.) 
Y una breve descripción de la empresa. 

<img width="785" height="332" alt="image" src="https://github.com/user-attachments/assets/35a5af86-cfcd-42f3-afea-c7aca8e36104" />

El formato de imagen, descripción de la empresa se repite en el resto de artículos

La siguiente sección es **Información general** donde los usuarios podrán ver una presentación sobre el sitio web, al igual que unos datos de contacto y otro tipo de información. 

<img width="256" height="73" alt="image" src="https://github.com/user-attachments/assets/9dc1fd97-9f5c-4397-bd37-d9eb425320cd" />

↓

<img width="734" height="356" alt="image" src="https://github.com/user-attachments/assets/3e5ffba5-89a1-497d-84f0-2791b5009221" />

La siguiente sección es la de **valoraciones**

<img width="143" height="47" alt="image" src="https://github.com/user-attachments/assets/2e78250f-4640-4bf2-a422-4b7877e043bc" />


Esta sección tiene su cosa, debido a que los usuarios normales, que entren al sitio, podrán ver las valoraciones que dejen otros usuarios sobre el sitio web, pero no podrán hacer una valoración, eso se reserva para usuarios registrados. 

Esta página contiene una serie de artículos mostrados en formato lista/tabla, así, es más cómodo para los lectores ver cada valoración, además de que podemos ordenar las valoraciones, según distintos parámetros. 

<img width="724" height="215" alt="image" src="https://github.com/user-attachments/assets/890477b9-cf5c-4e28-be7d-1893cc6b0da6" />

Para poder crear una valoración, deberíamos de registrarnos en el sitio web, así que vamos a iniciar sesión con una cuenta: 

<img width="389" height="180" alt="image" src="https://github.com/user-attachments/assets/3f3e3935-c448-4b20-9c20-67b20d3e5caf" />

Al iniciar sesión con una cuenta, se desbloqueara el siguiente menú:

<img width="522" height="281" alt="image" src="https://github.com/user-attachments/assets/c251bf13-3328-425f-ac0f-e6e9be2da2d8" />

Si vamos a **Hacer valoración**, cambiaremos de zona, debido a que habremos entrado a la **Zona privada del sitio web**. 
Teniendo un cambio de aspecto.

<img width="710" height="309" alt="image" src="https://github.com/user-attachments/assets/5fb5e5d4-656d-4a59-b74a-bc12e5f483e8" />

El botón **Hacer valoración** (y el resto de botones de ese menú) son elementos de menú, los cuales nos permiten crear un artículo, dentro de la categoría a la que estén ligadas.

Y pasamos a la última sección, la más esperada, el famoso **Foro del motor** 
Aquí los usuarios registrados, podrán escribir diferentes artículos/opiniones sobre diferentes temas. 

Así, damos una sensación de viveza al sitio web, haciéndoles ver a los usuarios que el sitio esta vivo y que todos los días deben visitarlo, porque pueden perderse algo. 
Para entrar a esta sección, como hemos dicho anteriormente, debemos de entrar con un usuario registrado. 
Así es como se vería esta sección.

<img width="836" height="376" alt="image" src="https://github.com/user-attachments/assets/2e1746e8-4d0b-43de-8615-c4f3a57b877e" />

De hecho, en el **menú contenido** antes teníamos 3 opciones y ahora solo 2. 
Esto se debe a que ahora hemos entrado con un **Amigo del motor**, un usuario que puede entrar a la zona privada y crear artículos aquí. 

Pero **MiniJoomla era un administrador**, el cual puede crear artículos en cualquier parte del sitio web, al igual que puede editarlos. 
Ahora, pasaremos a hablar de los permisos.

---

## Permisos

Ahora, pasamos a lo que, para mí, ha sido la parte más dificil de este trabajo, los permisos. 
No hay cosa más enrevesada que esto y eso que diferenciar entre artículo / elemento de menú y categoría ya se me complico. 
Bueno, dejando de un lado las malas formas, pasamos a hablar de lo realmente importante. 
¿Cómo se configuran los permisos? 

Anteriormente ya hemos hablado de los permisos, de cómo los artículos y categorías tenían permisos diferentes. 

Pero hay aún más permisos, aunque los más prioritarios, son los específicos para un elemento. 

Para poder configurar los permisos, vamos a **Sistema>Configuración global>Permisos**

<img width="818" height="395" alt="image" src="https://github.com/user-attachments/assets/ec6d8c6c-762f-4abe-b54c-0e05b12ebcaa" />

Y ahora me dispondré a enseñarle los diferentes permisos que están configurados.

**Public**
- Solo puede acceder al sitio, y ver la zona pública, no puede hacer nada más.

<img width="555" height="334" alt="image" src="https://github.com/user-attachments/assets/e44fcd64-69f9-4abf-86dc-026b49fa78ae" />

**Amigos del motor**
- Pueden acceder al sitio, tanto a la zona pública como la privada
- Además de que pueden crear contenido y editar el propio.

<img width="666" height="517" alt="image" src="https://github.com/user-attachments/assets/5cead20e-8d42-4338-a811-4e0831a8a8b0" />

- Pueden editar sus artículos, pero no el de los demás

- <img width="480" height="353" alt="image" src="https://github.com/user-attachments/assets/0ce6c279-ed7c-4f0b-8f09-7b761c59facd" />

**Administradores**

- Tienen casi los mismos permisos que los Amigos del motor solo que estos pueden acceder al panel de administración/back-end (pero podrán hacer menos cosas que un super usuario)
- Estos su pueden crear cualquier tipo de contenido y editar tanto los propios como los de otros usuarios.

<img width="578" height="410" alt="image" src="https://github.com/user-attachments/assets/99c35df8-7e71-4333-b86b-9de9f7f8a88e" />

↓

<img width="538" height="402" alt="image" src="https://github.com/user-attachments/assets/aafbe360-3640-4252-b622-e0d0f840d9cf" />

Y por último, tenemos a los Super_Usuarios, los cuales pueden realizar cualquier acción, debido a que tienen permisos de todo.

<img width="706" height="503" alt="image" src="https://github.com/user-attachments/assets/f6cf5d71-c964-495e-8836-28e205fdfc48" />

---

## Usuarios y grupos

Y llegamos a la última parte, la cual consiste en los usuarios de nuestro sitio web. 
Los usuarios se administran desde **Usuarios>Gestionar**  
Aquí podemos ver todos los usuarios creados, además, de poder editarlos.

<img width="732" height="300" alt="image" src="https://github.com/user-attachments/assets/ec4f2597-c567-4de5-b540-e442e06ba47b" />

Vamos a ver cual es el proceso de crear un nuevo usuario. 
En la pantalla anterior, le damos al botón **Nuevo** y se nos abre una pantalla para configurar el nuevo usuario. 
Los 2 apartados más importantes son: **Detalles de la cuenta y Grupos de usuario asignados**.

Vamos con el primero: 
Lo más importante, Nombre del usuario y nombre de la cuenta, además de la contraseña, la cual podemos configurar el que tenga x requisitos mínimos o no. 

Y una cosa obligatoria a poner, es la cuenta de correo, que por cierto, podemos configurar de que dominios aceptados cuentas de correo, aunque no lo he configurado, debido a que esto es una prueba y da igual que siquiera el correo exista. 

<img width="723" height="408" alt="image" src="https://github.com/user-attachments/assets/38db1655-22a7-47f3-8049-22922cbc3b87" />

Y pasamos al siguiente, que es **Grupos de usuario asignados** 
Vemos que esta seleccionado el grupo fieles. 

Esto, se hace automáticamente, yo no he seleccionado ese grupo a mano, si no, que en la **Configuración Global>Usuarios** se le puede poner el grupo al que se unirá un usuario por defecto. 

Como los usuarios que se registran son **Fieles** (pueden hacer valoraciones) pues tiene sentido que los usuarios que se creen pertenezcan a ese grupo por defecto.

<img width="250" height="338" alt="image" src="https://github.com/user-attachments/assets/a788d0be-5e62-4f11-ab81-d989997591ec" />

Una vez creado, iniciamos sesión con el y vamos a **Valoraciones**, viendo que podemos crear un nuevo artículo, o editar uno que ya hemos creado. 

<img width="668" height="217" alt="image" src="https://github.com/user-attachments/assets/230411d5-70eb-4853-940a-b7aa1b3a023e" />

Además, de que como este usuario no es un **Amigo del motor**, pues no podrá ver esta sección.

<img width="765" height="59" alt="image" src="https://github.com/user-attachments/assets/2f206eec-dcfd-4552-858c-9f745e6faba1" />

Y ahora nos tocan los grupos 
Estos se gestionan desde **Usuarios>Grupos**, donde, podemos administrar los ya existentes, o crear uno nuevo.

<img width="762" height="332" alt="image" src="https://github.com/user-attachments/assets/37aaa94a-3b0f-4145-923a-e6a24f42c0bf" />

Es muy fácil, tan solo le damos al botón de nuevo que se encuentran en la pantalla que esta justo encima de este texto y nos aparecerá la siguiente pantalla.

<img width="741" height="219" alt="image" src="https://github.com/user-attachments/assets/8a74a745-c1c0-4434-82ab-ffa8c031f3b5" />

Más fácil imposible, tan solo ponemos el nombre del grupo y seleccionamos y grupo principal. 
Este nuevo grupo, heredará los permisos de su grupo principal.


























































































































