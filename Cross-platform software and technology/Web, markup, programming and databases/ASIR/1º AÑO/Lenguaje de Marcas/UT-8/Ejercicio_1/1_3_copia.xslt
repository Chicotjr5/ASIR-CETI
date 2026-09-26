<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="cifp">
		<html>
			<head>
				<title>Ejercicio1_3</title>
				<style type="text/css">
					table, th, td{border:1px solid black;}
					body{font-family:times-new-roman;}
				</style>
			</head>
			<body>
				<h2>
					<xsl:value-of select="@nombre"/>
				</h2>
				<p>
					<xsl:value-of select="concat('Página Web:', ' ', @web)"/>
				</p>
				<xsl:apply-templates select="ciclos"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="ciclos">
		<table>
			<tr>
				<th>Nombre del ciclo</th>
				<th>Grado</th>
				<th>Año del titulo</th>
			</tr>
			<xsl:for-each select="ciclo">
				<tr>
					<td><xsl:value-of select="nombre"/></td>
					<td><xsl:value-of select="grado"/></td>
					<td><xsl:value-of select="decretoTitulo/@año"/></td>
				</tr>
			</xsl:for-each>
		</table>
		
		
	</xsl:template>
</xsl:stylesheet>