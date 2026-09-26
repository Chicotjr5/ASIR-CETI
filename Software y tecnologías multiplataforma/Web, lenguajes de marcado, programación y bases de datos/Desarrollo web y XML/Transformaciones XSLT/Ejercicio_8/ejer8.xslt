<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
	<html>
		<head>
			<title>Ejercicio8</title>
			<style type="text/css">
				body{background:#00FF23;}
				span{text-transform:uppercase;}
			</style>
		</head>
		<body>
			<h2>LISTADO ALUMNOS Y PROFESORES</h2>
			<ul>
				<xsl:apply-templates select="//alumno | //profesor"/>
			</ul>
			
			<!--
			<xsl:for-each select="//alumno">
				<li>ALUMNO-><xsl:value-of select="nombre"/><xsl:text> </xsl:text><xsl:value-of select="apellido"/>..........<xsl:value-of select="DNI"/></li>
			</xsl:for-each>
			
			<xsl:for-each select="//profesor">
				<li>PROFESOR-><xsl:value-of select="nombre"/>
			<xsl:for-each select="apellido"><xsl:text> </xsl:text><xsl:value-of select="."/><xsl:text> </xsl:text></xsl:for-each>..........
				<xsl:value-of select="DNI"/></li>
			</xsl:for-each>
			-->
		</body>
	</html>
	</xsl:template>
	<xsl:template match="alumno|profesor">
			<li>
				<span><xsl:value-of select="name()"/></span>
				<xsl:value-of select="concat('-->',nombre, ' ')"/>
				<xsl:for-each select="apellido">
					<xsl:value-of select="concat(., ' ')"/>
				</xsl:for-each>
				<xsl:value-of select="concat('........',DNI)"/>
				<!--<xsl:value-of select="nombre"/>
				<xsl:text> </xsl:text>
				<xsl:value-of select="apellido"/>...........
				<xsl:value-of select="DNI"/>-->
			</li>
	</xsl:template>
</xsl:stylesheet>
