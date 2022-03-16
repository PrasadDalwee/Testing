<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import= "java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Subscriber Filtering</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate");
		
		if(session.getAttribute("uname")==null)
		{
			response.sendRedirect("Login.jsp");
		}
	%>
	<% 
		String url="jdbc:mysql://localhost:3306/cc";
		String username ="root";
		String password ="my123sql";
		String query="select * from subs where subscribers>=?;";
		String count=(String) session.getAttribute("count");
		//String count="30";
		try 
		{
			Class.forName("com.mysql.cj.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			
			PreparedStatement st= con.prepareStatement(query);
			st.setString(1, count);
			ResultSet rs =st.executeQuery();
			
			if(!rs.next())
			{	out.println("No creator has that many subcribers as of now.\n");}
			
			else
			{%>
				<Table border=1>
				<tr> <TH>ID</TH> <TH>Subscribers</TH></tr>
				<% while(rs.next())
					{%>
					<tr> 
						<td> <%=rs.getString(1) %></td> <td><%=rs.getString(2) %> </td>
					</tr>
					<%} %>
				</Table>
			
		<%} }
		
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	%>
	

</body>
</html>