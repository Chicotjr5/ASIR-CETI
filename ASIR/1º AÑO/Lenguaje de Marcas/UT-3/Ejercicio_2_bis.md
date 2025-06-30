### Determinar el código HTML necesario para crear la pagina que se muestra .

![image](https://github.com/user-attachments/assets/0e921611-0925-4579-a475-7f1870ebac00)
 
Al pinchar en El Camino lleva a la [siguiente página](https://es.wikipedia.org/wiki/El_camino_(novela)) 
Las tres imágenes de abajo están en una tabla sin borde 
Al pinchar en la imagen de Cela lleva a otra página

![image](https://github.com/user-attachments/assets/12be3d55-4577-4a74-868e-b069a6c207b7)


```html
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <!-- plantilla para paginas web-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página de prueba</title>
  </head>
  <body>
	<table border="1">
		<caption><h2>Autores y sus premios</h2></caption>
			<tr>
				<th>Autor</th>
				<th>Obras</th>
				<th>Premio Nobel</th>
				<th>Premio Cervantes</th>
				<th>Premio Príncipe de Asturias</th>
			</tr>
			<tr>
				<td><img src="../Imagenes/octaviopaz.jpg" height="100" width="100"/>Octavio Paz</td>
				<td>
					<ol>
						<li>A la orilla del mundo</li>
						<li>Agua y viento</li>
						<li>Dos y uno, tres</li>
						<li>Discos visuales</li>
					</ol>
				</td>
				<td>1990</td>
				<td>1981</td>
				<td>-</td>
			</tr>
			<tr>
				<td>Maria Vargas Llosa <img src="../Imagenes/vargasllosa.jpg" height="100" width="100"/></td>
				<td>
					<ul>
						<li><i>Elogio de la madrasta</li>
						<li>Los cachorros</li>
						<li>Lituma de los Andes</i></li>
					</ul>
				</td>
				<td>2010</td>
				<td>1994</td>
				<td>1986</td>
			</tr>
			<tr>
				<td><a href="cela.html"><img  src="../Imagenes/cela.jpg" height="100" width="100"/></a>Camilo Jose Cela</td>
				<td>
					<ul>
						<li>La colmena</li>
						<li>Viaje a la Alcarria</li>
						<li>La familia de Pascual Duarte</li>
					</ul>
				</td>
				<td>1989</td>
				<td>1995</td>
				<td>1987</td>
			</tr>
			<tr>
				<td>Miguel Delibes<img src="../Imagenes/delibes.jpg" height="100" width="100"/></td>
				<td>
					<ul>
						<li><a href="https://es.wikipedia.org/wiki/El_camino_(novela">El camino</a></li>
						<li>El disputado voto del señor Cayo</li>
					</ul>
				</td>
				<td>-</td>
				<td>1993</td>
				<td>1982</td>
			</tr>
	</table>
	<br/><br/>
	<table>
		<tr>
			<td><img src="../Imagenes/nobel.jpg"/ height="100" width="200"></td>
			<td><img src="../Imagenes/cervantes1.png" height="100" width="200"/></td>
			<td><img src="../Imagenes/asturias.jpg" height="100" width="200"/></td>
		</tr>
	
	</table>
  </body>
</html>
```
