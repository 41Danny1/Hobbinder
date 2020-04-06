<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<title>Hobbinder - Create Community</title>

<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
	integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
	integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
	crossorigin="anonymous"></script>
<link href="<c:url value="/resources/css/createcommunity.css" />"
	rel="stylesheet">
<link
	href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400|Yellowtail"
	rel="stylesheet">
</head>

<body>
	${headerTemplate.template}
	
	<div class="header"></div>

	<div class="row">
		<div class="col-md-4"></div>
		<div class="col-md-4">
			<h1>Hobbinder</h1>
			<h2>Create Community</h2>
			<p>Community are great for sharing experience and staying in
				touch with the people who have same interest. Share photos and
				videos, have conversation, make plans and more.</p>
		</div>
		<div class="col-md-4"></div>
	</div>



	<div class="row">
		<div class="col-md-4"></div>

		<div class="col-md-4" style="border: 1px solid #DDDDDD">
			<form:form modelAttribute="community">
				<label class="label control-label" style="margin-top: 10px;">Name
					your community</label>
				<div class="input-group">
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-user"></span> </span> 
						<form:input path="name" class="form-control" placeholder="name your community" />
				</div>

				<label class="label control-label" style="margin-top: 10px;">About
					your community</label>
				<div class="input-group">
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-user"></span> </span>
					<form:textarea path="about" id="commBox" />
				</div>

				<label class="label control-label">Select Privacy</label>
				<div class="input-group">
					<span class="input-group-addon"><span
						class="glyphicon glyphicon-user"></span> </span>
					<div class="btn-group">
						<form:radiobutton path = "type" value = "public" label = "Public" style="margin-left: 10px;"/>
						<form:radiobutton path = "type" value = "private" label = "Private" />
					</div>
				</div>

				<form:button class="btn btn-primary" style="margin-bottom: 10px;">Create</form:button>
			</form:form>
		</div>
		<div class="col-md-4"></div>


	</div>

</body>

</html>