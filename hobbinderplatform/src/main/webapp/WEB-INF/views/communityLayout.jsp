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
    <script src="https://kit.fontawesome.com/3e471b317e.js" crossorigin="anonymous"></script>
    
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
    
      <div class="overlay">
	  <div class="abs-center overlay-card">
              <div class="close">X</div>
	      <div class="floated overlay-image">
		  <div class="abs-center post-image"></div>
	      </div>
              <div class="floated overlay-desc">
		  <div class="rela-block desc-title"></div>
		  <div class="rela-block desc-author"></div>
		  <div class="rela-block desc-desc"></div>
	      </div>
	  </div>
      </div>
      <div class="nav-bar">
          <div class="horz-center nav-container">
              <div class="floated logo">
                  <a href="home.html"><font color="#f45200">Hobbinder</font></a>
	      </div>
              <ul class="floated nav-div nav-links">
                  <li class="rela-inline"><a href="home.html">Home</a></li>
                  <li class="rela-inline"><a href="">Community</a></li>
                  <li class="rela-inline"><a href="">Events</a></li>
                  <li class="rela-inline"><a href="profile.html">Profile</a></li>
                  <li class="rela-inline"><a href="">About us</a></li></ul>
              <ul class="floated nav-div"><li class="rela-inline menu-toggle"></li></ul>
	      <div class="floated right"> <!-- Right Buttons -->
		  <ul class="floated nav-div sign-div" style="width: auto;">
		      <li class="rela-inline"><a href=""><font color="#f45200">Sign-Up</font></a></li>
		      <li class="rela-inline"><a href=""><font color="#f45200">Sign-Out</font></a></li>
		  </ul>
		  <div class="nav-div search-container" style="padding-left: 15px;">
                      <div class="rela-inline icon search-icon"></div>
                      <input type="text" placeholder="Search" class="rela-inline nav-search"/>
		  </div>
		  <div class="menu-card">
		      <div class="abs-center menu-background"></div>
		      <div class="menu-content">
			  <ul class="menu-links sub-nav-links">
			      <li class="rela-block">Home</li>
			      <li class="rela-block">Designers</li>
			      <li class="rela-block">Teams</li>
			      <li class="rela-block">Community</li><li class="rela-block">Jobs</li>
			  </ul>
			  <ul class="menu-links"><li class="rela-block">About</li>
			      <li class="rela-block">Shop</li><li class="rela-block">Support</li>
			      <li class="rela-block">Tags</li><li class="rela-block">Contact</li>
			  </ul>
			  <ul class="menu-links sign-links"><li class="rela-block">Sign-Up</li>
			      <li class="rela-block">Sign-Out</li>
			  </ul>
		      </div>
		  </div>
	      </div>
	  </div>
      </div>

    <div class="container" style="margin-top: 15px;">

      <div class="row">
	<div class="col-12" style="height: 200px; background-color: #EEEEEE; margin-top: 15px; border-bottom: solid #f45200 5px">
	  <h1 style="position: absolute; bottom: 15px; left: 15px; margin: 0;">
	    <a href="#" class="defLinks">HOBBY NAME</a>
	  </h1>
	</div>
      </div>

      <div class="row">
	<div class="col-12">
	  <div style="float: left; padding: 6px 0;">
	    Sort: 
	    <a href="#" class="defLinks">Latest</a>
	  </div>
	  <div style="float: right; margin: 5px 0 5px 5px;">
	    <button type="button" class="btn btn-primary defButton" style="padding: 0 15px !important;">
	      New Post
	    </button>
	  </div>
	</div>
      </div>

      <div class="row" style=""> <!-- The posts -->
	<div class="col-12 noPadding">

	  <div class="row postRow"> <!-- A post -->
	    <div class="col-12">
	      <div class="row"> 
		<div class="col-sm-8">
		  <div>
		    <div class="previewImg">
		      IMG
		    </div>
		    <a href="#" class="postLinks"><b>
			POST TITLE 
		    </b></a>
		    +N <!-- # likes -->
		    <br>
		    <a href="#" class="postLinks"><i class="fas fa-chevron-right"></i></a>
		    <a href="#" class="postLinks">
		      AUTHOR
		    </a>
		    - DATE, TIME
		  </div>
		</div>
		<div class="col-sm-4 lastPost">
		  Last post: DATE, TIME<br>
		  By: <a href="#" class="postLinks">USER</a>
		</div>
	      </div>
	    </div>
	  </div> <!-- End of A post -->

	  <div class="row postRow"> <!-- A post -->
	    <div class="col-12">
	      <div class="row"> 
		<div class="col-sm-8">
		  <div>
		    <div class="previewImg">
		      IMG
		    </div>
		    <a href="#" class="postLinks"><b>
			POST TITLE 
		    </b></a>
		    +N <!-- # likes -->
		    <br>
		    <a href="#" class="postLinks"><i class="fas fa-chevron-down"></i></a>
		    <a href="#" class="postLinks">
		      AUTHOR
		    </a>
		    - DATE, TIME
		  </div>
		</div>
		<div class="col-sm-4 lastPost">
		  Last post: DATE, TIME<br>
		  By: <a href="#" class="postLinks">USER</a>
		</div>
	      </div>
	      <div class="row noPadding"> <!-- Preview content -->
		<div class="col-12 noPadding">
		  <div class="previewToolbar"> <!-- Preview toolbar -->
		    <a href="#" class=""><i class="far fa-thumbs-up"></i> Like</a>&nbsp&nbsp
		    <a href="#" class=""><i class="far fa-bookmark"></i> Save</a>&nbsp&nbsp
		    <a href="#" class=""><i class="fas fa-share"></i> Share</a>&nbsp&nbsp
		    <a href="#" class=""><i class="fas fa-flag"></i> Report</a>
		  </div> <!-- End of preview toolbar -->
		  <div class="previewBox">
		    <div style="width: 200px; height: 200px; background-color: #f45200; color: white; text-align: center; padding-top: 50px;">
		      IMG PREVIEW
		    </div>
		  </div>
		</div>
	      </div> <!-- End of preview content -->
	    </div>
	  </div> <!-- End of A post -->

	  <div class="row postRow"> <!-- A post -->
	    <div class="col-12">
	      <div class="row"> 
		<div class="col-sm-8">
		  <div>
		    <div class="previewImg">
		      IMG
		    </div>
		    <a href="#" class="postLinks"><b>
			POST TITLE 
		    </b></a>
		    +N <!-- # likes -->
		    <br>
		    <a href="#" class="postLinks"><i class="fas fa-chevron-down"></i></a>
		    <a href="#" class="postLinks">
		      AUTHOR
		    </a>
		    - DATE, TIME
		  </div>
		</div>
		<div class="col-sm-4 lastPost">
		  Last post: DATE, TIME<br>
		  By: <a href="#" class="postLinks">USER</a>
		</div>
	      </div>
	      <div class="row noPadding"> <!-- Preview content -->
		<div class="col-12 noPadding">
		  <div class="previewToolbar"> <!-- Preview toolbar -->
		    <a href="#" class=""><i class="far fa-thumbs-up"></i> Like</a>&nbsp&nbsp
		    <a href="#" class=""><i class="far fa-bookmark"></i> Save</a>&nbsp&nbsp
		    <a href="#" class=""><i class="fas fa-share"></i> Share</a>&nbsp&nbsp
		    <a href="#" class=""><i class="fas fa-flag"></i> Report</a>
		  </div> <!-- End of preview toolbar -->
		  <div class="previewBox">
		    <div style="width: 100%; padding: 5px; background-color: #EEEEEE;">
		      Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.
		    </div>
		  </div>
		</div>
	      </div> <!-- End of preview content -->
	    </div>
	  </div> <!-- End of A post -->

	  <div class="row postRow"> <!-- A post -->
	    <div class="col-12">
	      <div class="row"> 
		<div class="col-sm-8">
		  <div>
		    <div class="previewImg">
		      IMG
		    </div>
		    <a href="#" class="postLinks"><b>
			POST TITLE 
		    </b></a>
		    +N <!-- # likes -->
		    <br>
		    <a href="#" class="postLinks"><i class="fas fa-chevron-right"></i></a>
		    <a href="#" class="postLinks">
		      AUTHOR
		    </a>
		    - DATE, TIME
		  </div>
		</div>
		<div class="col-sm-4 lastPost">
		  Last post: DATE, TIME<br>
		  By: <a href="#" class="postLinks">USER</a>
		</div>
	      </div>
	    </div>
	  </div> <!-- End of A post -->

	  <div class="row postRow"> <!-- A post -->
	    <div class="col-12">
	      <div class="row"> 
		<div class="col-sm-8">
		  <div>
		    <div class="previewImg">
		      IMG
		    </div>
		    <a href="#" class="postLinks"><b>
			POST TITLE 
		    </b></a>
		    +N <!-- # likes -->
		    <br>
		    <a href="#" class="postLinks"><i class="fas fa-chevron-right"></i></a>
		    <a href="#" class="postLinks">
		      AUTHOR
		    </a>
		    - DATE, TIME
		  </div>
		</div>
		<div class="col-sm-4 lastPost">
		  Last post: DATE, TIME<br>
		  By: <a href="#" class="postLinks">USER</a>
		</div>
	      </div>
	    </div>
	  </div> <!-- End of A post -->

	</div>
      </div>  <!-- End of the posts -->

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
