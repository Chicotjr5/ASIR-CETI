## Determinar el código HTML necesario para crear la tabla que se muestra en la siguiente imagen 
## Utilizar la primera fila como  las celdas de cabecera y añadir todos los atributos posibles.

![image](https://github.com/user-attachments/assets/d90e6384-0ecd-4187-a2d9-c90c54a7abd1)


 ```html
﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <!-- plantilla para paginas web-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página de prueba</title>
  </head>
  <body>
	<h2>Su pedido</h2>
	<table border="1">
		<tr>
			<th>Nombre producto</th>
			<th>Precio unitario</th>
			<th>Unidades</th>
			<th>Precio total</th>
		</tr>
		<tr>
			<td>Smartphone</td>
			<td>392.00€</td>
			<td>1</td>
			<td>392.00€</td>
		</tr>
		<tr>
			<td>Fundas de colores</td>
			<td>2.5€</td>
			<td>5</td>
			<td>12.5€</td>
		</tr>
		<tr>
			<td>Tablet 10"</td>
			<td>199.99€</td>
			<td>1</td>
			<td>199.99€</td>
		</tr>
		<tr>
			<th>TOTAL</th>
			<td>-</td>
			<td>7</td>
			<th>604.49</th>
		</tr>
	</table>
  </body>
</html>
```
