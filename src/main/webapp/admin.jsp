 <%
if(session.getAttribute("name")== null){
	response.sendRedirect("login.jsp");
} 
%> 


<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%
/* String id = request.getParameter("id");
String driver = "com.mysql.jdbc.Driver";
String connectionUrl = "jdbc:mysql://localhost:3306/";  //jdbc:mysql://localhost:3306/ke","root","user
String database = "ke";
String userid = "root";
String password = "user"; */
String id = request.getParameter("id");
String driver = "org.postgresql.Driver";
String connectionUrl ="jdbc:postgresql://pg-daf798b-akhilmadey321-041e.a.aivencloud.com:11223/ke?ssl=require";
String database= "ke";
String userid="avnadmin";
String password="AVNS_jr7XCZYNKlsUGuBxnfv";

try {
Class.forName(driver);
} catch (ClassNotFoundException e) {
e.printStackTrace();
}
Connection connection = null;
Statement statement = null;
ResultSet resultSet = null;
%>
<!DOCTYPE html>
<html>
<head>
  <link href="style.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  
  <title>Customer Requests</title>

</head>
<body>
<section>
<nav class="navbar">
        <div class="navbar-container container">
            <input type="checkbox" name="" id="">
            <div class="hamburger-lines">
                <span class="line line1"></span>
                <span class="line line2"></span>
                <span class="line line3"></span>
            </div>
            <ul class="menu-items">
                <li><a href="index.jsp">Home</a></li>
                <!-- <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Products</a></li>
                <li><a href="contact.jsp">Contact Us</a></li> -->
                <li><a href="logout.jsp">Logout</a>
            </ul>
            <div class=""><img src="https://www.dropbox.com/scl/fi/8soqor21aa9mufga0gvpq/KE-logos_transparent-removebg-preview.png?rlkey=1k78vqsft19a9r2jur8z4gcg7&dl=0.png"/></div>
        </div>
    </nav>

</section>
<!-- <form action="search" method="post">

<input type="text" value=""  
 />
 <input type="submit" value="search"/>
 
 </form>
 -->
 <%--    <input type="text" name="invoice" class="form-control" value="<%= request.getAttribute("Uname ") %>"  
         />
 --%>
 <div>
 

 
 </div>
 <div class="relative overflow-x-auto shadow-md sm:rounded-lg"></div>
 
 <table border="1">
 <thead>
            
<tr>

<th  > id</th>
<th > Service</th>
<th >product</th>
<th> dop</th>
<th> warranty</th>
<th > bsd</th>
<th> name</th>
<th> email</th>
<th> number</th>
<th> address</th>
<th> invoice</th>
<th> date</th>
  
 

   
  
 

                   
                


</tr>
</thead>
<%
try{
connection = DriverManager.getConnection(connectionUrl+database, userid, password);
statement=connection.createStatement();
String sql ="select * from customerdetails";
resultSet = statement.executeQuery(sql);
while(resultSet.next()){
%>
<tr>
 <td><%=resultSet.getInt("id") %></td>
  <td><%=resultSet.getString("service") %></td>
<td><%=resultSet.getString("product") %></td>
<td><%=resultSet.getString("dop") %></td>
<td><%=resultSet.getString("warranty") %></td>
<td><%=resultSet.getString("bsd") %></td>
<td><%=resultSet.getString("name") %></td>
<td><%=resultSet.getString("email") %></td>
<td><%=resultSet.getString("number1") %></td>
<td><%=resultSet.getString("address") %></td>
<td><%=resultSet.getString("invoice") %></td>
<td><%=resultSet.getString("mydate") %></td>

<!-- <td>
<form action="print" method="post">
<input type="submit" value="print"/>
</form>

</td> -->

   <td class="px-6 py-4">
   <a href="#" class="font-medium text-blue-600 dark:text-blue-500 hover:underline">Print</a>
   </td>
            




</tr>
<%
}
connection.close();
} catch (Exception e) {
e.printStackTrace();
}
%>
</table> 

</body>
</html>