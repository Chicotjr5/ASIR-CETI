<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="enlaces">
		<html>
			<head>
				<title>Ejercicio9</title>
				<style type="text/css">
					body{background:#FEA500;}
					th{background:#008001; border:1px solid white;}
					td{background:white; border:1px solid white;}
				</style>
			</head>
			<body>
				<h1>Lista de enlaces</h1>
				<xsl:for-each select="tematica">
					<h2><xsl:value-of select="tema"/></h2>
					<table>
						<tr>
							<th>URL</th>
							<th>COMENTARIO</th>
						</tr>
						<xsl:for-each select="enlace">
						<tr>
							<td><xsl:value-of select="url"/></td>
							<td><xsl:value-of select="com"/></td>
						</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
