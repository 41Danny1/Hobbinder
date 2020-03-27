<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<html>
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/hobbinder.css">
    <link rel="stylesheet" href="resources/css/main.css">
    <script src="https://kit.fontawesome.com/3e471b317e.js" crossorigin="anonymous"></script>
    <title>New Post | Hobbinder</title>
  </head>
  <body>

      ${headerTemplate.template}      

    <div class="container" style="margin-top: 15px;">

      <div class="row">
	<div class="col-12">
	  <h1>New Post</h1>
	</div>
      </div>

      <div class="row">
	<div class="col-12" style="border: 1px solid #DDDDDD; border-radius: .25rem;">
	  <form style="margin-top: 15px;">
	    <div class="form-group">
	      <label for"hobby">Hobby</label>
	      <input type="text" class="form-control col-4" id="hobby">
	    </div>
	    <div class="form-group">
	      <label for"postTitle">Post Title</label>
	      <input type="text" class="form-control" id="postTitle" placeholder="Title of Your Post">
	    </div>
	    <div class="form-group">
	      <label for"postContents">Contents</label>
	      <textarea class="form-control" id="postContents" placeholder="Lorem ipsum ..."></textarea>
	    </div>
	    <input class="btn btn-primary defButton" type="submit" value="Create">
	  </form>
	</div>
      </div>

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
