<%@ taglib uri="jakarta.tags.core" prefix="c" %>
<html>
<head>
    <title>Employee Login</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f0f0f0;
            margin: 0;
            padding: 0;
        }

        h3 {
            text-align: center;
            color: #333;
            margin-top: 20px;
            text-decoration: underline;
        }

        h4 {
            text-align: center;
            margin-top: 10px;
            font-size: 16px;
        }

        .form-container {
            width: 40%;
            margin: 40px auto;
            background-color: #fff;
            padding: 20px;
            box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
        }

        table {
            width: 100%;
        }

        td {
            padding: 10px;
        }

        label {
            font-weight: bold;
            color: #333;
        }

        input[type="email"],
        input[type="password"] {
            width: 100%;
            padding: 8px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 14px;
        }

        .button-container {
            text-align: center;
            padding-top: 10px;
        }

        input[type="submit"],
        input[type="reset"] {
            background-color: #4CAF50;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-right: 10px;
        }

        input[type="reset"] {
            background-color: #f44336;
        }

        input[type="submit"]:hover,
        input[type="reset"]:hover {
            opacity: 0.9;
        }

        /* Blink animation */
        @keyframes blink {
            0% { opacity: 1; }
            50% { opacity: 0; }
            100% { opacity: 1; }
        }

        .blink {
            animation: blink 1s linear infinite;
            color: red;
        }

        /* Responsive styling */
        @media screen and (max-width: 768px) {
            .form-container {
                width: 90%;
                margin: 20px auto;
            }

            h3 {
                font-size: 20px;
            }

            td {
                padding: 5px;
            }

            input[type="submit"],
            input[type="reset"] {
                padding: 8px 16px;
            }
        }
    </style>
</head>
<body>
    <%@include file="mainnavbar.jsp" %>
    <h3>Employee Login</h3>

    <h4 class="<c:if test='${not empty message}'>blink</c:if>">
        <c:out value="${message}"></c:out>
    </h4>

    <div class="form-container">
        <form method="post" action="checkemployeelogin">
            <table>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Login"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
