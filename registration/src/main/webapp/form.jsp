<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Bootstrap 5 Form Example</title>
  <!-- Bootstrap CSS -->
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <style>
      body {
      background: linear-gradient(to bottom, #1d1d1d, #333333);
      color: white;
    }
  </style>
</head>
</head>
<body>

  <div class="container d-flex justify-content-center align-items-center" style="height: 100vh;">
    <div class="col-md-6">
      <h1 class="text-center mb-4">Registration Form</h1>
     <form action="RegistrationServlet" class="border rounded p-4" method="post">
     	<div class="alert alert-success d-none mt-3" role="alert">
		  Your form was successfully submitted!
		</div>
        <div class="mb-3">
          <label for="name" class="form-label">First Name</label>
          <input type="text" class="form-control" id="first_name" placeholder="Enter your first name" name=u_name>
        </div>
        <div class="mb-3">
          <label for="name" class="form-label">Last Name</label>
          <input type="text" class="form-control" id="last_name" placeholder="Enter your last name" name=u_name>
        </div>
        <div class="mb-3">
          <label for="name" class="form-label">User Name</label>
          <input type="text" class="form-control" id="user_name" placeholder="Enter your user name" name=u_name>
        </div>  
        <div class="mb-3">
          <label for="name" class="form-label">Paassword</label>
          <input type="password" class="form-control" id="password" placeholder="Enter your password" name=u_enrollment>
        </div>
        <div class="mb-4">
          <label for="address" class="form-label">Address</label>
          <input type="text" class="form-control" id="address" placeholder="Enter your address" name=u_mail>
        </div>
        <div class="mb-4">
          <label for="name" class="form-label">contact</label>
          <input type="text" class="form-control" id="name" placeholder="Enter your contact no." name=u_branch>
        </div>
        
		<div class="text-center">
			<button type="submit" class="btn btn-primary btn-lg" value="registration">Submit</button>
        </div>
        
      </form>
    </div>
  </div>

  <!-- Bootstrap JS -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/js/bootstrap.min.js" integrity="sha512-X5Y5DPnmzS0gxyE7OuZAJke0BB8bLgH2jkC6qAZ3yYFhXH56wjIBU35BL6b0uy6WkT8Iwzw/ZTMYRkbT1fAdWg==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
  <script>
  // Get the form element
  var form = document.querySelector('form');

  // Add an event listener to the form for when it is submitted
  form.addEventListener('submit', function(event) {
    // Prevent the default form submission behavior
    event.preventDefault();

    // Show the success alert and fade it in
    var successAlert = document.querySelector('.alert-success');
    successAlert.classList.remove('d-none');
    successAlert.classList.add('show');

    // Hide the success alert after a few seconds
    setTimeout(function() {
      successAlert.classList.remove('show');
      successAlert.classList.add('hide');
      setTimeout(function() {
        successAlert.classList.add('d-none');
        successAlert.classList.remove('hide');
      }, 500); // This delay should match the animation duration in the CSS
    }, 3000); // Change this number to adjust the delay before the alert fades out
  });
</script>

<!-- Add CSS to define the fade animation for the success alert -->
<style>
  .fade {
    opacity: 0;
    transition: opacity 0.3s ease-out;
  }
  .fade.show {
    opacity: 1;
  }
  .fade.hide {
    opacity: 0;
  }
</style>
</body>
</html>

