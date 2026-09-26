<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="tarjetavuelos">
		<html>
			<head>
				<title>Ejercicio4</title>
				<link rel="stylesheet" type="text/css" href="ejer4_1.css"/>
			</head>
			<body>
				<h1>Lista de vuelos</h1>
				<xsl:for-each select="vuelo">
					<h2><xsl:value-of select="numero"/></h2>
					
					<table>
						<tr>
							<th>origen</th>
							<th>destino</th>
							<th>fecha</th>
						</tr>
						<tr>
							<td><xsl:value-of select="ruta/aeropuerto_origen"/></td>
							<td><xsl:value-of select="ruta/aeropuerto_destino"/></td>
							<td><xsl:value-of select="ruta/fecha_salida"/></td>
						</tr>
					</table>
					<table>
						<tr>
							<th>piloto</th>
							<th>copiloto</th>
						</tr>
						<xsl:for-each select="pilotos">
							<tr>
								<td><xsl:value-of select="CDB"/></td>
								<td>
								<xsl:for-each select="COPI">
									<xsl:value-of select="current()"/>
									<xsl:if test="position() !=last()">-</xsl:if>
								</xsl:for-each>
								</td>
							</tr>
						</xsl:for-each>
						<xsl:apply-templates select="PNC"/>
					</table>
				</xsl:for-each>				
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="PNC">
		<xsl:for-each select="JEFECABINA">
			<tr>
				<td><xsl:value-of select="name()"/></td>
				<td><xsl:value-of select="current()"/></td>
			</tr>
		</xsl:for-each>
		<xsl:for-each select="AUXILIAR">
			<tr>
				<td><xsl:value-of select="name()"/></td>
				<td><xsl:value-of select="current()"/></td>
			</tr>
		</xsl:for-each>
		<xsl:for-each select="AZAFATA">
			<tr>		
				<td><xsl:value-of select="name()"/></td>
				<td><xsl:value-of select="current()"/></td>
				</tr>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>