<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page isELIgnored="false"%>
<!DOCTYPE html>
<html>
<title>HTML Tutorial</title>

<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    <link href="<c:url value="/resources/css/hobbysubscription.css" />"
	rel="stylesheet">
    <script src="https://kit.fontawesome.com/1e6b122d75.js" crossorigin="anonymous"></script>
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
                <li class="rela-inline"><a href="">Community</a></li>
                <li class="rela-inline"><a href="">Events</a></li>
                <li class="rela-inline"><a href="profile.html">Profile</a></li>
                <li class="rela-inline"><a href="">About uss</a>
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
        <div class="col-md-4" style="margin-top: 80px;">
            <h1>Hobbinder</h1>
            <h2>Your Hobby Subscription</h2>
            <p>Here you can find all about hobbies that you interested in.</p>
        </div>
        <div class="col-md-4"></div>
    </div>

    <div class="row">
        <div class="col-md-4"></div>

        <div class="col-md-4">

            <div class="search-box">
                <i class="fas fa-search"></i>
                <input type="text" class="form-control" name="Name" placeholder="Type for search">
            </div>

            <div class="card" style="width: 13rem; margin-top: 15px; margin-left: 25px">
                <img src="basket.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">BasketBall</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Unsubscribed</a>
                </div>
            </div>

            <div class="card" style="width: 13rem; margin-left: 19.5px; margin-top: 15px;">
                <img src="cooking.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Cooking</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Unsubscribed</a>
                </div>
            </div>

            <div class="card" style="width: 13rem; margin-left: 19.5px; margin-top: 15px;">
                <img src="sportcar.jpg" class="card-img-top" alt="...">
                <div class="card-body">
                    <h5 class="card-title">Sport Cars</h5>
                    <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                    <a href="#" class="btn btn-primary">Unsubscribed</a>
                </div>
            </div>

            <div class="row-2">
                <div class="card" style="width: 13rem; margin-top: 15px; margin-left: 25px">
                    <img src="dive.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Diving</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Unsubscribed</a>
                    </div>
                </div>

                <div class="card" style="width: 13rem; margin-top: 15px; margin-left: 19.5px;">
                    <img src="traveling.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Traveling</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Unsubscribed</a>
                    </div>
                </div>

                <div class="card" style="width: 13rem; margin-top: 15px; margin-left: 19.5px">
                    <img src="code.jpg" class="card-img-top" alt="...">
                    <div class="card-body">
                        <h5 class="card-title">Coding</h5>
                        <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
                        <a href="#" class="btn btn-primary">Unsubscribed</a>
                    </div>
                </div>


            </div>


        </div>


    </div>


    </div>

    <div class="col-md-4"></div>

    </div>



</body>

</html>