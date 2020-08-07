<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
<xsl:output method="html" indent="yes"/>
    <xsl:template match="/">
        <section class="san-pham-ct mg-section">
            <div class="container">
                <div class="product-wrapper">
                    <div class="row">
                        <div class="col-lg-6">
                            <div class="product-image-wrapper">
                                <div class="product-active-wrapper">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
                                            <xsl:apply-templates select="/ProductDetail/ProductImages" mode='BigImage'></xsl:apply-templates>
                                        </div>
                                    </div>
                                </div>
                                <div class="product-thumb-wrapper">
                                    <div class="swiper-container">
                                        <div class="swiper-wrapper">
                                            <xsl:apply-templates select="/ProductDetail/ProductImages" mode='SmallImage'></xsl:apply-templates>
                                        </div>
                                    </div>
                                    <div class="swiper-navigation">
                                        <div class="swiper-btn swiper-prev"><em class="mdi mdi-chevron-up"></em></div>
                                        <div class="swiper-btn swiper-next"><em class="mdi mdi-chevron-down"></em></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col-lg-6">
                            <div class="information-wrapper">
                                <h2 class="name"><xsl:value-of select="/ProductDetail/Title"></xsl:value-of></h2>
                                <!-- <div class="brief"><xsl:value-of select="/ProductDetail/BriefContent" disable-output-escaping="yes"></xsl:value-of></div> -->
                                <p class="desc"><xsl:value-of select="/ProductDetail/FullContent" disable-output-escaping="yes"></xsl:value-of></p>
                                <div class="brief-icon">
                                    <div class="item item-1">
                                        <div class="icon">
                                            <em class="fas fa-dollar-sign"></em>
                                        </div>
                                        <div class="content">
                                            <p><xsl:value-of select="/ProductDetail/LowPrices"></xsl:value-of><span><xsl:value-of select="/ProductDetail/Price"></xsl:value-of></span></p>
                                            <!-- <span>Low Prices. <span>Price match gurantee</span></p> -->
                                        </div>
                                    </div>
                                    <div class="item item-2" >
                                        <div class="icon">
                                            <em class="fas fa-check"></em>
                                        </div>
                                        <div class="content">
                                            <p><xsl:value-of select="/ProductDetail/Guaranteed"></xsl:value-of><span><xsl:value-of select="/ProductDetail/Always"></xsl:value-of></span></p>
                                            <!-- <span>Guaranteed Fitment. <span>Always the correct part</span></p> -->
                                        </div>
                                    </div>
                                    <div class="item item-3">
                                        <div class="icon">
                                            <em class="fas fa-phone-alt"></em>
                                        </div>
                                        <div class="content">
                                            <p><xsl:value-of select="/ProductDetail/InHouse"></xsl:value-of><span><xsl:value-of select="/ProductDetail/WeKnow"></xsl:value-of></span></p>
                                            <!-- <p>In-House Experts. <span>We know our products</span></p> -->
                                        </div>
                                    </div>
                                    <div class="item item-4">
                                        <div class="icon">
                                            <em class="fas fa-reply"></em>
                                        </div>
                                        <div class="content">
                                            <p><xsl:value-of select="/ProductDetail/Easy"></xsl:value-of><span><xsl:value-of select="/ProductDetail/Quick"></xsl:value-of></span></p>
                                            <!-- <p>Easy Returns. <span>Quick and Hassle Free</span></p> -->
                                        </div>
                                    </div>
                                </div>
                                <p class="price"><xsl:value-of select="/ProductDetail/Price"></xsl:value-of></p><a class="mg-button" href="tel: 0919 803 808">Liên hệ: 0919 803 808</a>
                            </div>
                            <div class="social-share">
                                <div class="fb-share"><a href="#"><img src="/Data/Sites/1/media/san-pham/fb.png" alt="" /></a></div>
                                <div class="zalo-share"><a href="#"><img src="/Data/Sites/1/media/san-pham/zalo.png" alt="" /></a></div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="detail-wrapper">
                    <div class="detail-tab">
                        <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode='Tab'></xsl:apply-templates>
                        <div class="item" data-tab='2'>
                            Đánh giá
                        </div>
                    </div>
                    <div class="detail-content">
                         <xsl:apply-templates select="/ProductDetail/ProductAttributes" mode='Content'></xsl:apply-templates>
                         <div class="item" data-content='2'>
                        </div>
                    </div>
                </div>
                <!-- <div class="related-wrapper">
                    <h3 class="mg-title">Sản phẩm chi tiết</h3>
                    <div class="related-slide">
                        <div class="swiper-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="product-item">
                                        <figure>
                                            <div class="image"><a href="#"><img src="./img/home-sp3.png" alt=""></a></div>
                                            <figcaption>
                                                <div class="heading">
                                                    <h4><a href="#">Nắp Thùng Maxcover</a></h4>
                                                    <p><a href="#">6.000.000</a><span>đ</span></p>
                                                </div>
                                                <div class="footer"><a href="#">
                                                        <ul>
                                                            <li>Thương hiệu: Ranger</li>
                                                            <li>Nhà sản xuất: MGC</li>
                                                        </ul>
                                                        <p>xem thêm</p></a></div>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-item">
                                        <figure>
                                            <div class="image"><a href="#"><img src="./img/home-sp3.png" alt=""></a></div>
                                            <figcaption>
                                                <div class="heading">
                                                    <h4><a href="#">Nắp Thùng Maxcover</a></h4>
                                                    <p><a href="#">6.000.000</a><span>đ</span></p>
                                                </div>
                                                <div class="footer"><a href="#">
                                                        <ul>
                                                            <li>Thương hiệu: Ranger</li>
                                                            <li>Nhà sản xuất: MGC</li>
                                                        </ul>
                                                        <p>xem thêm</p></a></div>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-item">
                                        <figure>
                                            <div class="image"><a href="#"><img src="./img/home-sp3.png" alt=""></a></div>
                                            <figcaption>
                                                <div class="heading">
                                                    <h4><a href="#">Nắp Thùng Maxcover</a></h4>
                                                    <p><a href="#">6.000.000</a><span>đ</span></p>
                                                </div>
                                                <div class="footer"><a href="#">
                                                        <ul>
                                                            <li>Thương hiệu: Ranger</li>
                                                            <li>Nhà sản xuất: MGC</li>
                                                        </ul>
                                                        <p>xem thêm</p></a></div>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-item">
                                        <figure>
                                            <div class="image"><a href="#"><img src="./img/home-sp3.png" alt=""></a></div>
                                            <figcaption>
                                                <div class="heading">
                                                    <h4><a href="#">Nắp Thùng Maxcover</a></h4>
                                                    <p><a href="#">6.000.000</a><span>đ</span></p>
                                                </div>
                                                <div class="footer"><a href="#">
                                                        <ul>
                                                            <li>Thương hiệu: Ranger</li>
                                                            <li>Nhà sản xuất: MGC</li>
                                                        </ul>
                                                        <p>xem thêm</p></a></div>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="product-item">
                                        <figure>
                                            <div class="image"><a href="#"><img src="./img/home-sp3.png" alt=""></a></div>
                                            <figcaption>
                                                <div class="heading">
                                                    <h4><a href="#">Nắp Thùng Maxcover</a></h4>
                                                    <p><a href="#">6.000.000</a><span>đ</span></p>
                                                </div>
                                                <div class="footer"><a href="#">
                                                        <ul>
                                                            <li>Thương hiệu: Ranger</li>
                                                            <li>Nhà sản xuất: MGC</li>
                                                        </ul>
                                                        <p>xem thêm</p></a></div>
                                            </figcaption>
                                        </figure>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div> -->
            </div>
        </section>
    </xsl:template>
    <xsl:template match="ProductImages" mode='SmallImage'>
        <div class="swiper-slide">
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
        </div>
    </xsl:template>
    <xsl:template match="ProductImages" mode='BigImage'>
        <div class="swiper-slide">
            <div class="image">
                <a data-fancybox="">
                    <xsl:attribute name="href">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
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
        </div>
    </xsl:template>
    <xsl:template match="ProductAttributes" mode='Tab'>
        <div class="item">
            <xsl:attribute name="data-tab">
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        </div>
    </xsl:template>
    <xsl:template match="ProductAttributes" mode='Content'>
         <div class="item">
            <xsl:attribute name="data-content">
                <xsl:value-of select="position()"></xsl:value-of>
            </xsl:attribute>
           <xsl:value-of select="Content" disable-output-escaping="yes"></xsl:value-of>
        </div>
    </xsl:template>
</xsl:stylesheet>