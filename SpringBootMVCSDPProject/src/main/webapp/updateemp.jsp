<%@page import="com.klef.jfsd.springboot.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"

    pageEncoding="UTF-8"%>
	
<%
Employee emp = (Employee) session.getAttribute("employee");
if(emp==null)
{
	response.sendRedirect("empsessionexpiry.jsp");
	return;
}
%>
<!DOCTYPE html>
<html>
<head>
    <title>Update Employee</title>
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
            margin-bottom: 30px;
        }

        /* Table Styles */
        table {
            width: 100%;
            border-spacing: 10px;
        }

        td {
            padding: 10px 0;
        }

        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
            color: #333;
        }

        input[type="text"], input[type="email"], input[type="number"], input[type="date"], input[type="password"], select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
            box-sizing: border-box;
        }

        /* Gender Radio Buttons */
        .gender-options {
            display: flex;
            gap: 10px;
            align-items: center;
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
    <%@include file="empnavbar.jsp" %>
  
    <h4 align="center" style="color:red">
        <c:out value="${message}"></c:out>
    </h4>

    <h3><u>Update Employee Profile</u></h3>
    <div class="form-container">
        <form method="post" action="updateempprofile">
            <table>
                <tr>
                    <td><label for="eid">Employee ID</label></td>
                    <td><input type="number" id="eid" name="eid" readonly value="<%= emp.getId() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="ename">Enter Name</label></td>
                    <td><input type="text" id="ename" name="ename" value="<%= emp.getName() %>" required/></td>
                </tr>
                <tr>
                    <td><label>Select Gender</label></td>
                    <td>
                        <div class="gender-options">
                            <input type="radio" id="male" name="egender" value="MALE" <%= emp.getGender().equals("MALE") ? "checked" : "" %> required/>
                            <label for="male">Male</label>
                            <input type="radio" id="female" name="egender" value="FEMALE" <%= emp.getGender().equals("FEMALE") ? "checked" : "" %> required/>
                            <label for="female">Female</label>
                            <input type="radio" id="others" name="egender" value="OTHERS" <%= emp.getGender().equals("OTHERS") ? "checked" : "" %> required/>
                            <label for="others">Others</label>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td><label for="edob">Enter Date of Birth</label></td>
                    <td><input type="date" id="edob" name="edob" value="<%= emp.getDateofbirth() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="edept">Select Department</label></td>
                    <td>
                        <select id="edept" name="edept" required>
                            <option value="">---Select---</option>
                            <option value="TECHNICAL" <%= emp.getDepartment().equals("TECHNICAL") ? "selected" : "" %>>Technical</option>
                            <option value="MARKETING" <%= emp.getDepartment().equals("MARKETING") ? "selected" : "" %>>Marketing</option>
                            <option value="SALES" <%= emp.getDepartment().equals("SALES") ? "selected" : "" %>>Sales</option>
                        </select>
                    </td>
                </tr>
                <tr>
                    <td><label for="esalary">Enter Salary</label></td>
                    <td><input type="number" id="esalary" name="esalary" step="0.01" value="<%= emp.getSalary() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="elocation">Enter Location</label></td>
                    <td><input type="text" id="elocation" name="elocation" value="<%= emp.getLocation() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="eemail">Enter Email ID</label></td>
                    <td><input type="email" id="eemail" name="eemail" readonly value="<%= emp.getEmail() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="epwd">Enter Password</label></td>
                    <td><input type="password" id="epwd" name="epwd" value="<%= emp.getPassword() %>" required/></td>
                </tr>
                <tr>
                    <td><label for="econtact">Enter Contact</label></td>
                    <td><input type="number" id="econtact" name="econtact" value="<%= emp.getContact() %>" required/></td>
                </tr>
                <tr>
                    <td colspan="2" class="button-container">
                        <input type="submit" value="Update"/>
                       
                    </td>
                </tr>
            </table>
        </form>
    </div>
</body>
</html>
