<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Secret Room</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
	
		if(session.getAttribute("uname")==null)
		{
			response.sendRedirect("Login.jsp");
		}
	%>
	You have now entered into our secret room<br><br>
	The secret for this site can be found in this video<br><br>
	<iframe> width="600" height="375" src="https://www.youtube.com/embed/cYc3FjhMMzI?list=PLsyeobzWxl7pUPF2xjjJiG4BKC9x_GY46" title="YouTube video player" </iframe>
	<br><br>
	<form action="Logout" method="post">
		<input type="submit" value="Log Out">	
	</form>

</body>
</html>