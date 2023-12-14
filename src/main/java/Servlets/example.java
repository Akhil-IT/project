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

/**
 * Servlet implementation class example
 */
@WebServlet("/order")
public class example extends HttpServlet {
	private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String order = request.getParameter("order");
		RequestDispatcher dispatcher=null;

		try {

					Class.forName("com.mysql.cj.jdbc.Driver");//cj
				    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/eclipse","root","user");
				    PreparedStatement pst = con.prepareStatement("select * from customerdetails where invoice=?");
				    //pst.setString(1, uname);
				      		    pst.setString(1, order);

					//int rowCount= pst.executeUpdate();
					ResultSet rs =pst.executeQuery();

						if(rs.next()) {
					dispatcher = request.getRequestDispatcher("index.jsp");
						}
		}
					catch(Exception e) {
						e.printStackTrace();


					}
	}

	}

