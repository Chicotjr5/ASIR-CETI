<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="universidad">
		<html>
			<head>
				<title>Ejercicio8_1</title>
				<style type="text/css">
					body{background:#FFFE88;}
					table, td, tr{border:1px solid white;}
				</style>
				
			</head>
			<body>
				<h1>Lista de Alumnos</h1>
				<xsl:for-each select="//alumno">
					<ul>
						<li><xsl:value-of select="concat(nombre, ' ', apellido)"/></li>
					</ul>
					<table>
					<xsl:for-each select="matriculado">
						<tr>
							<td><xsl:value-of select="//asignatura[@codigo=current()/@asignatura]/titulo"/></td>
							<td><xsl:value-of select="concat(//asignatura[@codigo=current()/@asignatura]/creditos, ' ' ,'creditos')"/></td>
							<td><xsl:value-of select="@nota"/></td>
						</tr>
					</xsl:for-each>
					</table>
				</xsl:for-each>
				<img src="alumnos.jpg"></img>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
