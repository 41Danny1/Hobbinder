<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
        <head>
            <title>Profile_followers</title>
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

  <div class="overlay">
  <div class="abs-center overlay-card">
    <div class="close">X</div><div class="floated overlay-image">
            <div class="abs-center post-image"></div></div>
            <div class="floated overlay-desc">
                    <div class="rela-block desc-title"></div>
                    <div class="rela-block desc-author"></div>
                    <div class="rela-block desc-desc"></div></div></div></div>
            <div class="nav-bar">
                    <div class="horz-center nav-container">
                           <div class="floated logo">
                             <a href="home.html"><font color="#f45200">Hobbinder</font></a></div>
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

        <div class="rela-block container"><div class="rela-block profile-card"><ul class="mdc-list">
            <!-- <div class="container"> -->
              <div class="top_follow">
                <p><a href="profile.html"><font color="#f45200"></font>@HarukaKotani</font></a></p>
                <font color="#f45200">Followers</font></a>/<a href="profile_following.html">Following</a>
              </div>
              
              ${users}
              
              <!-- <div class="rela-block 
        profile-name-container"> -->


</body>
</html>