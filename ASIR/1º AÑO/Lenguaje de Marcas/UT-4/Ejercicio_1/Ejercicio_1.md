## A partir del código HTML y CSS que se muestra, añadir los selectores CSS que faltan para aplicar los estilos deseados. 
## Cada regla CSS incluye un comentario en el que se explica los elementos a los que debe aplicarse:

**Código a decorar**

```html
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/ 
xhtml1/DTD/xhtml1-transitional.dtd"> 
<htmlxmlns="http://www.w3.org/1999/xhtml"><head> 
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" /> 
<title>Ejercicio de selectores</title></head> 
<body> 
<div id="primero"> 
<p> Los métodos (comportamiento) y atributos (estado) están 
estrechamente relacionados por la propiedad de conjunto. Esta propiedad 
destaca que una clase requiere de métodos para poder tratar los atributos 
con los que cuenta. El <a href="#">programador
 </a> debe pensar 
indistintamente en ambos conceptos, sin separar ni darle mayor 
importancia a ninguno de ellos, hacerlo podría producir el <em>hábito 
erróneo</em>,  de crear clases contenedoras de información por un lado y 
clases con métodos que manejen a las primeras por el otro.</p> 
</div> 
<div class="normal"> 
<p>De esta manera se estaría realizando una <span><a href="#">programación 
estructurada
 </a></span>, camuflada en un lenguaje de programación 
orientado a objetos.</p> 
<p>Esto 
difiere 
estructurada
 de 
la 
<emclass="especial">programación 
</em> tradicional, en la que los datos y los procedimientos están 
separados y sin relación, ya que lo único que se busca es el procesamiento de 
unos datos de entrada para obtener otros de salida. La programación 
estructurada anima al programador a pensar sobre todo en términos de 
procedimientos o funciones, y en segundo lugar en las estructuras de datos que 
esos procedimientos manejan. En la programación estructurada sólo se escriben 
funciones que procesan datos. Los programadores que emplean éste nuevo 
paradigma, en cambio, primero definen objetos para luego enviarles mensajes 
solicitándoles que realicen sus métodos por sí mismos..</p> 
</div> 
</body></html>
```

**CSS a aplicar**

```css
/* Todos los elementos de la pagina */ 
{ font: Arial, Helvetica, sans-serif; } 
/* Todos los parrafos de la pagina */ 
{ color: #555; } 
/* Todos los párrafos contenidos en #primero */ 
{ color: #336699; } 
/* Todos los enlaces la pagina */ 
{ color: #CC3300; } 
/* Los elementos "em" contenidos en #primero */ 
{ background: #FFFFCC; padding: .1em; } 
/* Todos los elementos "em" de clase "especial" en toda la pagina */ 
{ background: #FFCC99; border: 1px solid #FF9900; padding: .1em; } 
/* Elementos "span" contenidos en .normal */ 
{ font-weight: bold; } 

```
