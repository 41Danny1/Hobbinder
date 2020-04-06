<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html> html> title>Hobbinder - Create Event</title>

<head>

<meta charset="utf-8">
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<link href="<c:url value="/resources/css/eventcreation.css" />" rel="stylesheet">
<link href="<c:url value="/resources/css/main.css" />"
	rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400|Yellowtail" rel="stylesheet">

</head>

<body>
    ${headerTemplate.template}

    <div class="header">

    </div>

    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <h1>Hobbinder</h1>
            <h2>Create an Event!</h2>
            <p>Community events create strong communities, and a strong community is a healthy community. A healthy community is a happy community.</p>
        </div>

        <div class="col-md-4"></div>
    </div>

    <div class="row">
        <div class="col-md-4"></div>

        <div class="col-md-4">
        <form:form modelAttribute="event">
            <label class="label control-label">Event Name</label>
            <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                </span>
                <form:input path="name" class="form-control" placeholder="event name" />

            </div>

            <label class="label control-label">Location</label>

            <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                </span>
                <form:input path = "location" class="form-control" name="Name" placeholder="location" />
            </div>

            <label class="label control-label">Description</label>
            <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                </span>
                <form:textarea path="description" id="commBox" />
            </div>

            <label class="label control-label">Date</label>
            <div class="input-group">

                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                </span>
                <form:input path="date" type="date" class="form-control" name="Name" />
            </div>
            
            <label class="label control-label">Time</label>
            <div class="input-group">

                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                </span>
                <form:input path="time" type="time" step="1" class="form-control" name="Name" />
            </div>
            
            


            <div class="btn-group">
                <label class="invite">

                  <input type="checkbox" autocomplete="off" style="padding-left: 10px;">Guests can invite friends
                      </label>
            </div>



            <div class="btn-group1">
                <label class="guestList">
                <input type="checkbox" autocomplete="off" >Show guests list</label>
            </div>


            <form:button class="btn btn-primary">Create Event</form:button>
			</form:form>


        </div>




    </div>


</body>

</html> }