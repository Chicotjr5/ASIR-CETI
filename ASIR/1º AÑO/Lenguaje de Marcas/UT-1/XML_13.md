## Crear un archivo XML para representar un mensaje de correo electrónico. El mensaje debe pertenecer a un espacio de nombres que se llame “msg”. En dicho elemento se declarará otro espacio de nombres que se llamará “po”. EL mensaje tendrá como características un emisor, una fecha de envío y un destino.

### El mensaje contendrá un texto y una colección de adjuntos bajo el mismo espacio de nombres.  La colección de adjuntos se compondrá de una descripción y un ítem, que irán bajo el mismo espacio de nombres que los adjuntos

### El ítem contendrá una orden de pedido que estará bajo el espacio de nombres “po”, así como todos sus hijos. Esa orden de pedido será la misma que la del ejercicio 4, teniendo en cuenta el espacio de nombres al que está asociad

### Todos los elementos estarán “calificados” (qualified) por los prefijos correspondientes a sus espacios de nombres.

```xml
<?xml version="1.0" encoding="UTF-8"?>
<msg:Mensaje xmlns:msg="http://www.mensajes.com" xmlns:po="http://www.po.com" emisor="Cope" Fecha_envio="5/10/2022" destino="Burgos">
    <msg:Texto>Hola buenos días</msg:Texto>
    <msg:adjuntos>
        <msg:Descripción>Colección de cosas</msg:Descripción>
        <msg:Item>
              <po:Orden_pedido>
                  <po:pedido1 descripción="cajas de carton">
                      <Unidades>25</Unidades>
                      <Referencia>Pueblo paleta</Referencia>
                  </po:pedido1>
                  <po:pedido2 descripción="boligrafos">
                      <po:Unidades>78</po:Unidades>
                      <po:Referencia>Villagonzalo</po:Referencia>
                  </po:pedido2>
              </po:Orden_pedido>
        </msg:Item> 
    </msg:adjuntos>
</msg:Mensaje>
```




