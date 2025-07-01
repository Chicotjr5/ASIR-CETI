<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio6</title>
				<style type="text/css">
					body{background:#887701;}
					td{background:#31EE43;}
					table, th, td{border:1px white solid;}
				</style>
			</head>
			<body>
				<h1>Hoteles</h1>
				<table>
					<tr>
						<th>Hotel</th>
						<th>Telefonos</th>
						<th>Categoría</th>
					</tr>
					<xsl:for-each select="//sheet[@name='resumen']/row">
					<tr>
						<td><xsl:value-of select="cell[@col='2']/@input"/></td>
						<td><xsl:value-of select="cell[@col='13']/@input"/></td>
						<td><xsl:value-of select="cell[@col='5']/@input"/></td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>
