<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="/">
		<html>
			<head>
				<title>Ejercicio8_3</title>
				<style type="text/css">
					body{background:#80F7F3;}
				</style>
			</head>
			<body>
				<h2>Lista de profesores</h2>
				<hr/>
				<ul>
				<xsl:for-each select="//profesor">
					<li>
						<xsl:value-of select="nombre"/>
							<ul>
							<xsl:for-each select="//asignatura[contains(concat(current()/@asignaturas,' '), concat(@codigo,' '))]"><!-- contains(donde busco, que busco) -->
								<li><xsl:value-of select="concat(titulo, ' ' ,creditos)"/></li>
							</xsl:for-each>
							</ul>
							<hr/>
						</li>
				</xsl:for-each>
				</ul>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
