<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <title>Client Side Image Map</title>

    <style>

        body {
            font-family: Arial;
            background-color: #f2f2f2;
            text-align: center;
            padding: 30px;
        }

        .box {
            width: 600px;
            margin: auto;
            background-color: white;
            padding: 25px;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
        }

        h1 {
            color: #0146B3;
        }

        img {
            border: 3px solid #0146B3;
        }

        p {
            font-size: 17px;
        }

        .back {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #0146B3;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }

    </style>

</head>

<body>

    <div class="box">

        <h1>Client-Side Image Map</h1>

        <p>Click on different areas of the image.</p>

        <img src="map.jpg"
             width="500"
             height="300"
             usemap="#myMap"
             alt="Image Map">

        <map name="myMap">

            <!-- Area 1 -->
            <area shape="rect"
                  coords="0,0,250,150"
                  href="https://www.google.com"
                  target="_blank"
                  alt="Google">

            <!-- Area 2 -->
            <area shape="rect"
                  coords="250,0,500,150"
                  href="https://www.wikipedia.org"
                  target="_blank"
                  alt="Wikipedia">

            <!-- Area 3 -->
            <area shape="rect"
                  coords="0,150,250,300"
                  href="https://www.youtube.com"
                  target="_blank"
                  alt="YouTube">

            <!-- Area 4 -->
            <area shape="rect"
                  coords="250,150,500,300"
                  href="https://www.github.com"
                  target="_blank"
                  alt="GitHub">

        </map>

        <br>

        <a href="index.jsp" class="back">
            Back
        </a>

    </div>

</body>

</html>