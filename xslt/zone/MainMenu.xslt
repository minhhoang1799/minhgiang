<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <ul>
            <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
        </ul>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:if test="count(Zone) > 0">
                <xsl:attribute name="class">
                    <xsl:if test="IsActive = 'true'">
                        <xsl:text disable-output-escaping="yes">active </xsl:text>
                    </xsl:if>
                    <xsl:text disable-output-escaping="yes">has-mega</xsl:text>
                </xsl:attribute>
                <div class="mega-wrapper">
                    <div class="mega-back"><em class="mdi mdi-chevron-left mega-hide"></em>
                        <h4><xsl:value-of select="Title"></xsl:value-of></h4>
                    </div>
                    <xsl:apply-templates select="Zone" mode='MegaChild'></xsl:apply-templates>
                </div><em class="mdi mdi-chevron-down mega-show"></em>
            </xsl:if>
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
    <xsl:template match="Zone" mode='MegaChild'>
         <div class="mega-item">
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <figure>
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
                <figcaption>
                    <h4><xsl:value-of select="Title"></xsl:value-of></h4>
                </figcaption>
            </figure>
            </a>
        </div>
    </xsl:template>
</xsl:stylesheet>