<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio7</title>
				<style type="text/css">
					body 
 { 
 background-color:#CCCC33; 
 padding:20px; 
 } 
table 
 { 
 width:300px; 
 background-color:#hh3333; 
 color:#FFFFFF; 
 font-family:Tahoma; 
 font-size:12pt;
 padding:10px; 
 } 
tr 
 { 
 width:300px; 
 background-color:#CC2026; 
 color:#000000; 
 font-family:Tahoma; 
 font-size:12pt; 
 padding:6px; 
 } 
th 
 { 
 width:300px; 
 background-color:#FFFF70; 
 color:#000000; 
 font-family:Tahoma; 
 font-size:16pt; 
 padding:5px; 
 } 
				</style>
			</head>
			<body>
				<table>
					<tr>
						<th>Hora</th>
						<th>Lunes</th>
						<th>Martes</th>
						<th>Miercoles</th>
						<th>Jueves</th>
						<th>Viernes</th>
					</tr>
						<tr>
							<th>8:30-10:10</th>
							<td><xsl:value-of select="//dia[numdia='1']/tarea [hora-ini='8:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='2']/tarea [hora-ini='8:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='3']/tarea [hora-ini='8:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='4']/tarea [hora-ini='8:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='5']/tarea [hora-ini='8:30']/nombre"/></td>
						</tr>
						<tr>
							<th>10:30-12:10</th>
							<td><xsl:value-of select="//dia[numdia='1']/tarea [hora-ini='10:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='2']/tarea [hora-ini='10:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='3']/tarea [hora-ini='10:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='4']/tarea [hora-ini='10:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='5']/tarea [hora-ini='10:30']/nombre"/></td>
						</tr>
						<tr>
							<th>12:30-14:10</th>
							<td><xsl:value-of select="//dia[numdia='1']/tarea [hora-ini='12:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='2']/tarea [hora-ini='12:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='3']/tarea [hora-ini='12:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='4']/tarea [hora-ini='12:30']/nombre"/></td>
							<td><xsl:value-of select="//dia[numdia='5']/tarea [hora-ini='12:30']/nombre"/></td>
						</tr>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>