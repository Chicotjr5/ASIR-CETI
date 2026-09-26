## Hacer una segunda versión con las provincias ordenadas en Comunidades autónomas. 

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
							<optgroup label="Comunidad de Madrid">
								<option value="28">Madrid</option>
							</optgroup>
							<optgroup label="Castilla y León">
								<option value="05">Ávila</option>
								<option value="09">Burgos</option>
								<option value="24">León</option>
								<option value="34">Palencia</option>
								<option value="37">Salamanca</option>
								<option value="40">Segovia</option>
								<option value="42">Soria</option>
								<option value="47">Valladolid</option>
								<option value="49">Zamora</option>
							</optgroup>	
							<optgroup label="Cataluña">
								<option value="08">Barcelona</option>
								<option value="25">Lleida</option>
								<option value="17">Girona</option>
								<option value="43">Tarragona</option>
							</optgroup>	
							<optgroup label="Extremadura">
								<option value="06">Badajoz</option>
								<option value="10">Cáceres</option>
							</optgroup>	
							<optgroup label="Principado de Asturias">
								<option value="33">Asturias</option>
							</optgroup>
							<optgroup label="Andalucía">
								<option value="04">Almería</option>
								<option value="11">Cádiz</option>
								<option value="14">Córdoba</option>
								<option value="18">Granada</option>
								<option value="21">Huelva</option>
								<option value="23">Jaén</option>
								<option value="29">Málaga</option>
								<option value="41">Sevilla</option>
							</optgroup>
							<optgroup label="Aragón">
								<option value="22">Huesca</option>
								<option value="44">Teruel</option>
								<option value="50">Zaragoza</option>
							</optgroup>	
							<optgroup label="Galicia">
								<option value="27">Lugo</option>
								<option value="32">Ourense</option>
								<option value="36">Pontevedra</option>
								<option value="15">Coruña (A)</option>
							</optgroup>	
							<optgroup label="Castilla la Mancha">
								<option value="02">Albacete</option>
								<option value="13">Ciudad Real</option>
								<option value="16">Cuenca</option>
								<option value="19">Guadalajara</option>
								<option value="45">Toledo</option>
							</optgroup>	
							<optgroup label="Comunidad de Murcia">
								<option value="30">Murcia</option>
							</optgroup>
							<optgroup label="Comunidad Foral de Navarra">
								<option value="31">Navarra</option>
							</optgroup>
							<optgroup label="Comunidad de Cantabria" >
								<option value="39">Cantabria</option>
							</optgroup>
							<optgroup label="Comunidad Valenciana">
								<option value="12">Castellón/Castelló</option>
								<option value="46">Valencia/València</option>
								<option value="03">Alicante/Alacant</option>
							</optgroup>
							<optgroup label="La Rioja">
								<option value="26">Rioja (La)</option>
								<option value="01">Álava/Araba</option>
							</optgroup>
							<optgroup label="Pais Vasco">								
								<option value="48">Vizcaya/Bizkaia</option>
								<option value="20">Guipúzcoa/Gipuzkoa</option>
							</optgroup>
							<optgroup label="Islas Canarias">
								<option value="35">Palmas (Las)</option>
								<option value="38">Santa Cruz de Tenerife</option>
							</optgroup>
							<optgroup label="Islas Baleares">
								<option value="07">Balears (Illes)</option>
							</optgroup>
							<optgroup label="Provincias Independientes">
								<option value="51">Ceuta</option>
								<option value="52">Melilla</option>
							</optgroup>
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
```
			</fieldset><br/><br/>
		<input type="submit" name="Guardar" value="Enviar datos"/><input type="reset" name="limpia" value="Borrar datos introducidos"/><br/>
		<form/>
  </body>
</html>
