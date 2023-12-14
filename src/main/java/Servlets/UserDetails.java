package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class UserDetails
 */
public class UserDetails extends HttpServlet {
	private static final long serialVersionUID = 1L;

   	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//doGet(request, response);
   		String Uname = (String) request.getSession().getAttribute("Uname");
		request.getSession().setAttribute("Uname", Uname);
		RequestDispatcher dispatcher=null;

		try {

			Class.forName("com.mysql.cj.jdbc.Driver");//cj
		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eclipse","root","user");
		    PreparedStatement pst = con.prepareStatement("select * from users where Uname=?s");
		    //pst.setString(1, uname);
		      		    pst.setString(1, Uname);

			//int rowCount= pst.executeUpdate();
			ResultSet rs =pst.executeQuery();
			//dispatcher = request.getRequestDispatcher("login.jsp");
					}
			catch(Exception e) {
				e.printStackTrace();


			}//we have write finally here

	}

}
