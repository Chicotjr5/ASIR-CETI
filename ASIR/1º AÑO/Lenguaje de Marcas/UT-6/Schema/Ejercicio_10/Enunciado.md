##  Implementa un esquema XML adecuado para almacenar información de paneles de autopista como el del fichero proporcionado autopistas.xml con las siguientes características: 

- El elemento raíz se denomina "paneles"
  - "paneles" contiene un número indeterminado de elementos denominados "evento"
- Cada "evento" tiene dos atributos obligatorios "tipo" y "fecha"
  - "tipo" puede tener sólo dos valores "Accidente" o "Retención"
  - "fecha" tiene que ser de tipo xsd:dateTime
-  Cada "evento" tiene los elementos obligatorios "via", "pk" y "sentido" y los elementos opcionales "retencion" y "carrilescortados"  
  - "via" tiene los elementos opcionales "nombre", "ref", "origen", "destino", "doble" y "carriles"
    - "nombre" puede contener una cadena de texto de 50 caracteres como máximo
    - "ref" está compuesto por una cadena de 3 caracteres como máximo, un guión y un número comprendido entre 1 y 9999, por ejemplo BU-4100 o A-92.
      - "origen" y "destino" puede contener una cadena de texto de 30 caracteres como máximo
      - "doble" no tiene contenido
      - "carriles" tiene que ser un número entre 1 y 8
  - "pk" es un número con tres decimales.
  - "sentido" puede tener los valores -1, 0 ó 1.
  - "retencion" tiene el atributo opcional "long" que es del mismo tipo que pk
  - "carrilescortados" tiene el atributo obligatorio "valor" que tiene que ser un número entre 1 y 8. 
