<?xml version="1.0"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>

            <head>
                <title>Bike Showroom</title>

                <style>
                    * {
                        box-sizing: border-box;
                    }

                    body {
                        margin: 0;
                        min-height: 100vh;
                        padding: 48px 24px;
                        background: linear-gradient(135deg, #eef2ff, #fdf2f8);
                        color: #1f2937;
                        font-family: "Segoe UI", Arial, sans-serif;
                    }

                    .showroom {
                        max-width: 1100px;
                        margin: 0 auto;
                    }

                    h1 {
                        margin: 0 0 8px;
                        color: #312e81;
                        font-size: clamp(2rem, 5vw, 3rem);
                        text-align: center;
                    }

                    .intro {
                        margin: 0 0 36px;
                        color: #6b7280;
                        text-align: center;
                    }

                    .bike-grid {
                        display: grid;
                        grid-template-columns: repeat(auto-fit, minmax(240px, 1fr));
                        gap: 24px;
                    }

                    .bike-card {
                        overflow: hidden;
                        padding: 24px;
                        border: 1px solid rgba(99, 102, 241, 0.12);
                        border-radius: 20px;
                        background: #ffffff;
                        box-shadow: 0 12px 30px rgba(49, 46, 129, 0.1);
                        transition: transform 180ms ease, box-shadow 180ms ease;
                    }

                    .bike-card:hover {
                        transform: translateY(-5px);
                        box-shadow: 0 18px 38px rgba(49, 46, 129, 0.17);
                    }

                    .card-top {
                        display: flex;
                        align-items: center;
                        justify-content: space-between;
                        gap: 12px;
                        margin-bottom: 20px;
                    }

                    .bike-id {
                        padding: 6px 10px;
                        border-radius: 999px;
                        background: #eef2ff;
                        color: #4338ca;
                        font-size: 0.8rem;
                        font-weight: 700;
                    }

                    .bike-icon {
                        font-size: 1.7rem;
                    }

                    h2 {
                        margin: 0 0 6px;
                        color: #111827;
                        font-size: 1.4rem;
                    }

                    .brand {
                        margin: 0 0 20px;
                        color: #6b7280;
                    }

                    .price {
                        margin: 0 0 20px;
                        color: #7c3aed;
                        font-size: 1.6rem;
                        font-weight: 800;
                    }

                    .color-row {
                        display: flex;
                        align-items: center;
                        gap: 10px;
                        padding-top: 16px;
                        border-top: 1px solid #f3f4f6;
                        color: #4b5563;
                    }

                    .color-swatch {
                        width: 18px;
                        height: 18px;
                        border: 2px solid #e5e7eb;
                        border-radius: 50%;
                    }
                </style>
            </head>

            <body>
                <main class="showroom">
                    <h1>Bike Showroom</h1>
                    <p class="intro">Find the right ride for your next adventure.</p>

                    <section class="bike-grid">
                        <xsl:for-each select="bikes/bike">
                            <article class="bike-card">
                                <div class="card-top">
                                    <span class="bike-id">
                                        <xsl:value-of select="id"/>
                                    </span>
                                    <span class="bike-icon" aria-hidden="true">🏍</span>
                                </div>

                                <h2>
                                    <xsl:value-of select="name"/>
                                </h2>
                                <p class="brand">
                                    <xsl:value-of select="brand"/>
                                </p>
                                <p class="price">
                                    ₹<xsl:value-of select="price"/>
                                </p>
                                <div class="color-row">
                                    <span class="color-swatch">
                                        <xsl:attribute name="style">
                                            background-color: <xsl:value-of select="color"/>;
                                        </xsl:attribute>
                                    </span>
                                    <span>
                                        <xsl:value-of select="color"/>
                                    </span>
                                </div>
                            </article>
                        </xsl:for-each>
                    </section>
                </main>
            </body>

        </html>

    </xsl:template>

</xsl:stylesheet>