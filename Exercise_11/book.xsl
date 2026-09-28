<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <html>
        <head>

            <title>Book Details</title>

            <style>
                body {
                    font-family: Arial;
                    background-color: #f2f2f2;
                    padding: 40px;
                }

                .box {
                    background-color: white;
                    padding: 25px;
                    border-radius: 10px;
                    box-shadow: 0 0 10px gray;
                }

                table {
                    width: 100%;
                    border-collapse: collapse;
                }

                th, td {
                    padding: 12px;
                    text-align: left;
                    border-bottom: 1px solid #ddd;
                }

                th {
                    background-color: #0146B3;
                    color: white;
                }

                h1 {
                    text-align: center;
                    color: #0146B3;
                }
            </style>
        </head>
        <body>
            <div class="box">
                <h1>Book Details</h1>
                <table>
                    <tr>
                        <th>Title</th>
                        <th>Author</th>
                        <th>Year</th>
                        <th>Price</th>
                    </tr>
                    <xsl:for-each select="books/book">
                        <tr>
                            <td><xsl:value-of select="title"/></td>
                            <td><xsl:value-of select="author"/></td>
                            <td><xsl:value-of select="year"/></td>
                            <td>₹<xsl:value-of select="price"/></td>
                        </tr>
                    </xsl:for-each>
                </table>
            </div>
        </body>
        </html>
    </xsl:template>
</xsl:stylesheet>