<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="tienda">
		<html>
			<head>
				<title>Ejercicio13</title>
				<style type="text/css">
					body{background:#81F681;}
					th{background:#F9679A; border:1px solid black;}
					td{background:#FAAB59; border:1px solid black;}
					table{border:black solid 1 px;}
				</style>
			</head>
			<body>
				<h2><xsl:value-of select="nombre"/></h2>
				
				<xsl:for-each select="url">
					<p>
						<xsl:value-of select="@etiqueta"/>
						<a>
							<xsl:attribute name="href">
								<xsl:value-of select="concat(@prefijo,.)"/>
							</xsl:attribute>
							<xsl:value-of select="."/>
						</a><br/>
					</p>
				</xsl:for-each>
				
				
				<h3>Nuestros mejores productos</h3>
				<table>
					<tr>
						<th>Código</th>
						<th>Cantidad</th>
						<th>Artículo</th>
						<th>Sección</th>
						<th>Marca</th>
						<th>Modelo</th>
						<th>Caracteristicas</th>
						<th colspan="3">Opciones</th>
					</tr>
					<xsl:for-each select="producto">
					<tr>
							<td>
								<xsl:value-of select="codigo"/>
							</td>
							<td>
								<xsl:value-of select="cantidad"/>
							</td>
							<td>
								<xsl:value-of select="articulo"/>
							</td>
							<td>
								<xsl:value-of select="seccion"/>
							</td>
							<td>
								<xsl:value-of select="marca"/>
							</td>
							<td>
								<xsl:value-of select="modelo"/>
							</td>
							<td>
								<xsl:for-each select="caracteristicas/linea">
									<ul>
										<li><xsl:value-of select="."/></li>
									</ul>
								</xsl:for-each>
							</td>
							<td>
								<xsl:for-each select="precio">
										<xsl:value-of select="concat('Precio: ',' ', current(), 'euros')"/>
								</xsl:for-each>
								<xsl:apply-templates select="opciones"/>
							</td>						
					</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="opciones">
		<td>
			<xsl:value-of select="@nombre"/>
			<select>
				<xsl:for-each select="opcion">
					<option>
						<xsl:value-of select="@valor"/>
					</option>
				</xsl:for-each>
			</select>
		</td>
	</xsl:template>
</xsl:stylesheet>
