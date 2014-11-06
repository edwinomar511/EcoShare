<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>EcoShare - Share a Ride</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" media="screen"
	href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">
<script>
function validateForm() {
    var from = document.forms["myForm"]["from"].value;
    var to = document.forms["myForm"]["to"].value;
    var price = document.forms["myForm"]["price"].value;
    var email = document.forms["myForm"]["email"].value;
    var atpos = email.indexOf("@");
    var dotpos = email.lastIndexOf(".");
    if (from==null || from =="" || from.equals("From:")) {
        alert("Select From: Location");
        return false;
    }
    if (to == null || to == "" || !to.equals("To:")) {
        alert("Select To: Location");
        return false;
    }
    if (price == null || price == "") {
        alert("Enter a Price");
        return false;
    }
    if (atpos< 1 || dotpos<atpos+2 || dotpos+2>=email.length) {
        alert("Not a valid e-mail address");
        return false;
    }

}
</script>

<!-- styles -->
<link href="/EcoShare/bootstrap/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 20px;
	padding-bottom: 60px;
	margin: 15px 0;
}

/* Custom container */
.container {
	margin: 0 auto;
	max-width: 1000px;
}

.container>hr {
	margin: 60px 0;
}

.jumbotron {
	margin: 0px 0;
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

.marketing p+h4 {
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
	border-left: 1px solid rgba(255, 255, 255, .75);
	border-right: 1px solid rgba(0, 0, 0, .1);
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
<link href="/EcoShare/bootstrap/css/bootstrap-responsive.css"
	rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
      <script src="//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6/html5shiv.min.js"></script>
    <![endif]-->
<!-- Fav and touch icons -->
<link rel="apple-touch-icon-precomposed" sizes="144x144"
	href="/EcoShare/bootstrap/ico/apple-touch-icon-144-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="114x114"
	href="/EcoShare/bootstrap/ico/apple-touch-icon-114-precomposed.png">
<link rel="apple-touch-icon-precomposed" sizes="72x72"
	href="/EcoShare/bootstrap/ico/apple-touch-icon-72-precomposed.png">
<link rel="apple-touch-icon-precomposed"
	href="/EcoShare/bootstrap/ico/apple-touch-icon-57-precomposed.png">
<link rel="shortcut icon" href="/EcoShare/bootstrap/ico/favicon.png">
<script type="text/javascript"
	src="/EcoShare/ScriptLibrary/jquery-latest.pack.js"></script>
<script type="text/javascript" src="/EcoShare/bootstrap/js/bootstrap.js"></script>
<script src="/EcoShare/SpryAssets/SpryValidationTextField.js"
	type="text/javascript"></script>
<script src="/EcoShare/SpryAssets/SpryValidationTextarea.js"
	type="text/javascript"></script>
<link href="/EcoShare/SpryAssets/SpryValidationTextField.css"
	rel="stylesheet" type="text/css">
<link href="/EcoShare/SpryAssets/SpryValidationTextarea.css"
	rel="stylesheet" type="text/css">
</head>

<body>

	<div class="container">

		<div class="masthead">
			<a href="/EcoShare/index.jsp"> <img
				src="/EcoShare/EcoShare_title.png" width="844" height="207"
				align="absmiddle">
			</a>
			<div class="navbar">
				<div class="navbar-inner">
					<div class="container">
						<ul class="nav">
							<li><a href="/EcoShare/index.jsp">Find a Ride</a></li>
							<li class="active"><a href="/EcoShare/ShareaRide.jsp">Share
									a Ride</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /.navbar -->
		</div>

		<!-- Jumbotron -->
		<div class="jumbotron">
	<img src="/EcoShare/ShareaRide.png" width="279" height="52" align="absmiddle"></br>
				<form id="index" name="myForm" method="post" action="ShareaRide" onsubmit="return validateForm()">
					<select id="From" name="from" onchange="return setValue();">
						<option value="From:">From:
						<option value="mayaguez">Mayaguez
						<option value="caguas">Caguas
						<option value="cidra">Cidra
					</select> <select id="To" name="to" onchange="return setValue();">
						<option value="To:">To:
						<option value="mayaguez">Mayaguez
						<option value="caguas">Caguas
						<option value="cidra">Cidra
					</select>
					<div>
					<img src="/EcoShare/SelectPrice.png" width="279" height="52" align="absmiddle"></br>
					<input type="number" min=0 name="price" placeholder="Price"> 
					</div>
				<img src="/EcoShare/Date&Time.png" width="279" height="52" align="absmiddle"></br>
					<div id="datetimepicker4" class="input-append">
						<input data-format="yyyy-MM-dd" type="text" name="date"></input> <span
							class="add-on"> <i data-time-icon="icon-time"
							data-date-icon="icon-calendar"> </i>
						</span>
					</div>

					<script type="text/javascript">
						$(function() {
							$('#datetimepicker4').datetimepicker({
								pickTime : false
							});
						});
					</script>

					<div id="datetimepicker3" class="input-append">
						<input data-format="hh:mm:ss" type="text" name="time"></input> <span
							class="add-on"> <i data-time-icon="icon-time"
							data-date-icon="icon-calendar"> </i>
						</span>
					</div>
					<script type="text/javascript">
						$(function() {
							$('#datetimepicker3').datetimepicker({
								pickDate : false,
								pick12HourFormat : true,
								pickSeconds : false
							});
						});
					</script>




				<input type="hidden" name="dropdown" id="dropdown">
				
				<br/>
<img src="/EcoShare/email.png" width="279" height="52" align="absmiddle"></br>				<input type="text" name="email" placeholder="Enter an Email:">
				<br/>
<img src="/EcoShare/Comments.png" width="279" height="52" align="absmiddle"></br>				<textarea name="comments" cols="40" rows="2">Please limit your response to 200 characters.</textarea>
				
				<div>
					<input class="btn1 btn-large btn-success" type="submit"
						value="Search">
				</div>
			</form>
			

		</div>

		<!-- Example row of columns -->
		<div class="row-fluid">
			<div class="span4">
				<form name="form1" method="post" action=""></form>
			</div>
			<div class="span4"></div>
		</div>

		<hr>

		<div class="footer">
			<p>&copy; EcoShare 2014 by Victor, Edwin and Kevin</p>
		</div>

	</div>
	<!-- /container -->
<script type="text/javascript"
		src="http://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js">
    </script>
	<script type="text/javascript"
		src="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/js/bootstrap.min.js">
    </script>
	<script type="text/javascript"
		src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.min.js">
    </script>
	<script type="text/javascript"
		src="http://tarruda.github.com/bootstrap-datetimepicker/assets/js/bootstrap-datetimepicker.pt-BR.js">
    </script>
	<script type="text/javascript">
      $('#datetimepicker').datetimepicker({
        format: 'dd/MM/yyyy hh:mm:ss',
        language: 'en-US'
      });
    </script>
</body>
</html>