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
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400|Yellowtail" rel="stylesheet">
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
	
	<form:form modelAttribute="post" style="margin-top: 15px;">
	    <div class="form-group">
	      <label for"hobby">Hobby</label>
	      <form:input path="communityID" class="form-control col-4" id="hobby" />
	    </div>
	    <div class="form-group">
	      <label for"postTitle">Post Title</label>
	      <form:input path="title" cssClass="form-control" id="postTitle" placeholder="Title of Your Post"/>
	    </div>
	    <div class="form-group">
	      <label for"postContents">Contents</label>
	      <form:textarea path="content" cssClass="form-control" />
	      
	    </div>
	    <div class="form-group">
	    	<form:button class="btn btn-primary defButton" >Post</form:button>
	    </div>
	  </form:form>
	  
	</div>
      </div>

    </div>
  </body>
</html>
