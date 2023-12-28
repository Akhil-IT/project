<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%--     <%@page import="java.util.Random;"%> --%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="utf-8">
  <meta content="width=device-width, initial-scale=1.0" name="viewport">
      <script src="jquery-3.6.4.min.js"></script>
      <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
      <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
      <script src="./script.js"></script>
      <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.5.0/font/bootstrap-icons.css">
    <title>KUMAR ELECTRONICS</title>
  <link href="style.css" rel="stylesheet">
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.0.1/sweetalert.min.js" integrity="sha512-5gbLeWHw/dOm0kE2gyYaZflqj9B3XBAkoikJl5iYf/a1HMP62y1WcBEbmJVYxpM2Fg9NwcDe7rTeibl2kQan0w==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
    <link rel='stylesheet' href='https://cdn.jsdelivr.net/npm/sweetalert2@7.12.15/dist/sweetalert2.min.css'></link>  
<style type="text/css">
.error {
  width: 100%;
  padding: 0;

  font-size: 80%;
  color: white;
  background-color: #900;
  border-radius: 0 0 5px 5px;

  box-sizing: border-box;
}

.error.active {
  padding: 0.3em;
}

</style>
</head>
<body>
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
                <li><a href="#">About</a></li>
                <li><a href="#">Services</a></li>
                <li><a href="#">Products</a></li>
                <li><a href="contact.jsp">Contact Us</a></li>
            </ul>
            <h1 class="logo ">KE
            
            </h1>
        </div>
    </nav>


  <header id="header" class="header">
    
  </header>
 
  
  <article>
    BOOK SERVICE ONLINE
<h4> FOR HOME SERVICES:</h4>
<h6><i class="bi bi-arrow-right"></i> TV'S AND HOME THEATRES</h6>
  </article>
    <div class="container" data-aos="fade-up">

      <div class="row g-0">

        <div class="col-lg-5 quote-bg" style="background-image: url(assets/img/quote-bg.jpg);"></div>

        <div class="col-lg-7">
        <input type="hidden" id="status" value=<%=request.getAttribute("status") %>/>
        
          <form action="myform" method="post" class=""  >
            <h2>Product Information</h2>
            <p> Fill the details </p>
            <div class="row gy-4">

              <div class="col-md-12 dropdown">
<!--               <label class="label">Invoice:</label>
 -->      <%--          <input type="text" name="invoice" class="form-control" value="<%Random re = new Random();
      	                int generate = re.nextInt(10000);
      	             String token = String.valueOf(generate);
      	               request.setAttribute("token", token);
 %>"
                      
         readonly/> --%>
              
                <label class="label" >Service Type:</label>
                <!-- <input type="text" name="service" class="form-control  dropdown-toggle" data-toggle="dropdown" placeholder="Service Type" required>
                <div class="dropdown-menu">
                  <a class="dropdown-item" href="#">TV Installation</a>
                  <a class="dropdown-item" href="#">Home Repait Service</a>
                  <a class="dropdown-item" href="#">Home Theatre Installation</a>
                </div> -->
                <select class="form-control" id="mainDropdown" name="list">
                  
				<option value="tv">TV Services</option>
				 <option value="home">Home Theater Installation</option>
				 <option value="repair">Home Repair Service</option>
                 </select>
              </div>

              <div class="col-md-12">
                <label class="label" >Product Type:</label>
<!--                 <input type="text" name="product" class="form-control" placeholder="Product Type" required>
 -->             
                     <select class="form-control" id="subDropdown" name="product">
                  
                  <!-- <option>LCD TV</option>
                  <option>LED TV</option>
                  <option>LED TV(ANDROID VERSION)</option>
                  <option>HOME THEATERS</option>
 -->             
    </select>
                     
                     </div>

              <div class="col-md-12">
                <label class="label" >Date of Purchase:</label>
                <input type="date" name="date" class="form-control" placeholder="Date" required>
              </div>
              <label class="label">Is is it under warranty:</label>
              <div class="form-check col-md-12">
                <input type="radio" class="form-check-input" id="radio1" name="warranty" value="">
                <label class="form-check-label" for="radio1">Yes</label>
                
              </div>
              <div class="form-check col-md-12">
                <input type="radio" class="form-check-input" id="radio1" name="warranty" value="" >
                <label class="form-check-label" for="radio1">No</label>
              </div>
              <div class="col-md-12">
                <label class="label" >Book Service Date:</label>
                <input type="date" name="date1" class="form-control" placeholder="Date" required>
              </div>
              <div class="col-lg-12">
                <h4>Your Details</h4>
              </div>

              <div class="col-md-12">
                <label class="label" >Full Name:</label>
                <input type="text" name="name" id="name" class="form-control" placeholder="Name" required>
                 <span class="error" aria-live="polite"></span>
              </div>

              <div class="col-md-12 ">
                <label class="label" >Email:</label>
