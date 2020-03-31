<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
        <head>
            <title>Hobbinder_Home</title>
            <meta charset="UTF-8">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
            <link href="<c:url value="/resources/css/hobbinder.css" />"
        	rel="stylesheet">
            <link href="<c:url value="/resources/css/main.css" />"
        	rel="stylesheet">
            <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400|Yellowtail" rel="stylesheet">
            <script src="https://kit.fontawesome.com/3e471b317e.js" crossorigin="anonymous"></script>
           <!-- <script src="profile_script.js"></script> -->
            <!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
            <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
            <style>
                    .lastPost{
	  text-align: right;
      }
      .previewImg{
	  background-color: #EEEEEE;
	  width: 48px;
	  height: 48px;
	  float: left;
	  margin-right: 15px;
      }
      a.postLinks{
	  color: #212529;
      }
      a.postLinks:hover{
	  color: #444444;
	  text-decoration: none;
      }
      .postRow{
	  padding-top: 15px;
          padding-bottom: 15px;
          border: 2px solid #DDDDDD;
          margin: 15px 0;
          background-color: white;
          border-radius: 10px;
      }
      /* .postRow:hover{
	  background-color: #EEEEEE;
      } */
      .noPadding{
	  padding: 0;
      }
      .previewToolbar{
	  margin: 5px 0;
	  padding: 0 15px;
	  margin-left: 45px;
	  background-color: #212529;
	  border-radius: 10px 0 0 10px;
      }
      .previewToolbar > a{
	  color: white;
      }
      .previewToolbar > a:hover{
	  text-decoration: none;
      }
      .previewBox{
	  padding: 0 15px;
	  margin-left: 30px;
      }
            </style>
        </head>

<body>

        <div class="overlay"><div class="abs-center overlay-card">
                <div class="close">X</div><div class="floated overlay-image">
                        <div class="abs-center post-image"></div></div>
                        <div class="floated overlay-desc">
                                <div class="rela-block desc-title"></div>
                                <div class="rela-block desc-author"></div>
                                <div class="rela-block desc-desc"></div></div></div></div>
                        <div class="nav-bar">
                                <div class="horz-center nav-container">
                                        <div class="floated logo">
                                            <a href="home.html"><font color="#f45200">Hobbinder</font</a></div>
                        <ul class="floated nav-div nav-links">
                                <li class="rela-inline"><a href="home.html">Home</a></li>
                                <li class="rela-inline"><a href="">Community</a></li>
                                <li class="rela-inline"><a href="">Events</a></li>
                                <li class="rela-inline"><a href="profile.html">Profile</a></li>
                                <li class="rela-inline"><a href="">About us</a></li></ul>
                                <ul class="floated nav-div"><li class="rela-inline menu-toggle"></li></ul>
                        <div class="floated right nav-div search-container">
                                <div class="rela-inline icon search-icon"></div>
                        <input type="text" placeholder="Search" class="rela-inline nav-search"/></div>
                        <ul class="floated right nav-div sign-div">
                        <li class="rela-inline"><a href=""><font color="#f45200">Sign-Up</font></a></li>
                        <li class="rela-inline"><a href=""><font color="#f45200">Sign-Out</font></a>/li></ul>
                        <div class="menu-card"><div 
                        class="abs-center menu-background"></div>
                        <div class="menu-content">
                <ul class="menu-links sub-nav-links">
                        <li class="rela-block">Home</li>
                        <li class="rela-block">Designers</li>
                        <li class="rela-block">Teams</li><li 
        class="rela-block">Community</li><li class="rela-block">Jobs</li></ul>
        <ul class="menu-links"><li class="rela-block">About</li>
                <li class="rela-block">Shop</li><li class="rela-block">Support</li>
                <li class="rela-block">Tags</li><li class="rela-block">Contact</li></ul>
                <ul class="menu-links sign-links"><li class="rela-block">Sign-Up</li>
                        <li class="rela-block">Sign-Out</li></ul></div></div></div></div>

        </div>

        
            <div class="container">
                    <div class="row"> <!-- The posts -->
	<div class="col-12">
	  
	${posts}
	
	</div>
      </div>  <!-- End of the posts -->
            </div>
               



</body>
</html>