<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="listaCD">
		<html>
			<head>
				<title>Ejercicio2</title>
				<style type="text/css">
					body{background:#44F7F6;}
					table{ background:green;}
					td{border:1px solid black;}
					#amarillo{background:yellow;}
				</style>
			</head>
			<body>
				<h1>Lista de Albums</h1>
				<xsl:for-each select="cd">
					<h2><xsl:value-of select="concat(nombreInterprete, '-', tituloAlbum)"/></h2>
					<table>
						<xsl:if test="tituloAlbum='Lorca'">
							<xsl:attribute name="id">amarillo</xsl:attribute>
						</xsl:if>
						<tr>
							<th>pista</th>
							<th>titulo</th>
							<th>duracion</th>
						</tr>
						<xsl:for-each select="pista">
							<tr>
								<td><xsl:value-of select="num"/></td>
								<td><xsl:value-of select="titulo"/></td>
								<td><xsl:value-of select="duracion"/></td>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
