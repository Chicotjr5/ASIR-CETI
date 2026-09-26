<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="universidad">
		<html>
			<head>
				<title>Ejercicio8_2</title>
				<style type="text/css">
					body{background:#80F7F3;}
				</style>
			</head>
			<body>
				<h1>Lista de profesores</h1>
				<hr></hr>
				<xsl:for-each select="//profesor">
					<ul>
						<li><xsl:value-of select="nombre"></xsl:value-of></li>
						<ul>
							<xsl:for-each select="//asignatura[contains(concat(current()/@asignaturas,' '), concat(@codigo,' '))]"><!-- contains(donde busco, que busco) -->
								<li><xsl:value-of select="concat(titulo, ' ' ,creditos)"/></li>
							</xsl:for-each><hr></hr>
						</ul>
					</ul>
				</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
