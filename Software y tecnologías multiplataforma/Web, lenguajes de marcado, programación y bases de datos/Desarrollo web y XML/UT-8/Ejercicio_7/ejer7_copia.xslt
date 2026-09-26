<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="horario">
		<html>
			<head>
				<title>Ejercicio7</title>
				<link rel="stylesheet" type="text/css" href="ejer7.1.css"/>
			</head>
			<body>
				<table>
					<tr>
						<th>HORA</th>
						<th>LUNES</th>
						<th>MARTES</th>
						<th>MIERCOLES</th>
						<th>JUEVES</th>
						<th>VIERNES</th>
					</tr>
					<tr>
						<th>8:30-10:10</th>
						<td><xsl:value-of select="dia[numdia=1]/tarea[hora-ini='8:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=2]/tarea[hora-ini='8:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=3]/tarea[hora-ini='8:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=4]/tarea[hora-ini='8:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=5]/tarea[hora-ini='8:30']/nombre"/></td>
					</tr>
					<tr>
						<th>10:30-12:10</th>
						<td><xsl:value-of select="dia[numdia=1]/tarea[hora-ini='10:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=2]/tarea[hora-ini='10:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=3]/tarea[hora-ini='10:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=4]/tarea[hora-ini='10:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=5]/tarea[hora-ini='10:30']/nombre"/></td>
					</tr>
					<tr>
						<th>12:30-14:10</th>
						<td><xsl:value-of select="dia[numdia=1]/tarea[hora-ini='12:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=2]/tarea[hora-ini='12:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=3]/tarea[hora-ini='12:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=4]/tarea[hora-ini='12:30']/nombre"/></td>
						<td><xsl:value-of select="dia[numdia=5]/tarea[hora-ini='12:30']/nombre"/></td>
					</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>