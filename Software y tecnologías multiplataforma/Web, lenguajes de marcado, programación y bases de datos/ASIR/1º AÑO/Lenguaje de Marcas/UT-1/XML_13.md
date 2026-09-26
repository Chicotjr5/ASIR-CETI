### Crea un documento XML donde se almacena información sobre Libros en papel de la empresa A y electrónicos de la empresa B. Crea un namespace para cada empresa, y poder distinguir libro en papel de la empresa A, de libro electrónico de la empresa B, y rellena el documento con los siguientes datos. 

- Libro electrónico: Beginning XML. 4th edition. Ed Wiley. David Hunter et al. 2007. Formato pdf. Tamaño 14 MB.
- Libro papel: Configuración de Infraestructura de red de Windows Server 2008. Tony Nothrup. Ed Microsoft Press. 2008. Pasta blanda. CD incluido.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Libros>
    <EB:Libro xmlns:EB="http://www.empresaB.com" Tamaño="14MB" CD="No viene incluido" Formato="Electrónico">
          <EB:Título>Beginning XML</EB:Título>
          <EB:Autor>Ed Wiley y David Hunter</EB:Autor>
          <EB:Año>2007</EB:Año>
          <EB:Extensión>pdf</EB:Extensión>
          <EB:Editorial></EB:Editorial>
    </EB:Libro>
    <EA:Libro xmlns:EA="http://www.empresaA.com" CD="Incluido" Tapa="Blanda" Formato="Papel">
          <Título>Configuración de Infraestructura de red de Windows Server 2008</Título>
          <Autor>Tony Nothrup</Autor>
          <Año>2008</Año>
          <Editorial>Ed Microsoft Press</Editorial>
    </EA:Libro>
</Libros>
```
