<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
		<xsl:template match="/">
			<html>
				<head>
					<title>Ejericicio3</title>
					<style type="text/css">
						h2{color:blue; text-decoration:underline;}
					</style>
				</head>
				<body>
					<xsl:for-each select="//editorial">
						<h2>Información de Editorial</h2>
						<xsl:value-of select="concat(nombre, ' ', email, ' ', homepage, ' ', direccion, ' ', tfno, ' ', //fax)"/>
					</xsl:for-each>
				</body>
			</html>
		</xsl:template>	
</xsl:stylesheet>
