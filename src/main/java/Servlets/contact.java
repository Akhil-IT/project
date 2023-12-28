package Servlets;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

/**
 * Servlet implementation class contact
 */
@WebServlet("/submit")
public class contact extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public contact() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
  		RequestDispatcher dispatcher=null;

		String name = request.getParameter("sender");
		String email = request.getParameter("email");
		String message=request.getParameter("message");
		try {

		Class.forName("com.mysql.cj.jdbc.Driver");//cj
//		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ke","root","user");
			Connection con = DriverManager.getConnection("jdbc:mysql://avnadmin:AVNS_aNqOdsa4ph8c9pWan8D@spring-akhilmadey321-041e.a.aivencloud.com:11223/ke?ssl-mode=REQUIRED");
		    PreparedStatement pst = con.prepareStatement("insert into form(uname,uemail,umessage) values(?,?,?)");
		    //PreparedStatement ps = con.prepareStatement("select * from users where umail=?");
		    pst.setString(1, name);
		    pst.setString(2, email);
		    pst.setString(3, message);


			int rowCount= pst.executeUpdate();
			//ResultSet rs=ps.executeQuery();
			dispatcher = request.getRequestDispatcher("index.jsp");
			if(rowCount >=0) {
				request.setAttribute("status", "success");
			}else {
				request.setAttribute("status", "failed");
			}

			dispatcher.forward(request, response);

		}
			catch(Exception e) {
				e.printStackTrace();


			}
		
	}

}
