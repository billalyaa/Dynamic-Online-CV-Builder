
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Online CV Builder</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #AEBFB3;
            margin: 0;
            padding: 20px;
            color: #263D32;
        }

        .container {
            background-color: white;
            max-width: 680px;
            width: 100%;
            margin: auto;
            padding: 25px;
            border-radius: 10px;
            box-sizing: border-box;
        }

        h1 {
            text-align: center;
            color: #263D32;
            font-size: 26px;
        }

        .subtitle {
            text-align: center;
            color: #526B5C;
            margin-bottom: 15px;
        }

        .required-note {
            color: #526B5C;
            font-size: 12px;
            margin-bottom: 15px;
        }

        .required {
            color: #B54747;
        }

        h3 {
            background-color: #DCE8DF;
            padding: 9px;
            border-left: 4px solid #3F7259;
            border-radius: 5px;
            color: #263D32;
            margin-top: 24px;
            font-size: 17px;
        }

        .form-group {
            margin-bottom: 14px;
        }

        label {
            display: block;
            margin-bottom: 6px;
            font-size: 13px;
            color: #263D32;
        }

        input, textarea {
            width: 100%;
            padding: 8px;
            border: 1px solid #B8CCBE;
            border-radius: 5px;
            box-sizing: border-box;
            font-family: Arial, sans-serif;
            font-size: 13px;
            color: #263D32;
        }

        input::placeholder, textarea::placeholder {
            color: #718579;
        }

        textarea {
            height: 65px;
            resize: vertical;
        }

        input:focus, textarea:focus {
            outline: none;
            border-color: #3F7259;
        }

        .submit-button {
            width: 100%;
            padding: 11px;
            background-color: #3F7259;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 15px;
            cursor: pointer;
            margin-top: 15px;
        }

        .submit-button:hover {
            background-color: #315A46;
        }

        .sample-link {
            display: block;
            text-align: center;
            margin-top: 18px;
            color: #3F7259;
            text-decoration: none;
            font-size: 14px;
        }

        .sample-link:hover {
            text-decoration: underline;
        }
    </style>
</head>

<body>

    <div class="container">

        <h1>Online CV Builder</h1>
        <p class="subtitle">Enter your information to create your CV</p>

        <p class="required-note">
            <span class="required">*</span> Required fields
        </p>

        <form action="CVServlet" method="post">

            <h3>Personal Information</h3>

            <div class="form-group">
                <label>Full Name: <span class="required">*</span></label>
                <input type="text" name="name" required>
            </div>

            <div class="form-group">
                <label>Professional Title:</label>
                <input type="text" name="professionalTitle">
            </div>

            <div class="form-group">
                <label>Email: <span class="required">*</span></label>
                <input type="email" name="email" required>
            </div>

            <div class="form-group">
                <label>Phone Number:</label>
                <input type="text" name="phoneNum">
            </div>

            <div class="form-group">
                <label>LinkedIn/GitHub URL:</label>
                <input type="text" name="linkedin">
            </div>

            <div class="form-group">
                <label>Profile Summary:</label>
                <textarea name="profileSummary"></textarea>
            </div>

            <h3>Education</h3>

            <div class="form-group">
                <label>Highest Degree: <span class="required">*</span></label>
                <input type="text" name="degree" required>
            </div>

            <div class="form-group">
                <label>Institution Name:</label>
                <input type="text" name="institution">
            </div>

            <div class="form-group">
                <label>Year of Graduation:</label>
                <input type="text" name="gradYear">
            </div>

            <div class="form-group">
                <label>Major/Field:</label>
                <input type="text" name="major">
            </div>

            <h3>Work Experience</h3>

            <div class="form-group">
                <label>Most Recent Job Title:</label>
                <input type="text" name="jobTitle">
            </div>

            <div class="form-group">
                <label>Company Name:</label>
                <input type="text" name="company">
            </div>

            <div class="form-group">
                <label>Duration:</label>
                <input type="text" name="duration">
            </div>

            <div class="form-group">
                <label>Achievements:</label>
                <textarea name="responsibilities"></textarea>
            </div>

            <h3>Skills</h3>

            <p class="required-note">
                <span class="required">*</span>
                Please fill in at least one of the following fields.
            </p>

            <div class="form-group">
                <label>Technical Skills:</label>
                <textarea name="technical"
                          placeholder="e.g. Java, HTML, CSS, MySQL"></textarea>
            </div>

            <div class="form-group">
                <label>Soft Skills:</label>
                <textarea name="soft"
                          placeholder="e.g. Communication, Teamwork"></textarea>
            </div>

            <input type="submit" value="Generate CV" class="submit-button">

        </form>

        <a href="CVServlet?action=sample" class="sample-link">
            Preview Sample CV
        </a>

    </div>

</body>
</html>
