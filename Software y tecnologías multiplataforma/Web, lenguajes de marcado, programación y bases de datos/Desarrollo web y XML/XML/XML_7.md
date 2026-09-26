### Crea un documento XML “libros.xml” que contenga información de 5 libros. 
### El primer libro tiene título, un autor, isbn y un precio. El segundo libro tiene título, dos autores, isbn y un precio. El tercer libro tiene título, un autor, no tiene isbn y un precio. El cuarto libro tiene título, un autor, isbn y dos precios. El quinto libro tiene título, un autor, un isbn y no tiene precio. 


```xml
<?xml version="1.0" encoding="UTF-8"?>
<Libros>
    <Libro Número="1" ISBN="56 324 6578 3221">
        <Título>El pato protector</Título>
        <Autor>Enrique González</Autor>
        <Precio>23.50€</Precio>
    </Libro>
    <Libro Número="2" ISBN="87 566 2344 6542">
        <Título>Dos ratones</Título>
           <Autor>Felipe García</Autor>
           <Autor>Antonio Cuccitini</Autor>
        <Precio>56.90€</Precio>
    </Libro>
    <Libro Número="3">
       <Título>La pelota no se mancha</Título> 
       <Autor>Josep Roncero</Autor>
       <Precio>34.98€</Precio>
    </Libro>
    <Libro Número="4" ISBN="87 456 2136 0987">
       <Título>Lenguas del mundo</Título> 
       <Autor>J.K.Kennedy</Autor>
       <Precios>
          <Precio versiónlite="34.90€"/>
          <Precio versiónnormal="50€"/>
       </Precios>
    </Libro>
    <Libro Número="5" ISBN="14 329 8349 3344">
       <Título>Alberto Morales</Título> 
       <Autor>Josep Roncero</Autor>
       <Precio>34.98€</Precio>
    </Libro>
</Libros>
```
