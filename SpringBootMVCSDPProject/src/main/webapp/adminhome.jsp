<%@ taglib uri="jakarta.tags.core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Admin Home</title>
</head>
<body>
<%@include file="adminnavbar.jsp" %>
<br>
<center>
Total Employees =<c:out value="${empcount}"></c:out>
</center>
</body>
</html>