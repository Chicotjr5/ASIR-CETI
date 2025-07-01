<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio1_Tema8</title>
				<style type="text/css">
					body{background:blue;}
				</style>
			</head>
			<body>
				<xsl:apply-templates/>
			</body>
		</html>
	</xsl:template>	
	<xsl:template match="ciclo">
		<p>
			<xsl:value-of select="nombre"/>
		</p>
	</xsl:template>	
</xsl:stylesheet>
