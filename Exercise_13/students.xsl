<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <html>

        <head>
            <title>Student Details</title>

            <style>
                body {
                    font-family: Arial;
                    background-color: #f2f2f2;
                    padding: 30px;
                }

                h1 {
                    text-align: center;
                    color: #0146B3;
                }

                table {
                    width: 80%;
                    margin: auto;
                    border-collapse: collapse;
                    background-color: white;
                    box-shadow: 0 0 10px gray;
                }

                th {
                    background-color: #0146B3;
                    color: white;
                    padding: 12px;
                }

                td {
                    padding: 10px;
                    text-align: center;
                    border: 1px solid #ddd;
                }

                tr:nth-child(even) {
                    background-color: #f5f5f5;
                }
            </style>
        </head>

        <body>

            <h1>Student Details</h1>

            <table>
                <tr>
                    <th>Name</th>
                    <th>Age</th>
                    <th>Course</th>
                    <th>Grade</th>
                </tr>

                <xsl:for-each select="students/student">
                    <tr>
                        <td>
                            <xsl:value-of select="name"/>
                        </td>

                        <td>
                            <xsl:value-of select="age"/>
                        </td>

                        <td>
                            <xsl:value-of select="course"/>
                        </td>

                        <td>
                            <xsl:value-of select="grade"/>
                        </td>
                    </tr>
                </xsl:for-each>

            </table>

        </body>
        </html>
    </xsl:template>

</xsl:stylesheet>