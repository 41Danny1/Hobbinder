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
    <title>Login</title>
  </head>
  <body style="margin: auto; max-width: 1000px;">

      ${headerTemplate.template}      

    <div class="container" >
      <div class="register">
      	<div class="row">
		<br>
	  		<h2><font color="#f45200">Share. Grow. Inspire.</font></h2>
      </div>
     </div>
      <br>

      
	<div class="col-12" style="border: 1px solid #DDDDDD; border-radius: .25rem;">
	
	<form:form modelAttribute="loginHobbinder" style="margin-top: 15px;"  method="post" >
	    <div class="form-group">
	      <label>Username</label>
	      <form:input path="Email" class="form-control" id="Email" placeholder="Enter your Email"/>
	    </div>

	    <div class="form-group">
	      <label for"postTitle">Password</label>
	      <form:input path="Password" cssClass="form-control" id="Password" placeholder="Create a Password"/>
	    </div>
	        
	    <div class="form-group">
	    	<form:button class="btn btn-primary defButton" >Submit</form:button>
	    </div>
	    	    <p>Forgot your<a href="forgotPass"> password</a></p>
	  </form:form>
	  
	</div>
      </div>
 

  </body>
  
  <!-- Footer -->
<footer class="text-center">
    <p>	&#169; 2020 Hobbinder <a href="https://www.hobbinder.ca" data-toggle="tooltip" title="Visit Hobbinder">www.hobbinder.ca</a></p> 
  </footer>
  
</html>
