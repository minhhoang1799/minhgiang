<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="filter-wrapper">
            <xsl:apply-templates select='/ProductFilter/Group'></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="Group">
         <xsl:choose>
            <xsl:when test="GroupId = '12'">
                <div class="order-select" data-select="">
                    <div class="select-heading">
                        <xsl:choose>
                            <xsl:when test="count(Option[IsActive='true']) > 0">
                                <xsl:value-of select="Option[IsActive='true']/Title"></xsl:value-of>
                            </xsl:when>
                            <xsl:otherwise>
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:otherwise>
                        </xsl:choose>
                    </div>
                    <div class="select-list">
                        <xsl:apply-templates select='Option' mode='Default'></xsl:apply-templates>
                    </div>
                </div>
            </xsl:when>
            <xsl:otherwise>
                 <div class="filter-group">
                    <div class="filter-heading"><xsl:value-of select="Title"></xsl:value-of></div>
                    <div class="filter-select" data-select="">
                        <div class="select-heading">
                            <xsl:choose>
                                <xsl:when test="count(Option[IsActive='true']) > 0">
                                    <xsl:value-of select="Option[IsActive='true']/Title"></xsl:value-of>
                                </xsl:when>
                                <xsl:otherwise>
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:otherwise>
                            </xsl:choose>
                        </div>
                        <div class="select-list">
                            <xsl:apply-templates select='Option' mode='Default'></xsl:apply-templates>
                        </div>
                    </div>
                </div>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="Option" mode='Default'>
        <a class='select-item'>
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">select-item active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        </a>
    </xsl:template>
</xsl:stylesheet>