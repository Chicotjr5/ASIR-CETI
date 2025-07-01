<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="escrutinio_sitio">
		<html>
			<head>
				<title>Ejercicio11_1</title>
				<style type="text/css">
					body{background:#01FFFF;}
					#votos{background:#9875AB; border:white 1px solid; float:left; margin-left:5%; margin-top:10%; padding:3%;}
					#tabla{background:#325A8B; border:white 2px solid; float:right; margin-right:10%;}
					th, td{border:white 1px solid; padding:2%;}
					.morao{text-transform:capitalize;}
				</style>
			</head>
			<body>
				<h1>Resultados Elecciones</h1>
				<h2>		
					<xsl:value-of select="concat(nombre_lugar, '-' , nombre_sitio)"/><br/>
					<xsl:value-of select="convocatoria"/>
				</h2>
				
				<div id="votos">
						<ul>
							<xsl:for-each select="votos/*">
								<li class="morao"><xsl:value-of select="concat(name(),':',' ', cantidad, ' ','(',porcentaje,'%',')')"/></li>
							</xsl:for-each>
						</ul>
				</div>
				
				<div id="tabla">
					<table>
						<tr>
							<th>PARTIDO</th>
							<th>N.VOTOS</th>
							<th>PORCENTAJE</th>
							<th>ELECTOS</th>
						</tr>
						<xsl:for-each select="//partido">
							<tr>
								<td><xsl:value-of select="nombre"/></td>
								<td><xsl:value-of select="votos_numero"/></td>
								<td><xsl:value-of select="votos_porciento"/></td>
								<td><xsl:value-of select="electos"/></td>
							</tr>
						</xsl:for-each>
					</table>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
