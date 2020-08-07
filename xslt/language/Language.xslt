<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="lang-active"> 
            <xsl:apply-templates select="/LanguageList/Language" mode='active'></xsl:apply-templates>
        </div>
            <div class="lang-list">
                <xsl:apply-templates select="/LanguageList/Language"></xsl:apply-templates>
            </div>
    </xsl:template>
    <xsl:template match="Language" mode='active'>
        <xsl:if test="IsActive = 'true'">
            <xsl:value-of select="Title"></xsl:value-of>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Language">
        <li>
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
</xsl:stylesheet>