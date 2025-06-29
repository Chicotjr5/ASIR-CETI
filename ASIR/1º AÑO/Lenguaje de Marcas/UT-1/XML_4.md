### Crear un XML para una orden de pedido que se caracterizará por su id, la fecha y su id de cliente. 
### Dicha orden tendrá una factura que vendrá marcada por un id. La factura tendrá el nombre de la empresa, la dirección, el nombre de la ciudad y el código postal. 
### A su vez la orden de pedido tendrá un elemento envío cuyo atributo href será el id de la factura. Para finalizar, la orden de pedido tendrá dos pedidos, cada uno de los cuales tendrá una descripción. 
### Además cada pedido vendrá marcado por su referencia y la cantidad de unidades que se piden de ese elemento. 

```bash
<?xml version="1.0" encoding="UTF-8"?>
<Ordendepedido Id="23" Fecha="02/10/2022" Idcliente="654">
        <Factura Id="98">
          <NombreEmpresa>Tecnopato</NombreEmpresa>
           <Dirección>C\nashe nº27</Dirección>
           <Nombreciudad>Burgos</Nombreciudad>
           <CódigoPostal>09007</CódigoPostal>
            <Envío href="98"/>
          </Factura>
          <Pedidos>
              <Pedido1 Descripción="Pedido para Manuel">
                <Referencia>5</Referencia>
                <Unidades>34</Unidades>
              </Pedido1>
              <Pedido2 Descripción="Pedido para Juan">
                <Referencia>7</Referencia>
                <Unidades>24</Unidades>
              </Pedido2>
          </Pedidos>
</Ordendepedido>

```
