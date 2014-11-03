<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
  <head>
<script language="JavaScript" src="/EcoShare/datepicker/ts_picker.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
  <title>EcoShare - Find a Ride</title>
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
  <script src="/EcoShare/SpryAssets/SpryValidationSelect.js" type="text/javascript"></script>
  <link href="/EcoShare/SpryAssets/SpryValidationTextField.css" rel="stylesheet" type="text/css">
  <link href="/EcoShare/SpryAssets/SpryValidationSelect.css" rel="stylesheet" type="text/css">
  </head>

  <body>

 <div class="container">
    <div class="masthead"> <img src="/EcoShare/EcoShare_title.png" width="844" height="207" align="absmiddle">
    <div class="navbar">
        <div class="navbar-inner">
        <div class="container">
            <ul class="nav">
            <li><a href="/EcoShare/index.jsp">Home</a></li>
            <li><a href="/EcoShare/About.jsp">About</a></li>
          </ul>
          </div>
      </div>
      </div>
    <!-- /.navbar --> 
  </div>
    

      <!-- Jumbotron -->
      <div class="jumbotron">
        <form class="text" role="form">
          <h2>Find a Ride</h2>
        <form id="index" action="Find" method = "POST">
			<input type="text" name="from" placeholder="From:">
			<input type="text" name="to" placeholder="To:">
			<!-- <input type="submit" value="Submit" > -->
		</form>
        <h2 class="form-signin-heading">Date & Time</h2>
        <p>
          <form name="tstest" method="post">
		<input type="Text" name="timestamp" value="">
		<a href="javascript:show_calendar('document.tstest.timestamp', document.tstest.timestamp.value);"><img src="/EcoShare/cal.gif" width="16" height="16" border="0" alt="Click Here to Pick up the timestamp"></a>
		</form>
        </p>
        <button type="submit" href="/EcoShare/RideInformation.jsp">Find</button>
        <p>&nbsp;</p>
        </form>
        <p><B>Available Rides:<BR>
        Click a Ride for More Info.</B></p>
        <form name="form3" method="post" action="">
          <span id="spryselect1">
            <label for="Avaliable Rides:">Available Rides:</label>
            <select name="Avaliable Rides:" size="1" class="text-info" id="Avaliable Rides:">
              <option>Ride 1</option>
              <option>Ride 2</option>
              <option>Ride 3</option>
            </select>
            <p>
        </p>
            <span class="selectRequiredMsg">Please select an item.</span></span>
        </form>
        <a class="btn btn-large btn-success" href="/EcoShare/RideInformation.jsp">Select Ride</a>
        <p>&nbsp; </p>
        
        
        <form name="form2" method="post" action="">
          <span id="sprytextfield2">
          <label for="To:"></label>
          <span class="textfieldRequiredMsg">A value i</span></span><span id="sprytextfield3">
          <label for="text2"></label>
          <span class="textfieldRequiredMsg">A value is required.</span></span>
      </form>
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
var spryselect1 = new Spry.Widget.ValidationSelect("spryselect1");
  </script>
  </body>
</html>
