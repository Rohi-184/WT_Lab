<%@ page contentType="text/html;charset=UTF-8" %>

<!DOCTYPE html>
<html>

<head>

    <title>Image Map using JSP</title>

    <style>

        body {
            font-family: Arial;
            background-color: #f2f2f2;
            text-align: center;
            padding: 50px;
        }

        .box {
            width: 500px;
            margin: auto;
            background-color: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 10px gray;
        }

        h1 {
            color: #0146B3;
        }

        a {
            display: block;
            width: 250px;
            margin: 15px auto;
            padding: 12px;
            background-color: #0146B3;
            color: white;
            text-decoration: none;
            border-radius: 6px;
        }

        a:hover {
            background-color: #003580;
        }

    </style>

</head>

<body>

    <div class="box">

        <h1>Image Map using JSP</h1>

        <p>Select an option</p>

        <a href="clientmap.jsp">
            Client-Side Image Map
        </a>

        <a href="servermap.jsp">
            Server-Side Image Map
        </a>

    </div>

</body>

</html>