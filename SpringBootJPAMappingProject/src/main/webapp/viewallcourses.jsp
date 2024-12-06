<%@ page contentType="text/html; charset=ISO-8859-1" isELIgnored="false"%> 
<%@ taglib uri="jakarta.tags.core" prefix="c"%> 
 
<html> 

<head> 
<title>JPA Mapping</title>
<style>

body
{
	background-color: lightgrey;
}
.button {
  background-color: black;
  border: none;
  color: white;
  padding: 15px 32px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
}

input[type=text],input[type=password],input[type=number],input[type=email],
select,input[type=date],input[type=datetime-local]
{
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

label 
{
  padding: 12px 12px 12px 0;
  display: inline-block;
  font-weight: bold;
}
</style>
</head> 

<body>

<h2 align="center">SpringBoot JPA Relational Mapping</h2>

<a href="/">Home</a>&nbsp;&nbsp;
<a href="viewallcourses">View Courses</a>&nbsp;&nbsp;
<a href="viewallfaculty">View Faculty</a>&nbsp;&nbsp;
<a href="fcoursemapping">Faculty Course Mapping</a>&nbsp;&nbsp;
<a href="viewfcoursemapping">View Faculty Course Mapping</a>&nbsp;&nbsp;

<br><br><br>

<table align=center  border=2 style="text-align: center">
  
<tr style="font-weight: bold;"> 
<td>COURSE ID</td> 
<td>COURSE CODE</td> 
<td>COURSE TITLE</td> 
<td>LTPS</td> 
<td>CREDITS</td> 
</tr> 
 
<c:forEach items="${coursedata}" var="course"> 

<tr> 

<td>${course.courseid}</td> 
<td><c:out value="${course.coursecode}" /></td> 
<td><c:out value="${course.coursetitle}" /></td> 
<td><c:out value="${course.ltps}" /></td> 
<td><c:out value="${course.credits}" /></td> 

 
</tr> 

</c:forEach> 
 
</table> 

</body> 