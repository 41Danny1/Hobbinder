<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/hobbinder.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400|Yellowtail" rel="stylesheet">
    <link rel="stylesheet" href="resources/css/main.css">
    <script src="https://kit.fontawesome.com/3e471b317e.js" crossorigin="anonymous"></script>
    <title>User Register</title>
  </head>
  <body style="margin: auto; max-width: 1000px;">

      ${headerTemplate.template}      

    <div class="container" >

      <div class="register">

	<br>
	  <h2>Please Register</h2>
      </div>
      <br>

      <div class="row">
	<div class="col-12" style="border: 1px solid #DDDDDD; border-radius: .25rem;">
	
	<form:form modelAttribute="user" style="margin-top: 15px;" class="register">
	    <div class="form-group">
	      <label>First Name</label>
	      <form:input path="FirstName" class="form-control" id="firstname" placeholder="Enter your First Name"/>
	    </div>
	   	<div class="form-group">
	      <label>Last Name</label>
	      <form:input path="LastName" class="form-control" id="lastname" placeholder="Enter your Last Name"/>
	    </div>
	   	<div class="form-group">
	      <label>Username</label>
	      <form:input path="UserName" class="form-control" id="username" placeholder="Create a username"/>
	    </div>
	   	<div class="form-group">
	      <label>Gender</label>
	      <form:input path="Gender" class="form-control" id="gender" placeholder="Inform your gender"/>
	    </div>
	   	<div class="form-group">
	      <label>Country</label>
	      <form:input path="Country" class="form-control" id="gender" placeholder="Enter your country"/>
	    </div>
	    <div class="form-group">
	      <label for"postTitle">Image</label>
	      <form:input path="UserImage" cssClass="form-control" id="postTitle" placeholder="Title of Your Post"/>
	    </div>
	    <div class="form-group">
	      <label for"postContents">Description</label>
	      <form:textarea path="UserDescription" cssClass="form-control" />
	    </div>
	   	<div class="form-group">
	      <label>Email</label>
	      <form:input path="Email" class="form-control" id="gender" placeholder="Inform your email"/>
	    </div>
	    <div class="form-group">
	      <label for"postTitle">Password</label>
	      <form:input path="Password" cssClass="form-control" id="postTitle" placeholder="Create a Password"/>
	    </div>
	        
	    <div class="form-group">
	    	<form:button class="btn btn-primary defButton" >Submit</form:button>
	    </div>
	  </form:form>
	  
	</div>
      </div>

  </body>
  
  <!-- Footer -->
<footer class="text-center">
    <p>	&#169; 2020 Hobbinder <a href="https://www.hobbinder.ca" data-toggle="tooltip" title="Visit Hobbinder">www.hobbinder.ca</a></p> 
  </footer>
  
</html>
