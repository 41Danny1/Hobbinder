<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head><%@ page isELIgnored="false"%>
<meta charset="ISO-8859-1">
<title>Initial Page</title>
    <link rel="stylesheet" type="text/css" href="<c:url value="/resources/css/initialPage.css" />">
    <link rel="stylesheet" href="<c:url value="/resources/css/initialPage2.css" />">integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
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
          <div class="floated logo" ><font color="#f45200">Welcome to Hobbinder</font></div>
            <ul class="nav-div nav-links">
            <ul class="floated nav-div" >
              <li class="rela-inline menu-toggle"></li>
            </ul>
          <div class="floated right nav-div search-container">
            <div class="rela-inline icon search-icon" ></div>
            <!-- <input type="text" placeholder="Search" class="rela-inline nav-search" style="float: right;"/> -->
          </div>
            <ul class="floated right nav-div" >
              <li class="rela-inline"><a href="<c:url value="registerUser" />"> Register<font color="#f45200"></font></a></li>
              <li class="rela-inline"><a href="<c:url value="loginHobbinder" />">Login<font color="#f45200"></font></a></li>
              <div class="abs-center menu-background"></div>
            </ul>
          </div>
        </div>
      </div>
    </div>
    <div id="myCarousel" class="carousel slide" data-ride="carousel">
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>                        
      <!-- Indicators -->
      <ol class="carousel-indicators">
        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#myCarousel" data-slide-to="1"></li>
        <li data-target="#myCarousel" data-slide-to="2"></li>
      </ol>                  
      <!-- Wrapper for slides -->
      <div class="carousel-inner" role="listbox">
        <div class="item active">
          <img src="<c:url value="/resources/img/groups.jpg" />" alt="Group" width="1200" height="700">
          <div class="carousel-caption">
            <h3><font color="#f45200">Share</font></h3>
            <p>Share your hobbies.</p>
          </div>      
        </div>                        
        <div class="item">
          <img src="<c:url value="/resources/img/running.jpg" />" alt="Running" width="1200" height="700">
          <div class="carousel-caption">
            <h3><font color="#f45200">Grow</font></h3>
            <p>Grow a community.</p>
          </div>      
        </div>                  
        <div class="item">
          <img src="<c:url value="/resources/img/friends.jpg" />" alt="Friends" width="1200" height="700">
          <div class="carousel-caption">
            <h3><font color="#f45200">Inspire</font></h3>
            <p>Inspire others.</p>
          </div>      
        </div>
      </div>                        
        <!-- Left and right controls -->
        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
          <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
          <span class="sr-only">Previous</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
          <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
          <span class="sr-only">Next</span>
        </a>

    
    <script>
    $(document).ready(function(){
      // Initialize Tooltip
      $('[data-toggle="tooltip"]').tooltip(); 
      
      // Add smooth scrolling to all links in navbar + footer link
      $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    
        // Make sure this.hash has a value before overriding default behavior
        if (this.hash !== "") {
    
          // Prevent default anchor click behavior
          event.preventDefault();
    
          // Store hash
          var hash = this.hash;
    
          // Using jQuery's animate() method to add smooth page scroll
          // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
          $('html, body').animate({
            scrollTop: $(hash).offset().top
          }, 900, function(){
      
            // Add hash (#) to URL when done scrolling (default click behavior)
            window.location.hash = hash;
          });
        } // End if
      });
    })
    </script>                
  </body>
  
</html>