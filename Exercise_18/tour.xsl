<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
                <title>Tour Booking</title>

                <style>
                    * {
                        box-sizing: border-box;
                    }

                    body {
                        min-height: 100vh;
                        margin: 0;
                        padding: 56px 24px;
                        background: #101827;
                        color: #f8fafc;
                        font-family: "Segoe UI", Arial, sans-serif;
                    }

                    .page {
                        max-width: 1160px;
                        margin: 0 auto;
                    }

                    h1 {
                        margin: 0;
                        color: #ffffff;
                        font-size: clamp(2.3rem, 6vw, 4rem);
                        letter-spacing: -0.04em;
                    }

                    .intro {
                        margin: 10px 0 38px;
                        color: #a8b3c7;
                        font-size: 1.05rem;
                    }

                    .eyebrow {
                        margin: 0 0 10px;
                        color: #fbbf24;
                        font-size: 0.78rem;
                        font-weight: 800;
                        letter-spacing: 0.18em;
                        text-transform: uppercase;
                    }

                    .tour-grid {
                        display: grid;
                        grid-template-columns: repeat(auto-fit, minmax(260px, 1fr));
                        gap: 22px;
                    }

                    .tour-card {
                        overflow: hidden;
                        border: 1px solid #2d394d;
                        border-radius: 18px;
                        background: #1b2638;
                        box-shadow: 0 18px 35px rgba(0, 0, 0, 0.18);
                        transition: transform 180ms ease, border-color 180ms ease;
                    }

                    .tour-card:hover {
                        transform: translateY(-6px);
                        border-color: #fbbf24;
                    }

                    .tour-banner {
                        position: relative;
                        overflow: hidden;
                        min-height: 175px;
                        background: #29364b;
                    }

                    .tour-banner::after {
                        position: absolute;
                        inset: 45% 0 0;
                        background: linear-gradient(transparent, rgba(16, 24, 39, 0.55));
                        content: "";
                        pointer-events: none;
                    }

                    .tour-image {
                        display: block;
                        width: 100%;
                        height: 190px;
                        object-fit: cover;
                    }

                    .tour-content {
                        padding: 24px;
                    }

                    h2 {
                        margin: 0 0 8px;
                        color: #f8fafc;
                        font-size: 1.45rem;
                    }

                    .place {
                        display: inline-block;
                        margin: 0 0 22px;
                        padding: 6px 10px;
                        border-radius: 6px;
                        background: #29364b;
                        color: #cbd5e1;
                        font-size: 0.9rem;
                        font-weight: 600;
                    }

                    .tour-details {
                        display: flex;
                        align-items: center;
                        justify-content: space-between;
                        gap: 12px;
                        padding-top: 18px;
                        border-top: 1px solid #344156;
                    }

                    .duration {
                        color: #a8b3c7;
                        font-size: 0.95rem;
                    }

                    .price {
                        color: #fbbf24;
                        font-size: 1.55rem;
                        font-weight: 800;
                    }
                </style>
            </head>

            <body>
                <main class="page">
                    <p class="eyebrow">Find your next escape</p>
                    <h1>Journeys worth taking.</h1>
                    <p class="intro">Discover handpicked getaways across South India.</p>

                    <section class="tour-grid">
                        <xsl:for-each select="tours/tour">
                            <article class="tour-card">
                                <div class="tour-banner">
                                    <img class="tour-image">
                                        <xsl:attribute name="src">
                                            <xsl:value-of select="image"/>
                                        </xsl:attribute>
                                        <xsl:attribute name="alt">
                                            <xsl:value-of select="place"/>
                                        </xsl:attribute>
                                    </img>
                                </div>

                                <div class="tour-content">
                                    <h2>
                                        <xsl:value-of select="name"/>
                                    </h2>
                                    <p class="place">
                                        <xsl:value-of select="place"/>
                                    </p>
                                    <div class="tour-details">
                                        <span class="duration">
                                            <xsl:value-of select="days"/> days away
                                        </span>
                                        <span class="price">
                                            ₹<xsl:value-of select="price"/>
                                        </span>
                                    </div>
                                </div>
                            </article>
                        </xsl:for-each>
                    </section>
                </main>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>