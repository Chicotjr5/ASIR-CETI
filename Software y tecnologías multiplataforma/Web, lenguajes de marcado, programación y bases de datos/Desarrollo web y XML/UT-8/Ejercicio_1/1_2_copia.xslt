<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="ciclos">
		<html>
			<head>
				<title>Ejercicio1_2</title>
			</head>
			<body>
				<xsl:for-each select="ciclo">
						<li>
							<xsl:value-of select="nombre"/>	
						</li>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>