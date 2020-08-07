<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <div class="product-wrapper">
            <div class="product-heading">
                <h2 class="mg-sub-title"><xsl:value-of select="/ProductList/ZoneTitle"></xsl:value-of></h2>
                <div class="product-order"><span>Sắp xếp:</span>
                    <div class="order-select" data-select="">
                        <div class="select-heading"><xsl:apply-templates select="/ProductList/SortBy" mode='active'></xsl:apply-templates></div>
                        <div class="select-list">
                            <xsl:apply-templates select="/ProductList/SortBy"></xsl:apply-templates>
                        </div>
                    </div>
                    <!-- <div class="order-select" data-select="">
                        <div class="select-heading">Giá tăng dần</div>
                        <div class="select-list"><a class="select-item" href="#">test</a><a class="select-item" href="#">test</a><a class="select-item" href="#">test</a><a class="select-item" href="#">test</a><a class="select-item" href="#">test</a><a class="select-item" href="#">test</a><a class="select-item" href="#">test</a><a class="select-item" href="#">test</a><a class="select-item" href="#">test</a></div>
                    </div> -->
                </div>
                <div class="product-pagesize"><span>Hiển thị:</span>
                    <div class="pagesize-list">
                        <xsl:apply-templates select="/ProductList/PageSize"></xsl:apply-templates>
                    </div>
                </div>
            </div>
            <div class="product-list">
                <div class="row">
                    <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="SortBy" mode='active'>
        <xsl:if test="IsActive = 'true'">
            <xsl:value-of select="Title"></xsl:value-of>
        </xsl:if>
       
    </xsl:template>
    <xsl:template match="SortBy">
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
    <xsl:template match="PageSize">
        <a>
            <xsl:if test="IsActive = 'true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
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
    <xsl:template match="Product">
        <div class="col-6 col-md-4">
            <div class="product-item">
                <figure>
                    <div class="image">
                        <a>
                            <xsl:attribute name="href">
                                <xsl:value-of select="Url"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                            <img>
                                <xsl:attribute name="src">
                                    <xsl:value-of select="ImageUrl"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="alt">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                            </img>
                        </a>
                    </div>
                    <figcaption>
                        <div class="heading">
                            <h4>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </a>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h4>
                            <p>
                                <a>
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="Url"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of select="Price"></xsl:value-of>
                                </a>
                            </p>
                        </div>
                        <div class="footer">
                            <a>
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                                <p><xsl:value-of select="/ProductList/ViewMoreText"></xsl:value-of></p></a></div>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>