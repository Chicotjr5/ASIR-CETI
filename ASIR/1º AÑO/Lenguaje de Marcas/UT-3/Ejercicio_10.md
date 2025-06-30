	<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <!-- plantilla para paginas web-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Práctica 21</title>
  </head>
  <body>
		<h2>COMPRUEBA LO QUE HAS APRENDIDO</h2>
		<form action="./programas/programa1.php" method="POST">
			<table border="5">
				<tr>
					<th>Los métodos de envio son POST y GET</th>
					<td><input type="radio" name="SI_1" value="SI"/>SI<br/><input type="radio" name="NO_1" value="NO"/>NO</td>
				</tr>
				<tr>
					<th>La etiqueta strong pone en cursiva</th>
					<td><input type="radio" name="SI_2" value="SI_1"/>SI<br/><input type="radio" name="NO_2" value="NO_1"/>NO</td>
				</tr>
				<tr>
					<th>Caption es el título de la tabla</th>
					<td><input type="radio" name="SI_3" value="SI_2"/>SI<br/><input type="radio" name="NO_3" value="NO_2"/>NO</td>
				</tr>
				<tr>
					<th>th sirve para fusionar columnas</th>
					<td><input type="radio" name="SI_4" value="SI_3"/>SI<br/><input type="radio" name="NO_4" value="NO_3"/>NO</td>
				</tr>
				<tr>
					<th>href es atributo de img</th>
					<td><input type="radio" name="SI_5" value="SI_4"/>SI<br/><input type="radio" name="NO_5" value="NO_4"/>NO</td>
				</tr>
				<tr>
					<th>el enlace relativo parte del sitio donde este</th>
					<td><input type="radio" name="SI_6" value="SI_5"/>SI<br/><input type="radio" name="NO_6" value="NO_5"/>NO</td>
				</tr>
				<tr>
					<th>xmlns indica el espacio de nombres</th>
					<td><input type="radio" name="SI_7" value="SI_6"/>SI<br/><input type="radio" name="NO_7" value="NO_6"/>NO</td>
				</tr>
				<tr>
					<th>En la etiqueta a es obligatorio el atributo name</th>
					<td><input type="radio" name="SI_8" value="SI_7"/>SI<br/><input type="radio" name="NO_8" value="NO_7"/>NO</td>
				</tr>
			</table><br/>
		<input type="submit" name="Guardar" value="Enviar datos"/><input type="reset" name="limpia" value="Borrar datos introducidos"/><br/>
		<form/>
  </body>
</html>