
<%-- 
    Document   : cvView
    Created on : 23 Nov 2026
    Author     : USER
--%>

<%@page import="com.cvbuilder.model.CVBean"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    CVBean cv = (CVBean) request.getAttribute("cvData");
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <title>My CV</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #AEBFB3;
            margin: 0;
            padding: 30px 20px;
            color: #263D32;
        }

        .cv-container {
            background-color: white;
            max-width: 750px;
            width: 100%;
            margin: auto;
            padding: 35px;
            box-sizing: border-box;
            border-radius: 8px;
        }

        .header {
            text-align: center;
            border-bottom: 2px solid #416B53;
            padding-bottom: 20px;
        }

        h1 {
            color: #263D32;
            margin-bottom: 8px;
            font-size: 28px;
        }

        .professional-title {
            color: #416B53;
            font-size: 17px;
            margin: 5px;
        }

        .contact {
            color: #526B5C;
            font-size: 13px;
            line-height: 1.8;
        }

        h2 {
            color: #263D32;
            font-size: 17px;
            background-color: #DCE8DF;
            padding: 9px;
            border-left: 4px solid #416B53;
            margin-top: 25px;
        }

        p {
            font-size: 14px;
            line-height: 1.6;
            margin: 8px 0;
        }

        .print-button {
            text-align: center;
            margin: 25px;
        }

        button {
            background-color: #416B53;
            color: white;
            padding: 11px 25px;
            border: none;
            border-radius: 5px;
            font-size: 14px;
            cursor: pointer;
        }

        button:hover {
            background-color: #315A46;
        }

        @media print {
            body {
                background-color: white;
                margin: 0;
                padding: 0;
            }

            .cv-container {
                width: 100%;
                max-width: none;
                padding: 20px;
                border-radius: 0;
            }

            .print-button {
                display: none;
            }
        }
    </style>
</head>

<body>

    <div class="cv-container">

        <div class="header">

            <h1><%= cv.getName() %></h1>

            <p class="professional-title">
                <%= cv.getProfessionalTitle() %>
            </p>

            <p class="contact">
                Email: <%= cv.getEmail() %> |
                Phone: <%= cv.getPhoneNum() %>
                <br>
                LinkedIn/GitHub: <%= cv.getLinkedln() %>
            </p>

        </div>

        <h2>Profile Summary</h2>
        <p><%= cv.getProfileSummary() %></p>

        <h2>Education</h2>

        <p><b>Degree:</b> <%= cv.getDegree() %></p>
        <p><b>Institution:</b> <%= cv.getInstitution() %></p>
        <p><b>Graduation Year:</b> <%= cv.getGradYear() %></p>
        <p><b>Major:</b> <%= cv.getMajor() %></p>

        <h2>Work Experience</h2>

        <p><b>Job Title:</b> <%= cv.getJobTitle() %></p>
        <p><b>Company:</b> <%= cv.getCompany() %></p>
        <p><b>Duration:</b> <%= cv.getDuration() %></p>

        <p><b>Achievements:</b></p>
        <p><%= cv.getResponsibilities() %></p>

        <h2>Skills</h2>

        <p><b>Technical Skills:</b> <%= cv.getTechnical() %></p>
        <p><b>Soft Skills:</b> <%= cv.getSoft() %></p>

    </div>

    <div class="print-button">
        <button onclick="window.print()">Print CV</button>
    </div>

</body>
</html>
