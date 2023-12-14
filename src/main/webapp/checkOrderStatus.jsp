<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>KUMAR ELECTRONICS</title>
  <link href="style.css" rel="stylesheet">
   <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
</head>
<body>
<section class="navigation">
    <div class="nav-container">
      <div class="brand">
        <!-- <a href="#!"><img src="../assets/img/KE-logos_transparent-removebg-preview.png" height=70px; width="70px"/></a> -->
      </div>
      <nav class="">
        <div class="nav-mobile"><a id="nav-toggle" href="#!"><span></span></a></div>
        <ul class="nav-list">
          <li>
            <a href="index.jsp">Home</a>
          </li>
          <li>
            <a href="#!">About</a>
          </li>
          <li>
            <a href="#!">Services</a>
            <!-- <ul class="nav-dropdown">
              <li>
                <a href="#!">TV INSTALLATION</a>
              </li>
              <li>
                <a href="#!">TV REPAIR</a>
              </li>
              <li>
                <a href="#!">ELECTRICAL WORK</a>
              </li>
            </ul> -->
          </li>
          <!-- <li>
            <a href="#!">Pricing</a>
          </li> -->
         
          <li>
            <a href="#footer">Contact</a>
          </li>
        </ul>
      </nav>
    </div>
  </section>
<form action="order" method="post">
<label class="label">Invoice:</label>
               <input type="text" name="order" class="form-control col-md-2"  
         required/>
         <input type="submit" class="btn btn-secondary" value="submit"  >
         <input type="text" class="form-control col-md-2" value="" />
</form>
<!-- ======= Footer ======= -->
 <footer id="footer">
    <div class="footer-top">
      <div class="container">
        <div class="row">

          <div class="col-lg-3 col-md-6">
            <div class="footer-info">
              <h3>KUMAR ELECTRONICS<span></span></h3>
              <p>
                REDBRIDGE <br>
                AP 533201, INDIA<br><br>
                <strong>Phone:</strong> +919618385539<br>
                <strong>Email:</strong> info@kumarelectronics.com<br>
              </p>
              <!-- <div class="social-links mt-3">
                <a href="#" class="twitter"><i class="bx bxl-twitter"></i></a>
                <a href="#" class="facebook"><i class="bx bxl-facebook"></i></a>
                <a href="#" class="instagram"><i class="bx bxl-instagram"></i></a>
                <a href="#" class="google-plus"><i class="bx bxl-skype"></i></a>
                <a href="#" class="linkedin"><i class="bx bxl-linkedin"></i></a>
              </div>
 -->            </div>
          </div>

          <div class="col-lg-2 col-md-6 footer-links">
            <h4>Useful Links</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="index.jsp">Home</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="about.jsp">About us</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.jsp">Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Terms of service</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="#">Privacy policy</a></li>
            </ul>
          </div>

          <div class="col-lg-3 col-md-6 footer-links">
            <h4>Our Services</h4>
            <ul>
              <li><i class="bx bx-chevron-right"></i> <a href="services.jsp">TV INSTALLATION</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.jsp">HOME REPAIR SERVICE</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.jsp">HOME THEATRE INSTALLATION</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.jsp">ELECTRICAL WORKS</a></li>
<!--               <li><i class="bx bx-chevron-right"></i> <a href="services.jsp">Network Solutions And Services</a></li>
              <li><i class="bx bx-chevron-right"></i> <a href="services.jsp">SEO</a></li>
 -->              
            </ul>
          </div>
                          
                     

          </div>

        </div>
      </div>
    
       
    <div class="container">
    
      <div class="copyright">
      
        &copy; Copyright <strong><span>KUMAR ELECTRONICS</span></strong>. All Rights Reserved 2023
                   <p>Design and Developed By:<a href="http://localhost:8080/Incloud/"> INCLOUD </a></p>
      </div>
     
      </div>
     
    
  </footer><!-- End Footer -->
</body>
</html>