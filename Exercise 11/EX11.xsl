<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:output method="html" encoding="UTF-8" indent="yes" />

    <xsl:template match="/">
        <html lang="en">
            <head>
                <meta charset="UTF-8" />
                <meta name="viewport" content="width=device-width, initial-scale=1.0" />
                <title>Book Collection</title>
                <style>
                    * {
                        box-sizing: border-box;
                    }

                    body {
                        margin: 0;
                        padding: 32px;
                        font-family: "Segoe UI", Tahoma, sans-serif;
                        color: #29231f;
                        background: linear-gradient(135deg, #f7efe3, #d9e8e3);
                    }

                    header {
                        max-width: 1100px;
                        margin: 0 auto 28px;
                        text-align: center;
                    }

                    h1 {
                        margin: 0 0 8px;
                        color: #174c4f;
                        font-size: clamp(28px, 5vw, 44px);
                    }

                    header p {
                        margin: 0;
                        color: #6f6258;
                    }

                    .book-grid {
                        display: grid;
                        grid-template-columns: repeat(5, minmax(0, 1fr));
                        gap: 12px;
                        max-width: 1400px;
                        margin: 0 auto;
                    }

                    .book-card {
                        display: flex;
                        flex-direction: column;
                        min-height: 260px;
                        padding: 16px;
                        background: rgba(255, 255, 255, 0.94);
                        border: 1px solid #d8e0da;
                        border-top: 5px solid #d18b3e;
                        border-radius: 10px;
                        box-shadow: 0 10px 24px rgba(48, 67, 61, 0.12);
                    }

                    .category {
                        align-self: flex-start;
                        margin: 0 0 14px;
                        padding: 5px 10px;
                        border-radius: 20px;
                        color: #174c4f;
                        background: #e1f0eb;
                        font-size: 12px;
                        font-weight: 700;
                        text-transform: uppercase;
                        letter-spacing: 0.5px;
                    }

                    h2 {
                        margin: 0 0 8px;
                        color: #174c4f;
                        font-size: 21px;
                    }

                    .author {
                        margin: 0 0 18px;
                        color: #6f6258;
                        font-style: italic;
                    }

                    dl {
                        display: grid;
                        grid-template-columns: 1fr 1fr;
                        gap: 10px 14px;
                        margin: auto 0 0;
                    }

                    dt {
                        color: #8a7a6b;
                        font-size: 12px;
                        text-transform: uppercase;
                    }

                    dd {
                        margin: 2px 0 0;
                        color: #29231f;
                        font-weight: 600;
                    }

                    @media (max-width: 1000px) {
                        .book-grid {
                            grid-template-columns: repeat(2, minmax(0, 1fr));
                        }
                    }

                    @media (max-width: 600px) {
                        body {
                            padding: 20px 14px;
                        }

                        .book-grid {
                            grid-template-columns: 1fr;
                        }
                    }
                </style>
            </head>
            <body>
                <header>
                    <h1>Book Collection</h1>
                    <p>Explore the available books in the library</p>
                </header>

                <main class="book-grid">
                    <xsl:for-each select="books/book">
                        <article class="book-card">
                            <span class="category"><xsl:value-of select="normalize-space(category)" /></span>
                            <h2><xsl:value-of select="normalize-space(title)" /></h2>
                            <p class="author">
                                <xsl:choose>
                                    <xsl:when test="author">
                                        By <xsl:value-of select="normalize-space(author)" />
                                    </xsl:when>
                                    <xsl:otherwise>Author not listed</xsl:otherwise>
                                </xsl:choose>
                            </p>

                            <dl>
                                <div>
                                    <dt>Year</dt>
                                    <dd><xsl:value-of select="normalize-space(year)" /></dd>
                                </div>
                                <div>
                                    <dt>Price</dt>
                                    <dd>Rs. <xsl:value-of select="normalize-space(price)" /></dd>
                                </div>
                                <div>
                                    <dt>Edition</dt>
                                    <dd>
                                        <xsl:choose>
                                            <xsl:when test="edition"><xsl:value-of select="normalize-space(edition)" /></xsl:when>
                                            <xsl:otherwise>Standard</xsl:otherwise>
                                        </xsl:choose>
                                    </dd>
                                </div>
                                <div>
                                    <dt>Language</dt>
                                    <dd><xsl:value-of select="normalize-space(language)" /></dd>
                                </div>
                            </dl>
                        </article>
                    </xsl:for-each>
                </main>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
