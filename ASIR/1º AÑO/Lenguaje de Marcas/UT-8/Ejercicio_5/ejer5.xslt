<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio5</title>
				<style type="text/css">
					body{background:#0ff;}
					table{border:2px solid white;}
					td{border:2px solid white;}
					th{border:2px solid white;}
					.suspenso{background:red;}
				</style>
			</head>
			<body>
				<h1>Lista de Alumnos</h1>
				<table>
						<tr>
							<th>Alumno</th>
							<th>1º Evaluación</th>
							<th>2º Evaluación</th>
							<th>3º Evaluación</th>
							<th>Final</th>
						</tr>
					<xsl:for-each select="//alumno">
						<xsl:sort select="apellidos"/>
						<xsl:sort select="nombre"/>
						<tr>
						<xsl:if test="not(round((notas/eva1+notas/eva2+notas/eva3)div 3)>=5)">
							<xsl:attribute name="class">suspenso</xsl:attribute>
						</xsl:if>
							
							<td><xsl:value-of select="apellidos"/>-<xsl:value-of select="nombre"/></td>
							<td><xsl:value-of select="notas/eva1"/></td>
							<td><xsl:value-of select="notas/eva2"/></td>
							<td><xsl:value-of select="notas/eva3"/></td>
							<td><xsl:value-of select="round((notas/eva1+notas/eva2+notas/eva3)div 3)"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
