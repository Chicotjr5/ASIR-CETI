## Crear un documento XML para el siguiente pedido que ha recibido por correo electrónico una empresa que se dedica a la venta de herramientas para jardinería

### Enunciado

"Hola, necesito una cortadora de césped para mi jardín de esas que anuncian en oferta, me gustaría que fuera uno de esos modelos eléctricos, pues las de gasolina contaminan mucho. Me llamo Roberto Movilla, la cortadora la tendrán que enviar a Albacete, la dirección es Plaza de la Duquesa 12, la recogerá mi esposa que se llama Alicia Abad. Ahora que lo pienso también necesitaré 3 podadoras para los setos. Les paso mi dirección de aquí para lo referente al pago, es General Ricardos 56, aquí en Madrid. Es urgente, por favor, el césped está muy alto." 

La fecha del pedido es el 20 de octubre. El empleado que se encarga del pedido ha comprobado algunos datos necesarios: el código postal de la dirección de Albacete es 05020 y el de la de Madrid 28055; también ha consultado el catálogo de productos y ha averiguado que la cortadora vale 148.95 euros y su código de producto es 872-AA, aunque no sabe si es o no eléctrica; una podadora vale 7.98 y su código es 926-FH. 

```xml
<?xml version="1.0" encoding="UTF-8"?>
<Pedido Fecha="20/10/2022" Estado="Urgente">
      <Cliente>Roberto Movilla</Cliente>
      <Dirección_Envío Cod_postal="05020">
            <Ciudad>Albacete</Ciudad>
            <Calle>Plaza de la Duquesa 12</Calle>
            <Destinatario>Alicia Abad</Destinatario>
      </Dirección_Envío>
      <Dirección_pago Cod_postal="28055">
            <Ciudad>Madrid</Ciudad>
            <Calle>General Ricardos 56</Calle>
      </Dirección_pago>
      <Productos>
           <Cortadoracesped Código="872-AA">
                <Cantidad>1</Cantidad>
               <Precio>148.95€</Precio>
               <Observaciones>De oferta, no se sabe si es eléctrica o no</Observaciones>
             </Cortadoracesped>
              <Podadora Código="926-FH">
                <Cantidad>3</Cantidad>
                <Precio>7.98€</Precio>
              </Podadora>
      </Productos>
</Pedido>
```