<!--                  <span>Please enter an email address:</span>
 -->                 <input type="email"id="mail" class="form-control" name="email" placeholder="Email" required>
                 <span class="error" aria-live="polite"></span>
              </div>

              <div class="col-md-12">
                <label class="label" >Number:</label>
                <input type="digit" class="form-control" name="phone" placeholder="Phone" required>
              </div>
            <div class="col-md-12">
                <label class="label" >Address:</label>
<!--                 <input type="text" class="form-control "id="autocomplete-container" name="address" placeholder="Address" required/>
 -->			<select class="form-control" id="mainDropdown" name="address" required>
                  
				<option >Amalapuram</option>
				 <option >Amalapuram Rural</option>
				 <option >Mummidavaram</option>
				 <option >Allavaram Mandal</option>
				  <option >Razole</option>
				 
                 </select>
 
              </div> 

              <div class="col-md-12 text-center">
                <button type="submit" class="btn btn-primary" onclick="myclick()">Book</button>
              </div>

            </div>
          </form>
        </div>

      </div>

    </div>
  
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
                <strong>Phone:</strong><a type="phone" href="tel:+919618385539"> +919618385539</a><br>
                <strong>Email:</strong><a href="mailto:info@kumarelectronics.com" >info@kumarelectronics.com<br></a>
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
              <li><i class="bx bx-chevron-right"></i> <a href="#">Home</a></li>
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
                   <p>Design and Developed By:<a> INCLOUD </a></p>
      </div>
     
      </div>
     
    
  </footer><!-- End Footer -->
<!-- <script type="text/javascript">
/* var status=document.getElementById("status").value;
if(status == success){
	swal ("","Service Booked","")
}
 */
 /* function myclick(){
	 if(status== success){
	alert("service booked successfully");
	 }
	 else{
		 alert("fill the form");
	 }
}
 */
 /* var form = document.getElementById('f');

 function myclick() {
   if (form.checkValidity()) {
     alert("booked Succesfully!");
   }
   else{
	   alert("please enter the details");
   }
 }
 */
  </script>
 -->
 
 <script type="text/javascript" src="main.js"></script>
 
  <script>
    // Sample data
    const optionsData = {
      tv: ["TV", "LCD", "LED", "LED(with Android)", "Smart Tv"],
      home: ["Home Theatre repair", "Amplifier"],
	  repair:["house wiring","inverter service"]
	  
    };

    // Get references to the dropdowns
    const mainDropdown = document.getElementById('mainDropdown');
    const subDropdown = document.getElementById('subDropdown');

    // Event listener for main dropdown change
    mainDropdown.addEventListener('change', updateSubDropdown);

    // Initial population of sub dropdown
    updateSubDropdown();

    // Function to update sub dropdown based on the selected value of main dropdown
    function updateSubDropdown() {
      const selectedCategory = mainDropdown.value;
      const options = optionsData[selectedCategory];

      // Clear existing options
      subDropdown.innerHTML = '';

      // Populate sub dropdown with new options
      if (options) {
        options.forEach(option => {
          const optionElement = document.createElement('option');
          optionElement.value = option;
          optionElement.textContent = option;
          subDropdown.appendChild(optionElement);
        });
      }
    }
    /* 
	The addressAutocomplete takes as parameters:
  - a container element (div)
  - callback to notify about address selection
  - geocoder options:
  	 - placeholder - placeholder text for an input element
     - type - location type
*/


  </script>


</body>

</html>