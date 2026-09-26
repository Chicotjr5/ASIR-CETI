<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
		<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio2</title> <!--sentencia link o algo asi-->
				<style type="text/css">
					body{background:#01FFFF;}
					td, th{border:2px black solid;}
				</style>
			</head>
			<body>
				<h1>Lista de albums</h1>
				<xsl:apply-templates select="//cd"/>
			</body>
		</html>
		</xsl:template>	
		<xsl:template match="cd">
			<h2><xsl:value-of select="nombreInterprete"/>-<xsl:value-of select="tituloAlbum"/></h2><!--Se puede hacer select="concat(nombreInterprete '- 																																		'tituloAlbum)"-->
			<table>
				<tr>
					<th>pista</th>
					<th>titulo</th>
					<th>duración</th>
				</tr>
				<xsl:apply-templates select="pista"/>
			</table>
		</xsl:template>
		<xsl:template match="pista">
			<tr>
				<td><xsl:value-of select="num"/></td>
				<td><xsl:value-of select="titulo"/></td>
				<td><xsl:value-of select="duracion"/></td>
			</tr>
		</xsl:template>
</xsl:stylesheet>
