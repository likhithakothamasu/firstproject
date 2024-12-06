<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login Fail</title>
    <style>
        /* Basic Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Center the content on the page */
        body {
            font-family: Arial, sans-serif;
            display: flex;
            flex-direction: column;
            align-items: center;
            justify-content: center;
            height: 100vh; /* Full viewport height */
            background-color: #f8f9fa; /* Light background color */
            color: #333; /* Dark text color */
            text-align: center; /* Center text alignment */
        }

        /* Style for the message */
        .message {
            font-size: 1.5em; /* Larger font size */
            color: #dc3545; /* Bootstrap's danger color */
            margin-bottom: 20px; /* Space below the message */
        }

        /* Style for the link */
        a {
            display: inline-block; /* Treat link as block for padding */
            padding: 10px 20px; /* Padding for the link */
            color: #fff; /* White text color */
            background-color: #007bff; /* Bootstrap's primary color */
            text-decoration: none; /* No underline */
            font-weight: bold; /* Bold text */
            border-radius: 5px; /* Rounded corners */
            transition: background-color 0.3s ease; /* Transition for hover effect */
        }

        /* Change background color on hover */
        a:hover {
            background-color: #0056b3; /* Darker blue on hover */
        }
    </style>
</head>
<body>
    <div class="message">
        <c:out value="${message}"></c:out>
    </div>
    <br><br>
    <a href="adminlogin">Try Again</a>
</body>
</html>