<%-- 
    Document   : editform
    Created on : 10 Mar, 2019, 9:38:44 AM
    Author     : dell
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
        <title>Edit</title>
  
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>

    </head>
    <body>
     <%@page import="com.S_Mart.userdao1.UserDao1,com.S_Mart.user.User"%>  
                  <a href="editform.jsp?id=${u}">Edit</a> 

<%  
String id=request.getParameter("id");  
User u=UserDao1.getRecordById(Integer.parseInt(id));  
%>  
<div class="mx-auto"> 
    <h1>Edit Form</h1></div>

<div class="container" >
  <div class="mx-auto w-50">
    
  <div class="card">
    <div class="card-body">
      
  <h1 class="display-4 text-center " style="font-size-adjust: 50px;">S'MART</h1>

  <p class="text-center">Create Account</p>

  
  <form action="edituser.jsp" method="post" class="needs-validation" novalidate>
      <input type="hidden" name="id" value="<%=u.getId() %>"/>  

    <div class="form-group">
      <label for="name">Your Name:</label>
      <input type="text" class="form-control" id="name" placeholder="Enter your name" name="name" value="<%= u.getName()%>" required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">!Enter your name.</div>
    </div>
    <div class="form-group">
      <label for="number">Mobile Number:</label>
      <input type="text" class="form-control" id="number" placeholder="Enter 10 digit mobile number"  name="number" value="<%= u.getNumber()%>"  required >
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">!Enter 10 digit mobile number</div>
      
    </div>

    <div class="form-group ">
      <label for="email">Email:</label>
      <div class="input-group ">
       
          
          <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" value="<%=u.getEmail()%>" required >
       <div class="input-group-append ">
        <span class="input-group-text " >@example.com

        </span></div>

      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Enter correct email</div>
    
</div>
    </div>

    <div class="form-group">
      <label for="pswd">Password:</label>
      <input type="password" class="form-control" id="pswd" placeholder="Atleast 6 characters" name="pswd" value="<%= u.getPswd()%>"  required>
      <div class="valid-feedback">Valid.</div>
      <div class="invalid-feedback">Please fill out this field.</div>
    </div>




    <div class="form-group form-check">
      <label class="form-check-label"></label>
        <input class="form-check-input" type="checkbox" name="remember" required> I agree on terms & conditions.
        <div class="valid-feedback">Valid.</div>   </div>
    <button type="submit" class="btn btn-primary">Submit</button>
  </form>
</div>
</div>
</div>

</div>

<script>
// Disable form submissions if there are invalid fields
(function() {
  'use strict';
  window.addEventListener('load', function() {
    // Get the forms we want to add validation styles to
    var forms = document.getElementsByClassName('needs-validation');
    // Loop over them and prevent submission
    var validation = Array.prototype.filter.call(forms, function(form) {
      form.addEventListener('submit', function(event) {
        if (form.checkValidity() === false) {
          event.preventDefault();
          event.stopPropagation();
        }
        form.classList.add('was-validated');
      }, false);
    });
  }, false);
})();
</script>

    
   
    </body>
</html>
