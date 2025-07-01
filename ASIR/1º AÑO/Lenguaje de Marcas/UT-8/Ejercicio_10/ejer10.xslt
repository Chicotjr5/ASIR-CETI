<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="catalog">
		<html>
			<head>
				<title>Ejercicio10</title>
				<style type="text/css">
					 th {background-color:darkGreen; 
					 font-size:24pt;color:white;font-family:Impact;} 
					 .catalogo_cabecera {background-color:green; 
					 font-size:18pt;color:white;font-family:Impact;} 
					 .catalogo_fila0 {background-color:lightGreen;} 
					 .catalogo_fila1 {background-color:white;} 
					 .catalogo_fila_final {background-color:darkGreen;}
				</style>
			</head>
			<body>
				<table>
					<tr>
						<th colspan="6">TODOS LOS GENEROS</th>
					</tr>
					<tr>
						<td class="catalogo_cabecera">#</td>
						<td class="catalogo_cabecera">Titulo</td>
						<td class="catalogo_cabecera">Autor</td>
						<td class="catalogo_cabecera">Fecha Publicación</td>
						<td class="catalogo_cabecera">Descripción</td>
						<td class="catalogo_cabecera">Genero</td>
					</tr>
					<xsl:for-each select="book">
					<xsl:sort select="title"/>
					<tr>
					<xsl:if test="position() mod 2=0">
						<xsl:attribute name="class">catalogo_fila0</xsl:attribute>
					</xsl:if>
					<xsl:if test="position() mod 2=1">
						<xsl:attribute name="class">catalogo_fila1</xsl:attribute>
					</xsl:if>
						<td>
							<xsl:value-of select="position()"/>
						</td>
						<td>
							<xsl:value-of select="title"/>
						</td>
						<td>
							<xsl:value-of select="author"/>
						</td>
						<td>
							<xsl:value-of select="genre"/>
						</td>
						<td>
							<xsl:value-of select="publish_date"/>
						</td>
						<td>
							<xsl:value-of select="description"/>
						</td>
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
