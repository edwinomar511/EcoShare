<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>EcoShare - Ride Information</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="">
  <meta name="author" content="">
  <!-- Le styles -->
  <link href="/EcoShare/bootstrap/css/bootstrap.css" rel="stylesheet">
  <style type="text/css">
      body {
        padding-top: 20px;
        padding-bottom: 60px;
      }

      /* Custom container */
      .container {
	margin: 0 auto;
	max-width: 2000px;
      }
      .container > hr {
        margin: 60px 0;
      }

      .jumbotron {
        margin: 50px 0;
        text-align: center;
      }
      .jumbotron h1 {
        font-size: 100px;
        line-height: 1;
      }
      .jumbotron .lead {
        font-size: 24px;
        line-height: 1.25;
      }
      .jumbotron .btn {
	font-size: 21px;
	padding: 14px 24px;
	margin: 15px 0;
      }
	  .jumbotron .btn1 {
	font-size: 21px;
	padding: 14px 24px;
	margin: 15px 0;
      }

      /* Supporting marketing content */
      .marketing {
        margin: 60px 0;
      }
      .marketing p + h4 {
        margin-top: 28px;
      }


      /* Customize the navbar links to be fill the entire space of the .navbar */
      .navbar .navbar-inner {
        padding: 0;
      }
      .navbar .nav {
	display: table;
	width: 100%;
      }
      .navbar .nav li {
        display: table-cell;
        width: 1%;
        float: none;
      }
      .navbar .nav li a {
        font-weight: bold;
        text-align: center;
        border-left: 1px solid rgba(255,255,255,.75);
        border-right: 1px solid rgba(0,0,0,.1);
      }
      .navbar .nav li:first-child a {
        border-left: 0;
        border-radius: 3px 0px 0px 3px;
      }
      .navbar .nav li:last-child a {
        border-right: 0;
        border-radius: 0px 3px 3px 0px;
      }
	  .nav a {
    background-color: #ecf0f1 !important;
    color: #2d525d !important;
}
    </style>
  <link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
  <!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
  <!--[if lt IE 9]>
      <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6/html5shiv.min.js"></script>
    <![endif]-->
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/EcoShare/bootstrap/ico/apple-touch-icon-144-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="/EcoShare/bootstrap/ico/apple-touch-icon-114-precomposed.png">
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="/EcoShare/bootstrap/ico/apple-touch-icon-72-precomposed.png">
  <link rel="apple-touch-icon-precomposed" href="/EcoShare/bootstrap/ico/apple-touch-icon-57-precomposed.png">
  <link rel="shortcut icon" href="/EcoShare/bootstrap/ico/favicon.png">
  <script type="text/javascript" src="/EcoShare/ScriptLibrary/jquery-latest.pack.js"></script>
  <script type="text/javascript" src="/EcoShare/bootstrap/js/bootstrap.js"></script>
  <script src="/EcoShare/SpryAssets/SpryValidationTextField.js" type="text/javascript"></script>
  <script src="/EcoShare/SpryAssets/SpryValidationTextarea.js" type="text/javascript"></script>
  <link href="/EcoShare/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
  <style type="text/css">
  .btn2 {  display: inline;
  margin-left: .3em;
  zoom: 1;
  white-space: nowrap;
}
  </style>
  <link href="/EcoShare/SpryAssets/SpryValidationTextarea.css" rel="stylesheet" type="text/css">
  </head>

  <body>

  <div class="container">

      <div class="masthead">
		<img src="/EcoShare/EcoShare_title.png" width="844" height="207" align="absmiddle">
                                <div class="navbar">
      <div class="navbar-inner">
            <div class="container">
              <ul class="nav">
                 <li><a href="/EcoShare/index.jsp">Home</a></li>
                <li><a href="/EcoShare/About.jsp">About</a></li>
              </ul>
            </div>
      </div>
        </div><!-- /.navbar -->
      </div>

      <!-- Jumbotron -->
      <div class="jumbotron">
        <form class="form-signin" role="form">
          <h2 class="form-signin-heading">Ride Information        </h2>
        </form>
        
<h2>Mayaguez to San Juan</h2>
        <h2>Time: 3:00PM</h2>
        <p><a href="/EcoShare/AcceptedRide.jsp" class="btn btn-primary btn-large">Accept Ride &raquo;</a></p>
        <img src="maps.png" width="578" height="363">
        <h4>Driver: name@email.com</h4>
        
<h2>&nbsp;</h2>
<form name="form2" method="post" action="">
      <span id="sprytextfield2">
      <label for="To:"></label>
      <span class="textfieldRequiredMsg">A value i</span></span><span id="sprytextfield3">
          <label for="text2"></label>
          <span class="textfieldRequiredMsg">A value is required.</span></span>
      </form>
      
      <form name="form3" method="post" action="">
        <img src="driver.png" alt="rating" width="187" height="207" align="texttop"><span id="sprytextarea1"><label for="Additional Comments:">Additional Comments:</label>
          <textarea name="Additional Comments:" id="Additional Comments:" cols="45" rows="5"></textarea>
          <span class="textareaRequiredMsg">A value is required.</span></span>
      </form>
      <p>&nbsp;</p>
      </div>

      <!-- Example row of columns -->
      <div class="row-fluid">
        <div class="span4">
          <form name="form1" method="post" action="">
          </form>
        </div>
        <div class="span4">        </div>
    </div>

      <hr>

      <div class="footer">
        <p>&copy; EcoShare 2014 by Victor, Edwin and Kevin</p>
      </div>

  </div> <!-- /container -->

  <script type="text/javascript">
var sprytextfield2 = new Spry.Widget.ValidationTextField("sprytextfield2");
var sprytextfield3 = new Spry.Widget.ValidationTextField("sprytextfield3");
var sprytextarea1 = new Spry.Widget.ValidationTextarea("sprytextarea1");
  </script>
  </body>
</html>