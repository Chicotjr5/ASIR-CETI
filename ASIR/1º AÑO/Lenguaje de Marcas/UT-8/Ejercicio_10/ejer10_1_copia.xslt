<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="catalog">
		<html>
			<head>
				<title>Ejercicio10_1</title>
				<style type="text/css">
					table{border:4px solid orange; padding:7px;}
					#rosa{background:pink; font-size:24px; font-weight:bold; color:white; font-family:arial; padding:7px;}
					 .catalogo_cabecera {background-color:#7F8000;
					 font-size:18pt;color:white;font-family:Impact; padding:7px;} 
					 .catalogo_fila0 {background-color:lightGreen; padding:7px;}
				</style>
			</head>
			<body>
				<table>
					<tr>
						<td colspan="4" id="rosa">Genero Fantasia</td>
					</tr>
					<tr>
						<th class="catalogo_cabecera">#</th>
						<th class="catalogo_cabecera">Titulo</th>
						<th class="catalogo_cabecera">Autor</th>
						<th class="catalogo_cabecera">Fecha Publicacion</th>
					</tr>
					<xsl:for-each select="book[genre='Fantasy']">
						<tr>
							<td class="catalogo_fila0"><xsl:value-of select="position()"/></td>
							<td class="catalogo_fila0"><xsl:value-of select="title"/></td>
							<td class="catalogo_fila0"><xsl:value-of select="author"/></td>
							<td class="catalogo_fila0"><xsl:value-of select="substring(publish_date, 1,4)"/></td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>	
	</xsl:template>
</xsl:stylesheet>
