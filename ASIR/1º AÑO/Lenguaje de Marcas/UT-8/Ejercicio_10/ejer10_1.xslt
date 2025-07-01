<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="catalog">
		<html>
			<head>
				<title>Ejercicio10_2</title>
				<style>
					#titulo{background-color:FFC0CB; 
					 font-size:24pt;color:white;font-family:Impact;} 
					 .catalogo_cabecera {background-color:green; 
					 font-size:18pt;color:white;font-family:Impact;} 
					 .catalogo_fila0 {background-color:lightGreen;} 
					 .catalogo_fila1 {background-color:white;} 
					 .catalogo_fila_final {background-color:darkGreen;}
					 table{border:5px solid #FCA305;}
				</style>
			</head>
			<body>
				<table>
					<tr>
						<td colspan="4" id="titulo">Género Fantasia</td>
					</tr>
					<tr>
						<td class="catalogo_cabecera">#</td>
						<td class="catalogo_cabecera">Titulo</td>
						<td class="catalogo_cabecera">Autor</td>
						<td class="catalogo_cabecera">Fecha Publicacion</td>
					</tr>
					<xsl:for-each select="book">
					<xsl:if test="genre='Fantasy'">
						<tr class="catalogo_fila0">
							<td><xsl:value-of select="position()"/></td>
							<td><xsl:value-of select="title"/></td>
							<td><xsl:value-of select="author"/></td>
							<td><xsl:value-of select="substring(publish_date,1,4)"/></td>
						</tr>
					</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
