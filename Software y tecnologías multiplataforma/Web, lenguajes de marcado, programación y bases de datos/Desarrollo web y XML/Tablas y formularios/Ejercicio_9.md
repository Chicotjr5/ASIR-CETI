## Determinar el código HTML necesario para crear el formulario que se muestra en la siguiente imagen:

![image](https://github.com/user-attachments/assets/637f6395-27bf-456f-8298-8c0fe93f3669)

```html 
 <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <!-- plantilla para paginas web-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Página de prueba</title>
  </head>
  <body>
		<h3>Rellena tu CV</h3>
			<form action="php/insertar_cv.php" method="POST">	
				Nombre:<br/>
						<input type="text" name="Nombre" maxlength="10"/><br/><br/>
				Apellidos:<br/>
						<input type="text" name="Apellidos" maxlength="80"/><br/><br/>
				Contraseña:<br/>
						<input type="password" name="Contraseña"/><br/><br/>
				DNI:<br/>
						<input type="text" name="DNI" maxlength="9"/><br/><br/>
				Sexo:<br/>
						<input type="radio" name="Hombre" value="Hombre" checked="checked"/>Hombre<br/>
						<input type="radio" name="Mujer" value="Mujer"/> Mujer
				<br/><br/>
				Incluir mi foto<input type="text" name="Nombre" maxlength="10"/><input type="file" name="adjuntarfoto" value="Foto" />
				<br/><br/>
				Suscribirme al boletin de novedades <input type="checkbox" name="boletin" value="dato" checked="checked"/><br/><br/>
				<input type="submit" name="Guardar" value="Guardar datos"/><input type="reset" name="limpia" value="Limpiar datos introducidos"/><br/>
				</form>
  </body>
</html>
```
