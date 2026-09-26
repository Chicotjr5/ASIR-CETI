## Corregir los posibles errores que tengan los siguientes archivos: 

### Archivo 1

```xml
1. <?xml version="1.0" encoding="UTF-8"?> 
2. <pelicula> 
3.   <titulo>Con faldas y a lo loco</titulo> 
4.   <director>Billy Wilder</director> 
5. </pelicula> 
6. <pelicula> 
7.   <director>Leo McCarey</director> 
8.   <titulo>Sopa de ganso</titulo> 
9. </pelicula> 
10. <autor />alumno</autor> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<peliculas><!--faltaba elemento raiz-->
    <pelicula>
      <titulo>Con faldas y a lo loco</titulo>
      <director>Billy Wilder</director>
    </pelicula>
    <pelicula>
      <director>Leo McCarey</director>
      <titulo>Sopa de ganso</titulo>
    </pelicula>
    <autor>alumno<autor/> <!--estaba mal cerrado-->
 </peliculas>
```

---

### Archivo 2

```xml
1. <?xml version="1.0" encoding="UTF-8"?> 
2. <deportistas> 
3.   <deportista> 
4.     <deporte Atletismo /> 
5.     <nombre>Jesse Owens</nombre> 
6.   <deportista> 
7.     <deporte Natación /> 
8.     <nombre>Mark Spitz</nombre> 
9.   </deportista> 
10. </deportistas>
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
 <deportistas>
      <deportista>
          <deporte id="Atletismo"/>
          <nombre>Jesse Owens</nombre>
          </deportista><!--faltaba cerrar-->
      <deportista>
          <deporte id="Natación"/>
          <nombre>Mark Spitz</nombre>
    </deportista>
 </deportistas>
```

---

### Archivo 3

```xml
1. <?xml version="1.0" encoding="UTF-8"?> 
2. <texto> 
3.   <Titulo>XML explicado a los niños</titulo> 
4.   <párrafo>El <abreviatura>XML</abreviatura>define cómo crear  
5.   lenguajes de marcas.</párrafo> 
6.   <párrafo>Las marcas se añaden a un documento de texto  
7.   para añadir información.</párrafo> 
8.   <http://>www.example.org</http://> 
9. </texto> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
 <texto>
    <Titulo>XML explicado a los niños</Titulo><!--mal escrito-->
      <párrafo>El
        <abreviatura>XML</abreviatura>
        define cómo crear  lenguajes de marcas.
        </párrafo>
      <párrafo>
      Las marcas se añaden a un documento de texto para añadir información.
      </párrafo>
    <http:>www.example.org</http:><!--malescrito(//)-->
 </texto>
```

---

### Archivo 4

```xml
1. <?xml version="1.0" encoding="UTF-8"?> 
2. <geografia mundial> 
3.   <pais> 
4.     <pais>España</pais> 
5.     <continente>Europa</continente> 
6.     <capital>Madrid</capital> 
7.   </pais> 
8. </geografia mundial> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
 <geografiamundial><!--mal escrito-->
    <pais>
        <Nombre>España</Nombre><!--puede tener el mismo nombre-->
        <continente>Europa</continente>
        <capital>Madrid</capital>
    </pais>
 </geografiamundial>
```

---

### Archivo 5

```xml
1. <?xml version="1.0" encoding="UTF-8"?> 
2. <programas> 
3.   <programa nombre="Firefox" licencia="GPL" licencia="MPL" /> 
4.   <programa nombre="OpenOffice.org" licencia=LGPL /> 
5.   <programa nombre="Inkscape" licencia="GPL" /> 
6. </programas> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
 <programas>
    <programa>
      <nombre>
      Firefox
      </nombre>
      <licencias>
      GPL y MPL
      </licencias>
    </programa>
    <programa nombre="OpenOffice.org" licencia="LGPL"/>
     <programa nombre="Inkscape" licencia="GPL" />
</programas><!--apunte personal: recuerda que al cerrar una etiqueta es el / al principio y al cerrar una etiqueta vacia es / al final-->
<!--no repetir atributos-->
```

---

### Archivo 6

```xml
1. <?xml version="1.0" encoding="UTF-8"?> 
2. <mundiales-de-futbol> 
3.   <mundial> 
4.     
<pais="España" /> 
5.     
<1982 /> 
6.   </mundial> 
7. </mundiales-de-futbol> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
 <mundiales-de-futbol>
 <mundial>
    <pais>España</pais><!--corregir-->
    <año>1982</año><!--empieza por numero-->
 </mundial>
 </mundiales-de-futbol>
```

---

### Archivo 7

```xml
1. <?xml version="1.0" encoding="UTF-8"?> 
2. <mediosDeTransporte> 
3.   <bicicleta velocidad="v<100km/h" /> 
4.   <patinete velocidad maxima="50 km/h" 
5. </mediosDeTransporte> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
 <mediosDeTransporte>
    <bicicleta velocidad="v&lt;100km/h"/><!--el menor estaba mal, habia que poner una entidad predefinida-->
    <patinete velocidadmaxima="50km/h"/><!--sin cerrar--><!--el nombre no puede tener espacios-->
 </mediosDeTransporte>
```

---
