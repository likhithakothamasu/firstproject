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
<meta charset="UTF-8">
<title>Employee Home</title>
</head>
<body>
<%@include file="empnavbar.jsp" %>

<h3 style="text-align: center; text-transform: uppercase; font-size: 24px; font-family: Arial, sans-serif;">
  <u>My Profile</u>
</h3>

<!-- Card Container -->
<div style="max-width: 500px; margin: 30px auto; background-color: #fff; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1); overflow: hidden; font-family: Arial, sans-serif;">

    <!-- Card Header -->
    <div style="background-color: #4CAF50; color: white; padding: 20px; text-align: center;">
        <h2 style="margin: 0; font-size: 22px;">My Details</h2>
    </div>

    <!-- Card Body -->
    <div style="padding: 20px; color: #333;">
        <table style="width: 100%; border-spacing: 10px; font-size: 16px;">
            <tr>
                <td><b>ID</b></td>
                <td style="color: #4CAF50;"><%= emp.getId() %></td>
            </tr>
            <tr>
                <td><b>NAME</b></td>
                <td style="color: #4CAF50;"><%= emp.getName() %></td>
            </tr>
            <tr>
                <td><b>GENDER</b></td>
                <td style="color: #4CAF50;"><%= emp.getGender() %></td>
            </tr>
            <tr>
                <td><b>DATE OF BIRTH</b></td>
                <td style="color: #4CAF50;"><%= emp.getDateofbirth() %></td>
            </tr>
            <tr>
                <td><b>DEPARTMENT</b></td>
                <td style="color: #4CAF50;"><%= emp.getDepartment() %></td>
            </tr>
            <tr>
                <td><b>SALARY</b></td>
                <td style="color: #4CAF50;"><%= emp.getSalary() %></td>
            </tr>
            <tr>
                <td><b>LOCATION</b></td>
                <td style="color: #4CAF50;"><%= emp.getLocation() %></td>
            </tr>
            <tr>
                <td><b>EMAIL</b></td>
                <td style="color: #4CAF50;"><%= emp.getEmail() %></td>
            </tr>
            <tr>
                <td><b>CONTACT</b></td>
                <td style="color: #4CAF50;"><%= emp.getContact() %></td>
            </tr>
            <tr>
                <td><b>STATUS</b></td>
                <td style="color: #4CAF50;"><%= emp.getStatus() %></td>
            </tr>
        </table>
    </div>
</div>

</body>
</html>
