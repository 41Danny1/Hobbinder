<html>
  <head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/hobbinder.css">
    <link rel="stylesheet" href="resources/css/main.css">
    <script src="https://kit.fontawesome.com/3e471b317e.js" crossorigin="anonymous"></script>
    <title>New Post | Hobbinder</title>
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
