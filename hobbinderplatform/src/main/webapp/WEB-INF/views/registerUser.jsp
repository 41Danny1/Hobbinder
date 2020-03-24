<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false"%>
<meta charset="ISO-8859-1">
<title>Register</title>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="<c:url value="/resources/css/initialPage2.css" />"> integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/initialPage.css" />">
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400|Yellowtail" rel="stylesheet">
    <link rel="stylesheet" href="<c:url value="/resources/css/initialPage3.css" />">
    <script src="<c:url value="/resources/js/initialPage.js" />"></script>
    <script src="<c:url value="/resources/js/initialPage2.js" />"></script>                   
  </head>
  <body class="bodyContainer">
    <div class="overlay"><div class="abs-center overlay-card">
      <div class="close">X</div><div class="floated overlay-image">
        <div class="abs-center post-image"></div></div>
          <div class="floated overlay-desc">
            <div class="rela-block desc-title"></div>
            <div class="rela-block desc-author"></div>
            <div class="rela-block desc-desc"></div>
          </div>
        </div>
      </div>
      <div class="nav-bar">
        <div class="horz-center nav-container">
          <div class="col-sm-1">
            <img src="<c:url value="/resources/img/CupoJava.png" />" class="img-circle" alt="CupoJava" style="width:70%">
          </div> 
          <div class="floated logo" ><font color="#f45200">Hobbinder</font></div>
            <ul class="nav-div nav-links">
            <ul class="floated nav-div" >
              <li class="rela-inline menu-toggle"></li>
            </ul>
          <div class="floated right nav-div search-container">
            <div class="rela-inline icon search-icon" ></div>
            <!-- <input type="text" placeholder="Search" class="rela-inline nav-search" style="float: right;"/> -->
          </div>
            <ul class="floated right nav-div" >
              <li class="rela-inline"><a href="<c:url value="loginHobbinder" />">Login<font color="#f45200"></font></a></li>
              <li class="rela-inline"><a href="<c:url value="initialPage" />">Back<font color="#f45200"></font></a></li>
              <div class="abs-center menu-background"></div>
            </ul>
          </div>
        </div>
      </div>
    </div>

    <form action="/action_page.php" method="post">
      <div class="formContainer">
      </br></br>
        <h2><font color="#f45200">Please Register</font></h2>

        <hr>
        <label for="firstname"><b>First Name</b></label>
        <input type="text" placeholder="Enter your First Name"  path="firstname" required>
        <br></br>

        <label for="lastname"><b>Last Name</b></label>
        <input type="text" placeholder="Enter your Last Name" path="lastname" required>
        <br></br>

        <label for="username"><b>Create a user name</b></label>
        <input type="text" placeholder="Create a User Name" path="username" required>

        
        <fieldset class="optGroup">
          <label for="gendername"><b>Gender</b></label><br></br>
            <label for="female">Female</label>
            <input name="gender" id="female" value="yes" type="radio" path="female"/>
            <label for="male"> &nbsp; &nbsp;Male</label>
            <input  name="gender" id="male" value="no" type="radio" path="male"/>
        </fieldset>


        <label for="email"><b>Email</b></label>
        <input type="text" placeholder="Enter Email" name="email" path="email" required>
        <br></br>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="psw" path="password" required>
        <br></br>

        <label for="psw-repeat"><b>Repeat Password</b></label>
        <input type="password" placeholder="Repeat Password" name="psw-repeat" required>
        <hr>
        <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

        <button type="submit" class="registerbtn">Register</button>
      </div>

    </form>
    <!-- Footer -->
    <footer class="text-center">
        <p>	&#169; 2020 Hobbinder <a href="https://www.hobbinder.ca" data-toggle="tooltip" title="Visit Hobbinder">www.hobbinder.ca</a></p> 
      </footer>
      
  </body>
</html>