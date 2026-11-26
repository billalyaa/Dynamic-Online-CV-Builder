
<%-- 
    Document   : cvError
    Created on : 23 Nov 2026, 12:37:06 pm
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>CV Error</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #AEBFB3;
            text-align: center;
            margin: 0;
            padding: 100px 20px;
            color: #263D32;
        }

        .error-container {
            background-color: white;
            max-width: 500px;
            width: 100%;
            margin: auto;
            padding: 30px;
            border-radius: 10px;
            box-sizing: border-box;
        }

        h2 {
            color: #B54747;
        }

        p {
            font-size: 14px;
            line-height: 1.6;
        }

        a {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 18px;
            background-color: #416B53;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-size: 14px;
        }

        a:hover {
            background-color: #315A46;
        }
    </style>
</head>

<body>

    <div class="error-container">

        <h2>Invalid CV Information</h2>

        <p>
            <%= request.getAttribute("errorMessage") %>
        </p>

        <p>Please check your information and try again.</p>

        <a href="cvForm.jsp">Back to CV Form</a>

    </div>

</body>
</html>
