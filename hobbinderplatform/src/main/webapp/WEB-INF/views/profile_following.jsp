<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
        <head>
            <title>Profile_following</title>
            <meta charset="UTF-8">
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
       
             <link href="<c:url value="/resources/css/main.css" />"
         	rel="stylesheet">
             <link href="<c:url value="/resources/css/followerMain.css" />"
         	rel="stylesheet">
             
             <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400|Yellowtail" rel="stylesheet">
             <!-- <script src="profile_script.js"></script> -->
             <!-- <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
             <script src="//code.jquery.com/jquery-1.11.1.min.js"></script> -->
         </head>
     
 
 <body>
 
 ${headerTemplate.template}    
         
         <div class="rela-block container">
        
        <div class="rela-block profile-card"><ul class="mdc-list">
            <!-- <div class="container"> -->

            ${visitedUser} 
            
              
              ${users}
              
              <!-- <div class="rela-block 
        profile-name-container"> -->



</body>
</html>