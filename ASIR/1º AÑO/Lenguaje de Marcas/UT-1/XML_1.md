## Corregir los posibles errores que tengan los siguientes archivos: 

### Archivo 1

```bash
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

```bash
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

```bash
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

```bash
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

```bash
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

```

**Correción**

```xml

```















































































































