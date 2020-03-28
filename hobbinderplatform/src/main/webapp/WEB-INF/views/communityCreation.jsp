<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<title>Hobbinder - Creat Community</title>

<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link href="<c:url value="/resources/css/createcommunity.css" />"
	rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Montserrat|Roboto:300,400|Yellowtail" rel="stylesheet">
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
                <font color="#f45200">Hobbinder</font>
            </div>
            <ul class="floated nav-div nav-links">
                <li class="rela-inline"><a href="">Home</a></li>
                <li class="rela-inline"><a href="community">Community</a></li>
                <li class="rela-inline"><a href="event">Events</a></li>
                <li class="rela-inline"><a href="profile.html">Profile</a></li>
                <li class="rela-inline"><a href="">About us</a>
                    <li>
            </ul>
            <ul class="floated nav-div">
                <li class="rela-inline menu-toggle"></li>
            </ul>
            <div class="floated right nav-div search-container">
                <div class="rela-inline icon search-icon"></div>
                <input type="text" placeholder="Search" class="rela-inline nav-search" /></div>
            <ul class="floated right nav-div sign-div">
                <li class="rela-inline">
                    <a href="">
                        <font color="#f45200">Sign-Up</font>
                    </a>
                </li>
                <li class="rela-inline">
                    <a href="">
                        <font color="#f45200">Sign-Out</font>
                    </a>/li></ul>
            <div class="menu-card">
                <div class="abs-center menu-background"></div>
                <div class="menu-content">
                    <ul class="menu-links sub-nav-links">
                        <li class="rela-block">Home</li>
                        <li class="rela-block">Designers</li>
                        <li class="rela-block">Teams</li>
                        <li class="rela-block">Community</li>
                        <li class="rela-block">Jobs</li>
                    </ul>
                    <ul class="menu-links">
                        <li class="rela-block">About</li>
                        <li class="rela-block">Shop</li>
                        <li class="rela-block">Support</li>
                        <li class="rela-block">Tags</li>
                        <li class="rela-block">Contact</li>
                    </ul>
                    <ul class="menu-links sign-links">
                        <li class="rela-block">Sign-Up</li>
                        <li class="rela-block">Sign-Out</li>
                    </ul>
                </div>
            </div>
        </div>
    </div>

    <div class="header">

    </div>

    <div class="row">
        <div class="col-md-4">

        </div>
        <div class="col-md-4">
            <h1>Hobbinder</h1>
            <h2>Create Community</h2>
            <p>Community are great for sharing experience and staying in touch with the people who have same interest. Share photos and videos, have conversation, make plans and more.</p>
        </div>
        <div class="col-md-4"></div>
    </div>



    <div class="row">
        <div class="col-md-4"></div>

        <div class="col-md-4" style="border: 1px solid #DDDDDD">
            <label class="label control-label" style="margin-top:10px;">Name your community</label>
            <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                </span>
                
                <input type="text" class="form-control" name="name" placeholder="name your community">
            </div>

            <label class="label control-label" style="margin-top:10px;">About your community</label>
            <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                </span>
                <textarea name="about" id="commBox"></textarea>
            </div>

            <label class="label control-label">Select Privacy</label>
            <div class="input-group">
                <span class="input-group-addon"><span class="glyphicon glyphicon-user"></span>
                </span>
                <div class="btn-group">
                    <label class="public">
                        <input type="radio" name="privacy" id="option1" autocomplete="off" checked>Public
                    </label>
                    <label class="private">
                        <input type="radio" name="privacy" id="option2" autocomplete="off" >Private
                    </label>

                </div>

            </div>
            <button type="button" class="btn btn-primary" value="create" style="margin-bottom: 10px;">Create</button>

            <div class="col-md-4"></div>


        </div>

</body>

</html>