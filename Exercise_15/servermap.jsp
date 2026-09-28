<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <title>Server Side Image Map</title>

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

        input[type="image"] {
            border: 3px solid #0146B3;
        }

        .result {
            margin-top: 20px;
            padding: 15px;
            background-color: #e8f0ff;
            border-radius: 5px;
            color: #0146B3;
            font-size: 18px;
            font-weight: bold;
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

    <h1>Server-Side Image Map</h1>

    <p>Click anywhere on the image.</p>

    <form action="servermap.jsp" method="get">

        <input type="image"
               src="map.jpg"
               width="500"
               height="300"
               name="image"
               alt="Server Side Image Map">

    </form>


    <%
        String xValue = request.getParameter("image.x");
        String yValue = request.getParameter("image.y");

        if (xValue != null && yValue != null) {

            int x = Integer.parseInt(xValue);
            int y = Integer.parseInt(yValue);

            out.println("<div class='result'>");

            out.println("X Coordinate: " + x + "<br>");
            out.println("Y Coordinate: " + y + "<br><br>");

            if (x < 250 && y < 150) {

                out.println("You selected Area 1");

            } else if (x >= 250 && y < 150) {

                out.println("You selected Area 2");

            } else if (x < 250 && y >= 150) {

                out.println("You selected Area 3");

            } else {

                out.println("You selected Area 4");

            }

            out.println("</div>");
        }
    %>


    <a href="index.jsp" class="back">
        Back
    </a>

</div>

</body>

</html>