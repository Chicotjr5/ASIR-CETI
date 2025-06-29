## Partiendo del siguiente código XML, haz las modificaciones necesarias para introducir un namespace por defecto y otro por prefijo. Elimina los prefijos innecesarios. Después pruébalo en un navegador

**Archivo**

```xml
<?xml version="1.0" encoding="UTF-8"?> 
<pers:person> 
 <pers:name> 
  <pers:title>Don</pers:title> 
  <pers:first>Juan</pers:first> 
  <pers:middle>García</pers:middle> 
  <pers:last>Pérez</pers:last> 
 </pers:name> 
 <pers:position>Vicepresidente de Marketing</pers:position> 
 <pers:resume> 
  <xhtml:html> 
   <xhtml:head> 
    <xhtml:title>Resumen de Juan García Pérez</xhtml:title> 
   </xhtml:head> 
   <xhtml:body> 
    <xhtml:h1>Juan García</xhtml:h1> 
    <xhtml:p>Juan es una buena persona,¿No?</xhtml:p> 
   </xhtml:body> 
  </xhtml:html> 
 </pers:resume>
</pers:person>
```

---

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<pers:person xmlns:pers="http://www.personas.com" xmlns="http://www.cosasxhtml.com">
    <pers:name>
          <pers:title>Don</pers:title>
          <pers:first>Juan</pers:first>
          <pers:middle>García</pers:middle>
          <pers:last>Pérez</pers:last>
        </pers:name>
        <pers:position>Vicepresidente de Marketing</pers:position>
        <pers:resume>
          <html>
              <head>
                  <title>Resumen de Juan García Pérez</title>
              </head>
              <body>
                    <h1>Juan García</h1>
                    <p>Juan es una buena persona,¿No?</p>
                </body>
          </html>
      </pers:resume>
</pers:person>
```
