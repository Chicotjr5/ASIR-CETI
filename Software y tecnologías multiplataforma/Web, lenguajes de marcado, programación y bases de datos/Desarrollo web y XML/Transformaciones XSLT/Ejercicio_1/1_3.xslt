<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio1_Tema8_3</title>
				<style type="text/css">
					body{background:pink;}
					th{border:2px solid black;}
					td{border:2px solid black;}
				</style>
			</head>
			<body>
				<h1><xsl:value-of select="cifp/@nombre"/></h1>
				<p>Página web:
					<a>
						<xsl:attribute name="href"><xsl:value-of select="cifp/@web"/></xsl:attribute>
						<xsl:value-of select="cifp/@web"/>
					</a>
				</p>
				<table>
						<tr>
							<th>Nombre del ciclo</th>
							<th>Grado</th>
							<th>Año del titulo</th>
						</tr>
						<xsl:apply-templates select="//ciclo"/>
				</table>
			</body>
		</html>
	</xsl:template>	
	<xsl:template match="ciclo">
		<tr>
			<td><xsl:value-of select="nombre"/></td>
			<td><xsl:value-of select="grado"/></td>
			<td><xsl:value-of select="decretoTitulo/@año"/></td>
		</tr>
	</xsl:template>
</xsl:stylesheet>