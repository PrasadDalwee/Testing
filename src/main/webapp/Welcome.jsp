<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		if(session.getAttribute("uname")==null)
		{
			response.sendRedirect("Login.jsp");
		}
	%>
	Welcome Shark: ${uname}<br><br>
	
	You can filter creators here<br>
	
	<form action="Filter" method="POST">
		Enter Subscriber Count : <input type="text" name="count"><br>
		<input type="submit" value="Filter">	
	</form>
	
	<a href="SecretRoom.jsp">Move to Secret Room -></a><br><br>
	<form action="Logout" method="post">
		<input type="submit" value="Log Out">	
	</form>
</body>
</html>