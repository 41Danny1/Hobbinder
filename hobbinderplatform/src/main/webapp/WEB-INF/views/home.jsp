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

        ${headerTemplate.template}

        
            <div class="container">
                    <div class="row" style="color: #f45200"> <!-- The posts -->
	<div class="col-12">
	  
	${posts}
	
	</div>
      </div>  <!-- End of the posts -->
            </div>
               



</body>
</html>