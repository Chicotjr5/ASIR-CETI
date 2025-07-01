<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="antologia">
		<html>
			<head>
				<title>Ejercicio13</title>
				<style type="text/css">
					h2{color:blue;}
					div{border:blue 2px solid; margin:20px; padding-left:24px; background:#FFC0CB;}
					.autor{color:green; font-weight:bold;s}
					#titulo{color:blue; font-size:24px; font-weight:bold;}
				</style>
			</head>
			<body>
				<h2>ÍNDICE</h2>
				<xsl:for-each select="poema">
				<a>
					<xsl:attribute name="href">#<xsl:value-of select="@añodepublicacion"/></xsl:attribute>
					<xsl:value-of select="titulo"/>
				</a>
				<br/>
				</xsl:for-each>
				<xsl:for-each select="poema">
					<div>
					<xsl:attribute name="id"><xsl:value-of select="@añodepublicacion"/></xsl:attribute>
						<xsl:if test="@idioma='de'">
							<p>El poema está en Alemán</p>
						</xsl:if>
						<xsl:if test="@idioma='el'">
							<p>El poema está en Griego</p>
						</xsl:if>
							<p class="autor"><xsl:value-of select="autor"/><br/></p>
							<p id="titulo"><xsl:value-of select="titulo"/><br/></p>
							<p class="autor"><xsl:value-of select="subtitulo"/><br/></p>
							
							<xsl:for-each select="estrofa">
							<xsl:value-of select="concat('ESTROFA', ' ' ,position())"/><br/><!--<strong> Estrofa: <xsl:number value="position()" format="I" /> <strong/>-->
								<xsl:for-each select="verso">
									<xsl:value-of select="concat(position(), '.-' ,current())"/><br/>
								</xsl:for-each><br/>
							</xsl:for-each>
					</div><br/>		
				</xsl:for-each>	
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
