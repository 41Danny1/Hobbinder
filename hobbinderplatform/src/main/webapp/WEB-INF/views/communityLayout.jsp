<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
  <head>
  
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link href="<c:url value="/resources/css/hobbinder.css" />"
	rel="stylesheet">
    <link rel="stylesheet" type="text/css" href="resources/css/main.css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400|Yellowtail" rel="stylesheet">
    <script src="https://kit.fontawesome.com/3e471b317e.js" crossorigin="anonymous"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
    <script src="resources/js/feedUtilities.js"></script>
    <style>
      .lastPost{
	  text-align: right;
      }
      .previewImg{
	  //background-color: #EEEEEE;
      background-position: center;
      background-size: cover;
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
          margin: 0;
	  margin-bottom: 15px;
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
    <title>
      HOBBY NAME | Hobbinder
    </title>
  </head>
  <body>
    
      ${headerTemplate.template}      

    <div class="container" style="margin-top: 15px;">

      <div class="row">
	<div class="col-12" style="background-image: url('resources/images/sampleCover.jpeg'); background-position: center; background-size: cover; height: 200px; background-color: #EEEEEE; margin-top: 15px; border-bottom: solid #f45200 5px">
	  <h1 style="position: absolute; bottom: 15px; left: 15px; margin: 0;">
	    <a href="#" class="defLinks" style="background-color: black; color: white; padding: 0 5px; border-radius: 5px 10px;">${community.name}</a>
	  </h1>
	</div>
      </div>
      
      <div class="row">
      	<div class="col-12" style="background-color: white; border-radius: 0 0 15px 15px; padding: 15px; margin-bottom: 10px;">
  			${community.about}
      	</div>
      </div>

      <div class="row">
	<div class="col-12">
	  <div style="float: left; padding: 6px 0;">
	    Sort: 
	    <a href="#" class="defLinks">Latest</a>
	  </div>
	  <div style="float: right; margin: 5px 0 5px 5px;">
	    <a href="postcreation?id=${community.id}" class="btn btn-primary defButton" style="padding: 0 15px !important;">
	      New Post
	    </a>
	  </div>
	</div>
      </div>

      <div class="row" style=""> <!-- The posts -->
	<div class="col-12 noPadding">
	
	${posts}

      <div class="row" style="margin-top: 15px; margin-bottom: 15px;">
	<div class="col-4">
	  Quick Links<br>
	  <a href="#" class="defLinks">Home</a><br>
	  <a href="#" class="defLinks">Profile</a><br>
	  <a href="#" class="defLinks">Settings</a><br>
	</div>
	<div class="col-4">
	</div>
	<div class="col-4" style="text-align: right;">
	  <a href="#" class="defLinks">Privacy Policy</a><br>
	  <a href="#" class="defLinks">Terms of Use</a>
	</div>
      </div>

    </div>
  </body>
</html>
