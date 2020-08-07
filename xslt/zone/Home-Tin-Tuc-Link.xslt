<?xml version="1.0" encoding="utf-8" ?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">

		<section class="link-to-section">
			<div class="container">
				<div class="row">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</div>
			</div>
		</section>

	</xsl:template>
	<xsl:template match="Zone">
		<div class="col-sm-6 col-lg-4">
			<div class="cards">
				<div class="card-image">
					<a>
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Description"></xsl:value-of>
						</xsl:attribute>
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Description"></xsl:value-of>
							</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="card-caption">
					<p>
						<xsl:value-of disable-output-escaping="yes" select="Description"></xsl:value-of>
					</p>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>