<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio9</title>
				<style type="text/css">
					body{background:#FEA500;}
					th{background:#017E04; border:2px white solid;}
					td{background:white;}
				</style>
			</head>
			<body>
				<h2>LISTA DE ENLACES</h2>
				<xsl:for-each select="//tematica">
					<h3><xsl:value-of select="tema"/></h3>
					<table>
						<tr>
							<th>URL</th>
							<th>COMENTARIO</th>
						</tr>
						<xsl:for-each select="enlace">
						<tr>
							<td>
								<xsl:value-of select="url"/>
							</td>
							<td><xsl:value-of select="com"/></td>
						</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
