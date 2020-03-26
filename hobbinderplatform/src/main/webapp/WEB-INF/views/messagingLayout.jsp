<html>
  <head>
    <link rel="stylesheet" href="resources/css/hobbinder.css">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <link rel="stylesheet" href="resources/css/main.css">
    <script src="https://kit.fontawesome.com/3e471b317e.js" crossorigin="anonymous"></script>
    <title>USERNAME | Hobbinder</title>
    <style>
      .msgInfo{
	  margin: 25px 0 15px 0;
	  background-color: #EEEEEE;
	  padding: 5px 15px;
	  border-radius: 15px;
      }
      .msgContainer{
	  border: 1px #EEEEEE solid;
      }
      .msgLeft{
	  width: fit-content;
	  background-color: #f45200;
	  padding: 5px 15px;
	  border-radius: 15px 15px 15px 0;
	  color: white;
	  clear: both;
      }
      .msgLeftInfo{
	  color: #444444;
	  clear: both;
      }
      .msgRight{
	  width: fit-content;
	  background-color: #EEEEEE;
	  padding: 5px 15px;
	  border-radius: 15px 15px 0 15px;
	  color: black;
	  float: right;
	  clear: both;
      }
      .msgRightInfo{
	  color: #444444;
	  float: right;
	  clear: both;
      }
      .hobbinderButtonOutline{
	  color: #f45200;
	  border-color: #f45200;
      }
      .hobbinderButton{
	  color: white;
	  background-color: #f45200;
	  border-color: #f41500;
      }
      .hobbinderButton:hover{
	  color: white;
      }
    </style>
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

    <div class="container" style="margin-top: 15px;"> <!-- Messages -->
      <div class="row">
	<div class="col-12 msgInfo">
	  <div style="width: 48px; height: 48px; background-color: orange; float: left; margin-right: 15px;"></div>
	  <div style="height: 48px; padding: 10px 0;">
	    NAME
	  </div>
	</div>
      </div>
      <div class="row">
	<div class="col-12">

	  <div class="msgLeft">test</div>
	  <div class="msgLeftInfo">20:18</div>
	  <div class="msgRight">123</div>
	  <div class="msgRightInfo">20:19</div>
	  <div class="msgRight">Hello hello</div>
	  <div class="msgRightInfo">20:19</div>
	  <div class="msgLeft">test222</div>
	  <div class="msgLeftInfo">20:20</div>

	</div>
      </div>
      <div class="row" style="margin-top: 15px;">
	<div class="col-12">
	  <div class="input-group">
	    <input type="text" class="form-control">
	    <div class="input-group-append">
	      <button class="btn hobbinderButton" type="button"><i class="fab fa-telegram-plane"></i>

</button>
	    </div>
	  </div>
	</div>
      </div>
    </div>

  </body>
</html>
