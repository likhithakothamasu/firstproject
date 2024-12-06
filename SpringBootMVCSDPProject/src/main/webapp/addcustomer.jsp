<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<html>
<head>
    <title>Add Customer</title>
    <link type="text/css" rel="stylesheet" href="css/style.css">
    <style>
        /* Global Styles */
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f2f5;
        }

        /* Form Container */
        .form-container {
            width: 500px;
            margin: 50px auto;
            background-color: #fff;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
        }

        /* Form Header */
        h3 {
            text-align: center;
            color: #333;
            margin-bottom: 20px;
        }

        /* Table Styles */
        table {
            width: 100%;
            border-spacing: 10px;
        }

        td {
            padding: 10px 0;
            vertical-align: top; /* Aligns the content to the top */
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        /* Button Container */
        .button-container {
            text-align: center;
        }

        input[type="submit"], input[type="reset"] {
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 16px;
            background-color: #4CAF50;
            color: white;
            transition: background-color 0.3s;
        }

        input[type="reset"] {
            background-color: #f44336;
        }

        input[type="submit"]:hover {
            background-color: #45a049;
        }

        input[type="reset"]:hover {
            background-color: #e57373;
        }

        /* Responsive Design */
        @media (max-width: 600px) {
            .form-container {
                width: 90%;
                padding: 20px;
            }
        }
    </style>
</head>

<body>
    <%@include file="adminnavbar.jsp" %>
  
    <h3><u>Add Customer</u></h3>
    <div class="form-container">
        <form:form modelAttribute="customer" method="post" action="insertcustomer">
            <table>
                <tr>
                    <td><label>Name</label></td>
                    <td><form:input path="name" required="required" /></td>
                </tr>
                <tr>
                    <td><label>Gender</label></td>
                    <td>
                        <form:radiobutton path="gender" value="Male" required="required"/> Male
                        <form:radiobutton path="gender" value="Female" required="required"/> Female
                    </td>
                </tr>
                <tr>
                    <td><label>Email ID</label></td>
                    <td><form:input path="email" required="required" /></td>
                </tr>
                <tr>
                    <td><label>Password</label></td>
                    <td><form:password path="password" required="required" /></td>
                </tr>
                <tr>
                    <td><label>Address</label></td>
                    <td><form:textarea path="address" required="required" /></td>
                </tr>
                <tr>
                    <td><label>Contact No</label></td>
                    <td><form:input path="contactno" required="required" /></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Add" />
                    </td>
                </tr>
            </table>
        </form:form>
    </div>
</body>
</html>
