package SecureBackend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Verify
 */
@WebServlet("/Verify")
public class Verify extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String uname=request.getParameter("uname");
		String pass=request.getParameter("password");
		
		dbsearch dao = new dbsearch();
		
		if(dao.check(uname, pass))
		{
			HttpSession session= request.getSession();
			session.setAttribute("uname",uname);
			//session.setAttribute("pass", pass);   //not required because without login user name will be null
			
			response.sendRedirect("Welcome.jsp"); 
		}
		
		else
		{
			response.sendRedirect("Login.jsp");
		}
	}
}

