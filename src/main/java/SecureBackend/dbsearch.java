package SecureBackend;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

//jajaj
public class dbsearch 
{
	public boolean check(String uname, String pass)
	{
		String url="jdbc:mysql://localhost:3306/cc";
		String username ="root";
		String password ="my123sql";
		String query="select * from cclogin where uname=? and pass=?";
		try 
		{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con =DriverManager.getConnection(url,username,password);
			PreparedStatement st= con.prepareStatement(query);
			st.setString(1, uname);
			st.setString(2, pass);
			ResultSet rs =st.executeQuery();
			if(rs.next())
				return true;
		} 
		
		catch (Exception e) 
		{
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return false;
	}
}