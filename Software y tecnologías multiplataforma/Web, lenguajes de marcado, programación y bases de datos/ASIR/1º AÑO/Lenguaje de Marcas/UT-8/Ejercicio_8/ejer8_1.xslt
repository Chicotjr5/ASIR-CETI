<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejericio8_1</title>
				<style type="text/css">
					body{background:yellow;}
					td{border:white solid 2px;}
					#tabla{float:left; margin:15px;}
					img{height:150px; width:150px;}
				</style>
			</head>
			<body>
				<h2>LISTADO DE ALUMNOS</h2>
				<div id="tabla">
				<ul>
					<xsl:for-each select="//alumno">
						<li><xsl:value-of select="nombre"/>-<xsl:value-of select="apellido"/></li>
							<table>
								<xsl:for-each select="matriculado">
									<tr>
										<td><xsl:value-of select="//asignatura[@codigo=current()/@asignatura]/titulo"/></td>
										<td><xsl:value-of select="concat(//asignatura[@codigo=current()/@asignatura]/creditos, ' ', 'créditos')"/></td>
										<td><xsl:value-of select="@nota"/></td>
									</tr>
								</xsl:for-each>
							</table>
					</xsl:for-each>
				</ul>
				</div>
				<div>
					<img src="alumnos.jpg"/>
				</div>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
