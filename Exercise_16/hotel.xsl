<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:output method="html" encoding="UTF-8"/>

<xsl:template match="/">

<html>
<head>
    <title>DreamStay Hotels</title>

    <style>
        * {
            box-sizing: border-box;
        }

        body {
            font-family: Arial, sans-serif;
            margin: 0;
            background: #f4f1ea;
            color: #243044;
        }

        header {
            background: linear-gradient(135deg, #101d35, #243b55);
            color: white;
            text-align: center;
            padding: 40px 20px;
            border-bottom: 4px solid #d4af69;
        }

        header h1 {
            font-size: 36px;
            margin: 0 0 12px;
            letter-spacing: 2px;
        }

        header p {
            color: #e3c98f;
            font-size: 16px;
            margin: 0;
        }

        .intro {
            text-align: center;
            padding: 25px 15px 5px;
        }

        .intro h2 {
            color: #172b4d;
            font-size: 28px;
            margin-bottom: 8px;
        }

        .intro p {
            color: #6b7280;
        }

        .rooms {
            display: flex;
            justify-content: center;
            align-items: stretch;
            flex-wrap: wrap;
            gap: 25px;
            padding: 30px 20px 50px;
        }

        .card {
            width: 300px;
            background: #ffffff;
            border-radius: 14px;
            overflow: hidden;
            box-shadow: 0 5px 20px rgba(16, 29, 53, 0.10);
            transition: transform 0.3s ease,
                        box-shadow 0.3s ease;
            border: 1px solid #e8e1d5;
        }

        .card:hover {
            transform: translateY(-7px);
            box-shadow: 0 12px 28px rgba(16, 29, 53, 0.18);
        }

        .card img {
            display: block;
            width: 100%;
            height: 200px;
            object-fit: cover;
        }

        .card-content {
            padding: 20px;
        }

        .card h2 {
            color: #172b4d;
            font-size: 22px;
            margin: 0 0 12px;
        }

        .card p {
            color: #626b78;
            font-size: 14px;
            line-height: 1.7;
        }

        .capacity {
            background: #f4f1ea;
            color: #374151;
            padding: 10px;
            border-radius: 6px;
        }

        .price {
            color: #98702c !important;
            font-size: 22px !important;
            font-weight: bold;
            border-top: 1px solid #eee5d6;
            padding-top: 15px;
            margin-bottom: 0;
        }

        .price span {
            color: #777777;
            font-size: 13px;
            font-weight: normal;
        }

        footer {
            background: #101d35;
            color: #d9dce3;
            text-align: center;
            padding: 18px;
            font-size: 13px;
        }

        @media (max-width: 650px) {
            header h1 {
                font-size: 28px;
            }

            .rooms {
                padding: 20px 15px 35px;
            }

            .card {
                width: 100%;
                max-width: 360px;
            }
        }
    </style>
</head>

<body>

    <header>
        <h1>
            <xsl:value-of select="hotelBooking/company"/>
        </h1>

        <p>
            <xsl:value-of select="hotelBooking/location"/>
        </p>
    </header>

    <section class="intro">
        <h2>Discover Your Perfect Stay</h2>
        <p>Comfort, elegance and hospitality in every room.</p>
    </section>

    <section class="rooms">

        <xsl:for-each select="hotelBooking/rooms/room">

            <div class="card">

                <img src="{image}" alt="{name}"/>

                <div class="card-content">

                    <h2>
                        <xsl:value-of select="name"/>
                    </h2>

                    <p>
                        <xsl:value-of select="description"/>
                    </p>

                    <p class="capacity">
                        <b>Capacity: </b>
                        <xsl:value-of select="capacity"/>
                    </p>

                    <p class="price">
                        ₹<xsl:value-of select="price"/>
                        <span> / night</span>
                    </p>

                </div>

            </div>

        </xsl:for-each>

    </section>

    <footer>
        © DreamStay Hotels | Experience Comfort and Luxury
    </footer>

</body>
</html>

</xsl:template>

</xsl:stylesheet>