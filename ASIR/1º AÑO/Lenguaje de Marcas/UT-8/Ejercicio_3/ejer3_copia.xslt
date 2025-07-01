<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="editoriales">
		<html>
			<head>
				<title>Ejercicio3</title>
				<style type="text/css">
					h2{color:blue; text-decoration:underline;}
					hr{border:3px solid red;}
					div{background:#FFA300; border:3px solid yellow; margin:10px; padding:30px;}
				</style>
			</head>
			<body>
				<div>
				<xsl:for-each select="editorial">
				<h2>Información de Editorial</h2>
					<p><xsl:value-of select="current()"/></p>
				</xsl:for-each>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
