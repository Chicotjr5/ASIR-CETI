<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="tienda">
		<html>
			<head>
				<title>Ejercicio_12+1</title>
				<style type="text/css">
					body{background:#81F681;}
					table{border:2px solid black;}
					td{background:#FDAA59;}
					th{background:#F66B96;}
					
				</style>
			</head>
			<body>
				<h3><xsl:value-of select="nombre"/></h3>
				<xsl:for-each select="url">
					<a>
						<xsl:value-of select="concat(@etiqueta, ' ', current())"/>
					</a><br/>
				</xsl:for-each>
				<h3>Nuestros Mejores Productos</h3>
				<table>
					<tr>
						<th>Codigo</th>
						<th>Cantidad</th>
						<th>Articulo</th>
						<th>Seccion</th>
						<th>Marca</th>
						<th>Modulo</th>
						<th>Caracteristicas</th>
						<th colspan="3">Opciones</th>
					</tr>
					<xsl:for-each select="producto">
						<tr>
							<td><xsl:value-of select="codigo"/></td>
							<td><xsl:value-of select="cantidad"/></td>
							<td><xsl:value-of select="articulo"/></td>
							<td><xsl:value-of select="seccion"/></td>
							<td><xsl:value-of select="marca"/></td>
							<td><xsl:value-of select="modelo"/></td>
							<xsl:for-each select="caracteristicas">
								<td>
									<xsl:for-each select="linea">
										<li><xsl:value-of select="current()"/></li>
									</xsl:for-each>
								</td>
							</xsl:for-each>
							<xsl:for-each select="opciones">
								<td><xsl:value-of select="@nombre"/></td>
								<td><xsl:value-of select="opcion/@valor"/></td>
							</xsl:for-each>
							<td><xsl:value-of select="precio"/></td>
							
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
