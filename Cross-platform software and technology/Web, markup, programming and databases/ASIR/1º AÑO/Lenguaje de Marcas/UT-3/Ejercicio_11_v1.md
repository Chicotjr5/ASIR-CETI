## Determinar el código HTML necesario para crear el formulario que se muestra en la siguiente imagen: 

![image](https://github.com/user-attachments/assets/a6037f5f-78c5-4b50-b2e2-28e32c95cc0d)

**En una primera versión, visualizar las provincias como se proporcionan**

```html
  <!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
 <!-- plantilla para paginas web-->
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="es" lang="es">
  <head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Práctica 22</title>
  </head>
  <body>
		<h2>Rellena tu CV</h2>
		<form action="./programas/programa1.php" method="post">
			<fieldset>
				<legend>Datos personales</legend>
				<label>Nombre<input type="text" name="Nombre" maxlenght="15"/><br/></label>
				<label>Apellidos<input type="text" name="Apellidos" maxlenght="20"/><br/><br/></label>
				<label>DNI<br/><input type="text" name="DNI" maxlenght="11"/>Incluir mi foto<input type="file" name="Adjuntar_DNI" value="Foto_DNI"/><br/><br/></label>
				<label>Sexo<br/>
				<input type="radio" name="SI" value="SI"/>Hombre<br/><input type="radio" name="NO" value="NO"/>Mujer</label><br/><br/>
				<label>Provincia</label>
					<select>
						<option value="" selected="selected">- selecciona -</option>
							<option value="" selected="selected">- selecciona -</option>
								<option value="01">Álava/Araba</option>
								<option value="02">Albacete</option>
								<option value="03">Alicante/Alacant</option>
								<option value="04">Almería</option>
								<option value="33">Asturias</option>
								<option value="05">Ávila</option>
								<option value="06">Badajoz</option>
								<option value="07">Balears (Illes)</option>
								<option value="08">Barcelona</option>
								<option value="09">Burgos</option>
								<option value="10">Cáceres</option>
								<option value="11">Cádiz</option>
								<option value="39">Cantabria</option>
								<option value="12">Castellón/Castelló</option>
								<option value="51">Ceuta</option>
								<option value="13">Ciudad Real</option>
								<option value="14">Córdoba</option>
								<option value="15">Coruña (A)</option>
								<option value="16">Cuenca</option>
								<option value="17">Girona</option>
								<option value="18">Granada</option>
								<option value="19">Guadalajara</option>
								<option value="20">Guipúzcoa/Gipuzkoa</option>
								<option value="21">Huelva</option>
								<option value="22">Huesca</option>
								<option value="23">Jaén</option>
								<option value="24">León</option>
								<option value="27">Lugo</option>
								<option value="25">Lleida</option>
								<option value="28">Madrid</option>
								<option value="29">Málaga</option>
								<option value="52">Melilla</option>
								<option value="30">Murcia</option>
								<option value="31">Navarra</option>
								<option value="32">Ourense</option>
								<option value="34">Palencia</option>
								<option value="35">Palmas (Las)</option>
								<option value="36">Pontevedra</option>
								<option value="26">Rioja (La)</option>
								<option value="37">Salamanca</option>
								<option value="38">Santa Cruz de Tenerife</option>
								<option value="40">Segovia</option>
								<option value="41">Sevilla</option>
								<option value="42">Soria</option>
								<option value="43">Tarragona</option>
								<option value="44">Teruel</option>
								<option value="45">Toledo</option>
								<option value="46">Valencia/València</option>
								<option value="47">Valladolid</option>
								<option value="48">Vizcaya/Bizkaia</option>
								<option value="49">Zamora</option>
								<option value="50">Zaragoza</option>
					</select><br/>
					<label>Fecha de nacimiento</label>
						<input type="text" name="Día" maxlenght="11"/>
						de<label>
							<select name="Mes" size="1">
								<option>Enero</option>
								<option>Febrero</option>
								<option>Marzo</option>
								<option>Abril</option>
								<option>Mayo</option>
								<option>Junio</option>
								<option>Julio</option>
								<option>Agosto</option>
								<option>Septiembre</option>
								<option>Octubre</option>
								<option>Noviembre</option>
								<option>Diciembre</option>
							</select>
						</label>
						<label>Fecha de nacimiento</label>
						<input type="text" name="Año" maxlenght="11"/>
			</fieldset>
			<fieldset>
				<legend>Datos para suscriptores</legend>
					<br/>
					<label>
						<select name="Datos" size="5" multiple="multiple">
							<option>Administración de bases de datos</option>
							<option>Analisis de programación</option>
							<option>Arquitectura</option>
							<option>Calidad</option>
							<option>ERP, CRM,Business Intelligence</option>
							<option>Formula 1</option>
							<option>Moto GP</option>
							<option>Formula 2</option>
						</select>
					</label>
				Suscribirme al boletin de novedades <input type="checkbox" name="boletin" value="dato" checked="checked"/>
			</fieldset><br/><br/>
		<input type="submit" name="Guardar" value="Enviar datos"/><input type="reset" name="limpia" value="Borrar datos introducidos"/><br/>
		<form/>
  </body>
</html>
```
