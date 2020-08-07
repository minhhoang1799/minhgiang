<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<section class="home-sanpham" setBackground="/Data/Sites/1/media/home/home-sp-bg.jpg">
			<div class="container">
				<div class="title">
					<h2>
						<xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of>
					</h2>
				</div>
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="col-md-4">
			<div class="item">
				<a>
					<xsl:attribute name="href">
						<xsl:value-of select="Url"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<div class="image">

						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<div class="title">
						<h3>
							<xsl:value-of select="Title"></xsl:value-of>
						</h3>
					</div>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>