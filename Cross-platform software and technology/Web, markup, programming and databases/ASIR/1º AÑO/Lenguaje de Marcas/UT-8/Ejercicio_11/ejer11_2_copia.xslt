<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="escrutinio_sitio">
		<html>
			<head>
				<title>Ejercicio_11</title>
				<style type="text/css">
					body{background:#03FEFF;}
					#votos{background:#9875AE; width:20%; padding:14px; border:1px solid white; margin-left:33px; margin-top:100px;float:left;}
					table{background:#294366; margin-right:389px; float:right; margin-bottom:200px;}
					th, td{border:1px solid white;}
				</style>
			</head>
			<body>
				<h1>RESULTADO ELECCIONES</h1>
				<h2><xsl:value-of select="concat(nombre_lugar, ' --- ', nombre_sitio)"/><br/>
					<xsl:value-of select="convocatoria"/></h2>
				<div id="votos">
					<ul>
						<xsl:apply-templates select="//contabilizados"/>
						<xsl:apply-templates select="//abstenciones"/>
						<xsl:apply-templates select="//nulos"/>
						<xsl:apply-templates select="//blancos"/>
					</ul>
				</div>
				
				<xsl:for-each select="resultados">
					<table>
						<tr>
							<th>PARTIDO</th>
							<th>Nº VOTOS</th>
							<th>PORCENTAJE</th>
							<th>ELECTOS</th>
						</tr>
						<xsl:for-each select="partido">
							<tr>
								<td><xsl:value-of select="nombre"/></td>
								<td><xsl:value-of select="votos_numero"/></td>
								<td><xsl:value-of select="votos_porciento"/></td>
								<td><xsl:value-of select="electos"/></td>
							</tr>
						</xsl:for-each>
					</table>
				</xsl:for-each>
			</body>
		</html>	
	</xsl:template>
	
	
	<xsl:template match="contabilizados">
		<li><xsl:value-of select="concat(name(),':',' ', cantidad, ' ', '(', porcentaje, '%)')"/></li>
	</xsl:template>
	<xsl:template match="abstenciones">
		<li><xsl:value-of select="concat(name(),':', cantidad, '(', porcentaje, ')')"/></li>
	</xsl:template>
	<xsl:template match="nulos">
		<li><xsl:value-of select="concat(name(),':', cantidad, '(', porcentaje, ')')"/></li>
	</xsl:template>
	<xsl:template match="blancos">
		<li><xsl:value-of select="concat(name(),':', cantidad, '(', porcentaje, ')')"/></li>
	</xsl:template>
</xsl:stylesheet>
