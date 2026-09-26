## Dados los siguientes XML has de unirlos en un único XML bajo el elemento <empresa> y diferenciar con espacios de nombres los elementos “dirección” afectando la solución a los elementos <direccion> y <servidor> 

### Archivo 1

```xml
<?xml version=”1.0” encoding=”iso-8859-1”?>  
<direccion>  
<calle>Avd. de Murcia</calle>  
<ciudad>Alicante</ciudad>  
<provincia>Alicante</provincia>  
</direccion>
```

### Archivo 2

```xml
<?xml version=”1.0” encoding=”iso-8859-1”?>  
<servidor>  
<url>http://localhost</url>  
<direccion>127.0.0.1</direccion>  
</servidor>
```

---

**Fusión**

```xml
<?xml version="1.0" encoding="iso-8859-1"?>
<Empresa>
    <dir:direccion xmlns:dir="http://www.dirección.com">
          <dir:calle>Avd. de Murcia</dir:calle> 
          <dir:ciudad>Alicante</dir:ciudad> 
          <dir:provincia>Alicante</dir:provincia> 
    </dir:direccion>
    <sr:servidor xmlns:sr="direciones ip">
          <sr:url>http://localhost</sr:url> 
          <sr:direccion>127.0.0.1</sr:direccion> 
    </sr:servidor>
</Empresa>
```
