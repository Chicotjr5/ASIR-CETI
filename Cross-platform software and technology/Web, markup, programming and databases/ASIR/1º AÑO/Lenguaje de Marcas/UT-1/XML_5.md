## Comprobar si este XML está bien-formado y en caso de no serlo corregirlo y obtener el XML bien-formado

```xml
<?xml version="1.0" encoding="UTF-8"?> 
<raiz> 
  <elemento1>Valor 1</elemento1> 
  <elemento2 id=8>Valor 2</elemento2> 
  <elemento3>Valor3<elemento3> 
</raiz> 
<raiz> 
  <elemento1>Valor 11</elemento1> 
  <xmlelemento2 id=”3”>Valor 22</xmlelemento> 
  <elemento3>Valor 33</elemento4> 
  <elemento 4 id=”34”/> 
  <elemento5 valor=”prueba”>
</raiz> 
```

**Corregir**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<raiz>
    <Raiz1>
          <elemento1>Valor 1</elemento1>
          <elemento2 id="8">Valor 2</elemento2><!--No tenía comillas-->
          <elemento3>Valor3</elemento3><!--Esta mal cerrado-->
    </Raiz1>
    <Raiz2>
          <elemento1>Valor 11</elemento1>
          <xmlelemento2 id="3">Valor 22</xmlelemento2><!--Sin comillas--><!--Nombre mal puesto-->
          <elemento3>Valor 33</elemento3><!--nombre mal puesto-->
          <elemento4 id="34"/><!--Sin comillas-->
          <elemento5 valor="prueba"/><!--Sin comillas--><!--Estaba mal cerrado-->
    </Raiz2>
</raiz>
```
