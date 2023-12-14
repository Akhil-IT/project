/**
 * 
 */
 var form = document.getElementById('f');

function myclick() {
  if (form.checkValidity()) {
    alert("booked Succesfully!");
  }
  else{
	   alert("please enter the details");
  }
}