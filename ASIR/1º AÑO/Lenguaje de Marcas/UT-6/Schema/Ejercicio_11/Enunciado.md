##  Utilizando como base el fichero factura.xml que se te facilita, crea un esquema en formato XSD (XMLSchema) que permita validar facturas como la anterior y que tengan en cuenta también los siguientes aspectos:

- Toda factura tiene un identificador obligatorio
- Toda factura tiene un identificador obligatorio Los elementos emision, vendedor, cliente y articulo son obligatorios, mientras que descuento es opcional
- El elemento articulo puede aparecer varias veces, los demás sólo una vez
- Vendedor tiene el atributo obligatorio id y el elemento obligatorio nombre.
- Cliente tiene el atributo obligatorio id y los elementos nombre, dirección y teléfono.
- Nombre y dirección son obligatorios, mientras que teléfono es opcional y además puede aparecer más de una vez
- Cada artículo tiene los atributos obligatorios id e iva y los elementos obligatorios denominación, precio y cantidad
- Descuento puede contener sólo un numero entre 0 y 100

Tienes que incluir todas las restricciones posibles para que los valores permitidos se ajusten al máximo a los adecuados



