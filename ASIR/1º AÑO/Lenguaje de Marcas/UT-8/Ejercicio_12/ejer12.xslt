<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="antologia">
		<html>
			<head>
				<title>Ejercicio 11</title>
				<style type="text/css">
					h1{color:#0909DB}
					div{background:pink; border:blue 2px solid; margin:77px; padding:30px;}
					span{color:green;}
					#Primero{color:blue;}
				</style>
			</head>
			<body>
				<h1>INDICE</h1>
				<xsl:for-each select="poema"><!--El atributo, con xsl:attribute_id_año_publicacion-->
					<a>
						<xsl:attribute name="href">#<xsl:value-of select="@añodepublicacion"/></xsl:attribute>
						<xsl:value-of select="titulo"/>
					</a><br/>
				</xsl:for-each>
					<xsl:for-each select="poema"><br/>
					<div>
						<xsl:attribute name="id"><xsl:value-of select="@añodepublicacion"/></xsl:attribute>
						<span></span>
						<xsl:if test="@idioma='de'">
							<p>El poema esta en alemán</p>
						</xsl:if>
						
						<xsl:if test="@idioma='el'">
							<p>El poema esta en griego</p>
						</xsl:if>					
							<span>
								<h2><xsl:value-of select="concat(autor/nombre, '-', autor/apellido)"/></h2><br/>
							</span>
							
							<span id="Primero">
								<h2><xsl:value-of select="titulo"/></h2>
							</span>
							
							<span>
								<h2><xsl:value-of select="subtitulo"/></h2>
							</span>
							
							<xsl:for-each select="estrofa"><br/>
								<strong>Estrofa: <!--<xsl:number value="position()" format="I"></xsl:number>-->
									<xsl:number count="estrofa" format="I"/>
								<br/></strong>
								
								<xsl:for-each select="verso">
								<strong>
									<xsl:number count="verso"/>
								</strong>
								<xsl:value-of select="concat('.','-',current())"/><br/>
								</xsl:for-each>
							</xsl:for-each>
					</div>
					</xsl:for-each>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
