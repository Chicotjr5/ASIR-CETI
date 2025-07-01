<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="universidad">
		<html>
			<head>
				<title>Ejercicio8</title>
				<style type="text/css">
					body{background:#03FE23;}
				</style>
			</head>
			<body>
			<h1>Lista de Alumnos y Profesores</h1>
				<xsl:for-each select="//alumno">
					<li>
						<xsl:value-of select="concat('ALUMNO', '-->', nombre, apellido, '.........', DNI)"/>
					</li>
				</xsl:for-each>
				<xsl:for-each select="//profesor">
				<li>
					<xsl:value-of select="concat('PROFESOR', '-->', nombre, apellido, '.........', DNI)"/>
				</li>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
