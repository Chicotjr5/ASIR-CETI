<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio1_Tema8_v2</title>
				<style type="text/css">
					body{background:blue;}
				</style>
			</head>
			<body>
			<ul>
				<xsl:apply-templates/>
			</ul>
			</body>
		</html>
	</xsl:template>	
	<xsl:template match="ciclo">
		<li>
			<xsl:value-of select="nombre"/>
		</li>
	</xsl:template>	
</xsl:stylesheet>