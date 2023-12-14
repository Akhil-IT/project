/**
 * 
 */
 // There are many ways to pick a DOM node; here we get the form itself and the email
// input box, as well as the span element into which we will place the error message.
const form = document.querySelector("form");
const email = document.getElementById("mail");
const emailError = document.querySelector("#mail + span.error");
const Name =document.getElementById("name");
const nameError=document.querySelector("#name+span.error");


email.addEventListener("input", (event) => {
  // Each time the user types something, we check if the
  // form fields are valid.

  if (email.validity.valid) {
    // In case there is an error message visible, if the field
    // is valid, we remove the error message.
    emailError.textContent = ""; // Reset the content of the message
    emailError.className = "error"; // Reset the visual state of the message
  } else {
    // If there is still an error, show the correct error
    showError();
  }
});
Name.addEventListener("input", (event) => {
  // Each time the user types something, we check if the
  // form fields are valid.

  if (Name.validity.valid) {
    // In case there is an error message visible, if the field
    // is valid, we remove the error message.
    nameError.textContent = ""; // Reset the content of the message
    nameError.className = "error"; // Reset the visual state of the message
  } else {
    // If there is still an error, show the correct error
    showError();
  }
});
   
form.addEventListener("submit", (event) => {
  // if the email field is valid, we let the form submit
  if (!email.validity.valid) {
    // If it isn't, we display an appropriate error message
    showError();
    // Then we prevent the form from being sent by canceling the event
    event.preventDefault();
  }
});


function showError() {
  if (email.validity.valueMissing) {
    // If the field is empty,
    // display the following error message.
    emailError.textContent = "You need to enter an email address.";
  } else if (email.validity.typeMismatch) {
    // If the field doesn't contain an email address,
    // display the following error message.
    emailError.textContent = "Enter a valid  email address.";
  } else if (email.validity.tooShort) {
    // If the data is too short,
    // display the following error message.
    emailError.textContent = `Email should be at least ${email.minLength} characters; you entered ${email.value.length}.`;
  }

  // Set the styling appropriately
  emailError.className = "error active";
 if (Name.validity.valueMissing) {
    // If the field is empty,
    // display the following error message.
    nameError.textContent = "You need to enter an name";
  } else if (Name.validity.typeMismatch) {
    // If the field doesn't contain an name address,
    // display the following error message.
   // nameError.textContent = "Entered value needs to be an name";
  } else if (Name.validity.tooShort) {
    // If the data is too short,
    // display the following error message.
    //nameError.textContent = ``;
  }

  // Set the styling appropriately
  nameError.className = "error active";

}
function myclick() {
  if (form.checkValidity()) {
    alert("booked Succesfully!");
          //  Swal.fire({
      //title: '',
      //text: 'Form Submitted.',
      //icon: 'success',
     // confirmButtonText: 'OK',
      
    //});
  }
  else{
	   alert("please enter the details");
	  }
}
