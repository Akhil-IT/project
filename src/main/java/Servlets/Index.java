package Servlets;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.util.Date;
import java.util.Random;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class Index
 */
 @WebServlet("/myform")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;

  	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 String list= request.getParameter("list");
		String product =request.getParameter("product");
		String dop= request.getParameter("date");
		String warranty=request.getParameter("radio");
		String bsd = request.getParameter("date1");
		String name= request.getParameter("name");
		String email=request.getParameter("email");
		String phone = request.getParameter("phone");
		String address = request.getParameter("address");
		//String invoice =request.getParameter("invoice");
                                 
		 Random rd = new Random();
	        int num = rd.nextInt(100000);
	        //String snum=request.getParameter("invoice");
	       String snum = String.valueOf(num);
	         request.setAttribute("snum",snum);
	         Date d=new Date();
	         String s= d.toString();
	         request.setAttribute("s",s);
	  		RequestDispatcher dispatcher=null;
		try {

//			Class.forName("com.mysql.cj.jdbc.Driver");//cj
//		    Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/ke","root","user");
			Class.forName("org.postgresql.Driver");
			Connection con = DriverManager.getConnection("jdbc:postgresql://pg-daf798b-akhilmadey321-041e.a.aivencloud.com:11223/ke?ssl=require&user=avnadmin&password=AVNS_jr7XCZYNKlsUGuBxnfv");
		    PreparedStatement pst = con.prepareStatement("insert into customerdetails(service,product,dop,warranty,bsd,name,email,number1,address,invoice,mydate) values(?,?,?,?,?,?,?,?,?,?,?)");
		    //PreparedStatement ps = con.prepareStatement("select * from users where umail=?");
		    pst.setString(1, list);
		    pst.setString(2, product);
		    pst.setString(3, dop);
		    pst.setString(4, warranty);
		    pst.setString(5, bsd);
		    pst.setString(6, name);
		    pst.setString(7, email);
		    pst.setString(8, phone);
		    pst.setString(9, address);
		    //pst.setInt(10, num);
		    pst.setString(10, snum);
		    pst.setString(11, s);


			int rowCount= pst.executeUpdate();
			//ResultSet rs=ps.executeQuery();
			dispatcher = request.getRequestDispatcher("status.jsp");
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
