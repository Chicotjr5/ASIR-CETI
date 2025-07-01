<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio4</title>
				<link rel="stylesheet" type="text/css" href="ejer4_1.css"/>
			</head>
			<body>
				<h1>LISTA DE VUELOS</h1>
				<xsl:for-each select="//vuelo">
					<h3>
						<xsl:value-of select="numero"/>
					</h3>
					<h3>
						<xsl:value-of select="avion"/>
					</h3>
					<table>
						<tr>
							<th>Origen</th>
							<th>Destino</th>
							<th>Fecha</th>
						</tr>
						<tr>
							<td><xsl:value-of select="ruta/aeropuerto_origen"/></td>
							<td><xsl:value-of select="ruta/aeropuerto_destino"/></td>
							<td><xsl:value-of select="ruta/fecha_salida"/></td>
						</tr>
					</table>
					<xsl:apply-templates select="pilotos"/>
					<table>
						<xsl:for-each select="PNC/*">
							<tr>
								<td><xsl:value-of select="name()"/></td>
								<td><xsl:value-of select="."/></td>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="pilotos">
		<table>
			<tr>
				<th>piloto</th>
				<th>copiloto</th>
			</tr>
			<tr>
				<td><xsl:value-of select="CDB"/></td>
				<td>
					<xsl:for-each select="COPI">
						<xsl:value-of select="."/>
						<xsl:if test="position() !=last()">-</xsl:if>
					</xsl:for-each>
				</td>
			</tr>
		</table>
	</xsl:template>
	<!--<xsl:template match="ruta">
		<table>
			<tr>
				<th>Origen</th>
				<th>Destino</th>
				<th>Fecha</th>
			</tr>
			<tr>
				<td>
					<xsl:value-of select="aeropuerto_origen"/>
				</td>
				<td>
					<xsl:value-of select="aeropuerto_destino"/>
				</td>
				<td>
					<xsl:value-of select="fecha_salida"/>
				</td>
			</tr>
			<tr>
				<th colspan="2">piloto</th>
				<th colspan="1">copiloto</th>
			</tr>
			<tr>
				<td>
					<xsl:value-of select="../pilotos/CDB"/>
				</td>
				<td>
					<xsl:value-of select="../pilotos/COPI"/>
				</td>
			</tr>
		</table>
	</xsl:template>-->
</xsl:stylesheet>