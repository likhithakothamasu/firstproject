<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Spring Boot MVC SDP Project</title>
    <style>
       

        /* Main content styling */
        .content-container {
            max-width: 500px;
            margin: 100px auto;
            background-color: #fff;
            padding: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        h2 {
            text-align: center;
            color: #4CAF50;
            margin-top: 0;
        }

        ol {
            padding-left: 30px;
            font-size: 16px;
            line-height: 1.8;
        }

        li {
            margin-bottom: 10px;
        }

        /* Highlight important text */
        .highlight {
            color: #4CAF50;
            font-weight: bold;
        }
    </style>
</head>
<body>

    <!-- Navbar inclusion -->
    <%@include file="mainnavbar.jsp" %>

    <!-- Content Section -->
    <div class="content-container">
      
        <ol>
			<center>
            <li><span class="highlight">Controller Layer</span> will access the <span class="highlight">Service Layer</span></li>
            <li><span class="highlight">Service Layer</span> will access the <span class="highlight">Repository Layer</span></li>
            <li><span class="highlight">Repository Layer</span> contains the <span class="highlight">Database Logic</span></li>
			</center>
        </ol>
    </div>

</body>
</html>
