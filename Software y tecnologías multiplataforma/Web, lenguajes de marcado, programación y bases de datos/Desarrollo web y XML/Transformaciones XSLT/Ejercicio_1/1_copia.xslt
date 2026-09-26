<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="ciclos">
		<html>
			<head>
				<title>Ejercicio1</title>
			</head>
			<body>
				<xsl:for-each select="ciclo">
					<p><xsl:value-of select="nombre"/></p>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
