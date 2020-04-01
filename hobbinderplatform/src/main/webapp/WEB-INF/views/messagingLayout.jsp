<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
  <head>
    <link rel="stylesheet" href="resources/css/hobbinder.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/main.css">
    <script src="https://kit.fontawesome.com/3e471b317e.js" crossorigin="anonymous"></script>
    <title>USERNAME | Hobbinder</title>
    <style>
      .msgInfo{
	  margin: 25px 0 15px 0;
	  background-color: #EEEEEE;
	  padding: 5px 15px;
	  border-radius: 15px;
      }
      .msgContainer{
	  border: 1px #EEEEEE solid;
      }
      .msgLeft{
	  width: fit-content;
	  background-color: #f45200;
	  padding: 5px 15px;
	  border-radius: 15px 15px 15px 0;
	  color: white;
	  clear: both;
      }
      .msgLeftInfo{
	  color: #444444;
	  clear: both;
      }
      .msgRight{
	  width: fit-content;
	  background-color: #EEEEEE;
	  padding: 5px 15px;
	  border-radius: 15px 15px 0 15px;
	  color: black;
	  float: right;
	  clear: both;
      }
      .msgRightInfo{
	  color: #444444;
	  float: right;
	  clear: both;
      }
      .hobbinderButtonOutline{
	  color: #f45200;
	  border-color: #f45200;
      }
      .hobbinderButton{
	  color: white;
	  background-color: #f45200;
	  border-color: #f41500;
      }
      .hobbinderButton:hover{
	  color: white;
      }
    </style>
  </head>
  <body>

      ${headerTemplate.template}      

    <div class="container" style="margin-top: 15px;"> <!-- Messages -->
      <div class="row">
	<div class="col-12 msgInfo">
	  <div style="width: 48px; height: 48px; background-color: orange; float: left; margin-right: 15px;"></div>
	  <div style="height: 48px; padding: 10px 0;">
	    ${recipient}
	  </div>
	</div>
      </div>
      <div class="row">
	<div class="col-12">

	  ${messages}

	</div>
      </div>
      <div class="row" style="margin-top: 15px;">
	<div class="col-12">
	  <div class="input-group">
	    <input type="text" class="form-control">
	    <div class="input-group-append">
	      <button class="btn hobbinderButton" type="button"><i class="fab fa-telegram-plane"></i>

</button>
	    </div>
	  </div>
	</div>
      </div>
    </div>

  </body>
</html>
