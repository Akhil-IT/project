package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

/**
 * Servlet implementation class login
 */
@WebServlet("/myadmin")
public class login extends HttpServlet {
	private static final long serialVersionUID = 1L;


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	 protected void doPost(HttpServletRequest request, HttpServletResponse response)
				throws ServletException, IOException {
	    	String uemail=request.getParameter("email");
			String upassword= request.getParameter("password");
			RequestDispatcher dispatcher=null;
			HttpSession session =request.getSession();
			try {

				Class.forName("com.mysql.cj.jdbc.Driver");//cj
				/*
				 * Connection con =
				 * DriverManager.getConnection("jdbc:mysql://localhost:1123/ke","root","user");
				 */	
				Connection con = DriverManager.getConnection("jdbc:mysql://avnadmin:AVNS_aNqOdsa4ph8c9pWan8D@spring-akhilmadey321-041e.a.aivencloud.com:11223/ke?ssl-mode=REQUIRED");
				PreparedStatement pst = con.prepareStatement("select * from users where uemail=? and upassword=?");
			    //pst.setString(1, uname);
			    pst.setString(1, uemail);
			    pst.setString(2, upassword);


				//int rowCount= pst.executeUpdate();
				ResultSet rs =pst.executeQuery();
				//dispatcher = request.getRequestDispatcher("login.jsp");
				if(rs.next() ) {
					session.setAttribute("name", rs.getString("uemail"));
					dispatcher = request.getRequestDispatcher("admin.jsp");
					}else {

					request.setAttribute("status", "failed");
					dispatcher =request.getRequestDispatcher("login.jsp");
				}
				dispatcher.forward(request, response);

			}
				catch(Exception e) {
					e.printStackTrace();


				}//we have write finally here
		}


}
