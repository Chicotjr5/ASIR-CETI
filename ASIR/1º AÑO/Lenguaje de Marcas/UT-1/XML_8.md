## Comprobar posibles fallos en este fichero: 

### Fichero 1

```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?> 
<tarjeta_visita> 
          <apellido>DEL VALLE</apellido> 
          <nombre>Cristobal</nombre> 
          <sociedad/> 
          <profesión>Doctor 
          <dirección> 
            <número>19</número> 
            <calle>C/ Florida</calle> 
            <código postal>18080</código_postal> 
            <población>MADRID</población> 
          </dirección> 
          <número_teléfono>123456789</número_teléfono> 
          <número_movil> 
          <número_fax/> 
         <9correo_electrónico/> 
</tarjeta_visita> 
```

**Correción**

```xml
<?xml version="1.0" encoding="UTF-8"?>
<tarjeta_visita>
       <apellido>DEL VALLE</apellido>
       <nombre>Cristóbal</nombre>
       <sociedad/>
       <profesión>Doctor</profesión><!--No está cerrado-->
       <dirección>
             <número>19</número>
             <calle>C/ Florida</calle>
             <código_postal>18080</código_postal><!--Etiqueta con nombre incorrecto-->
             <población>MADRID</población>
       </dirección>
       <número_teléfono>123456789</número_teléfono>
       <número_movil/><!--No estaba cerrado-->
       <número_fax/>
       <correo_electrónico9/><!--No puede empezar por un número-->
</tarjeta_visita>
```

### Fichero 2

```xml
<?xml version="1.0" encoding="utf-8" standalone="yes"?> 
<tarjeta_visita> 
        <apellido>DEL VALLE</apellido>Cristobal</nombre> 
        <sociedad/> 
        <profesión>Doctor</profesión> 
        <dirección> 
          <número>19</número> 
          <calle>C/ Florida</calle> 
          <código_postal>18080</código_postal> 
          <población>MADRID</población> 
        </dirección> 
        <número_teléfono>123456789</número_telefono> 
        <número_movil></> 
        <número_fax/> 
       <correo_electrónico/> 
</tarjeta_visita>
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
