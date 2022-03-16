package SecureBackend;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class Filter
 */
@WebServlet("/Filter")
public class Filter extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		String count=(request.getParameter("count"));
		HttpSession session= request.getSession();
		session.setAttribute("count",count);
		//System.out.println("kk");
		response.sendRedirect("Subscribers.jsp");
		//System.out.println("jj");
		return;
	}

}
