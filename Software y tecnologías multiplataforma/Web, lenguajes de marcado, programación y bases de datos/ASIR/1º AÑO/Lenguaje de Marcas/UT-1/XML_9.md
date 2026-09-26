## Comprobar si están bien formados y corregirlos en caso contrario 

### Fichero 1

```xml
<?xml version="1.0" encoding="UTF-8"> 
< frutas > 
< fruta > 
< nombre >cereza< nombre \> 
< fruta \> 
< fruta > 
< nombre >naranja< nombre \> 
< fruta \> 
< frutas \>
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<frutas>
       <fruta>
          <nombre>cereza</nombre><!--Mal cerrada-->
       </fruta><!--Mal cerrado-->
       <fruta>
          <nombre>naranja</nombre><!--Mal cerrado-->
       </fruta><!--Mal cerrado-->
</frutas><!--Mal cerrado--> <!--Todas las etiquetas tenían un espacio-->
```

---

### Fichero 2

```xml
!-- Documento XML con errores de sintaxis. --!> 
<? xml versión="1.0" encodin = "UTF-8" > 
<terrestres> 
<vehiculo>bicicleta<vehiculo> 
<vehiculo>coche<vehiculo> 
<vehiculo>tractor<vehiculo> 
<acuaticos> 
<vehiculo>canoa<vehiculo> 
<aereos> 
<vehiculo>avioneta<vehiculo> 
<vehiculo>helicóptero<vehiculo>
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Vehículos><!--No tenía una etiqueta raíz-->
    <terrestres>
         <vehiculo>bicicleta</vehiculo>
         <vehiculo>coche</vehiculo>
         <vehiculo>tractor</vehiculo>
    </terrestres><!--Etiquetas sin cerrar-->
    <acuaticos>
          <vehiculo>canoa</vehiculo>
    </acuaticos><!--Etiquetas sin cerrar-->
    <aereos>
         <vehiculo>avioneta</vehiculo>
         <vehiculo>helicóptero</vehiculo>
    </aereos><!--Etiquetas sin cerrar-->
</Vehículos>
<!--Tenía un comentario encima de la primera línea que estaba mal esrito y mal cerrado, además la primera línea estaba mal escrita-->
```

---

### Fichero 3

```xml
<?xml version="1.0" encoding="UTF-8"?> 
<figuras>  
<figura plana> 
<nombre>cuadrado</nombre> 
</lados 4> 
</figura> 
<figura plana> 
<nombre>triángulo</nombre> 
</lados 3> 
</figura> 
<figura tridimensional> 
<nombre>cubo</nombre> 
</aristas 12> 
</caras 6> 
</figura> 
</figuras> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<tarjeta_visita>
     <apellido>DEL VALLE</apellido><nombre>Cristobal</nombre><!--No estaba bien formulada la etiqueta nombre-->
     <sociedad/>
     <profesión>Doctor</profesión>
     <dirección>
         <número>19</número>
         <calle>C/ Florida</calle>
         <código_postal>18080</código_postal>
         <población>MADRID</población>
     </dirección>
     <número_teléfono>123456789</número_teléfono><!--Tenían distinto nombre-->
     <número_movil/><!--Tenia una etiqueta sin nombre-->
     <número_fax/>
     <correo_electrónico/>
</tarjeta_visita>
```

---

### Fichero 4

```xml
<?Xml version="1,0" encoding="UTF8"?> 
<triangulo base="7"altura="5"> 
<triangulo base="2"altura="6"> 
<triangulo base="3"altura="3"> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Triángulos><!--No tenía una etiqueta raíz-->
    <triangulo base="7" altura="5"/><!--Atributos mal puestos y etiqueta sin cerrar-->
    <triangulo base="2" altura="6"/><!--Atributos mal puestos y etiqueta sin cerrar-->
    <triangulo base="3" altura="3"/><!--Atributos mal puestos y etiqueta sin cerrar-->
</Triángulos>
<!--La X de XML era mayuscula y en 1.0 tenía una , en vez de un .-->
```

---

### Fichero 5

```xml
<?xml version="1.0" encoding="UTF-8"?> 
<numeros> 
   <1 letra="u" letra="n" letra="o">1</> 
   <2 letra="d" letra="o" letra="s">22</> 
   <6 letra="s" letra="e" letra="i" letra="s">666666</> 
</numeros> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Números>
     <n1 Primeraletra="u" Segundaletra="n" Terceraletra="o">1</n1><!--La etiqueta no puede empezar por número y tiene que estar bien cerrada, además de que no se puede repetir un atributo dentro de una etiqueta-->
     <n2 Primeraletra="d" Segundaletra="o" Terceraletra="s">22</n2><!--La etiqueta no puede empezar por número y tiene que estar bien cerrada, además de que no se puede repetir un atributo dentro de una etiqueta-->
     <n6 Primeraletra="s" Segundaletra="e" Terceraletra="i" Cuartaletra="s">666666</n6><!--La etiqueta no puede empezar por número y tiene que estar bien cerrada, además de que no se puede repetir un atributo dentro de una etiqueta-->
</Números>
```

---
