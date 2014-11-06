<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>EcoShare - Find a Ride</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<link
	href="http://netdna.bootstrapcdn.com/twitter-bootstrap/2.2.2/css/bootstrap-combined.min.css"
	rel="stylesheet">
<link rel="stylesheet" type="text/css" media="screen"
	href="http://tarruda.github.com/bootstrap-datetimepicker/assets/css/bootstrap-datetimepicker.min.css">


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
<link href="bootstrap/css/bootstrap-responsive.css" rel="stylesheet">
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
<script src="/EcoShare/SpryAssets/SpryValidationSelect.js"
	type="text/javascript"></script>
<link href="/EcoShare/SpryAssets/SpryValidationTextField.css"
	rel="stylesheet" type="text/css">
<link href="/EcoShare/SpryAssets/SpryValidationSelect.css"
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
							<li class="active"><a href="/EcoShare/index.jsp">Find a
									Ride</a></li>
							<li><a href="/EcoShare/ShareaRide.jsp">Share a Ride</a></li>
						</ul>
					</div>
				</div>
			</div>
			<!-- /.navbar -->
		</div>


		<!-- Jumbotron -->
		<div class="jumbotron">
			
<img src="/EcoShare/FindaRide.png" width="279" height="52" align="absmiddle"></br>				<form id="index" method="post" action="FindaRide">
					<select id="From" name="from" onchange="return setValue();">
						<option value="From:">From:
						<option value="Adjuntas">Adjuntas
						<option value="Aguada">Aguada
						<option value="Aguadilla">Aguadilla
						<option value="Aguas Buenas">Aguas Buenas
						<option value="Aibonito">Aibonito
						<option value="Añasco">Añasco
						<option value="Arecibo">Arecibo
						<option value="Arroyo">Arroyo
						<option value="Barceloneta">Barceloneta
						<option value="Barranquitas">Barranquitas
						<option value="Bayamon">Bayamon
						<option value="Cabo Rojo">Cabo Rojo
						<option value="Caguas">Caguas
						<option value="Camuy">Camuy
						<option value="Canovanas">Canovanas
						<option value="Carolina">Carolina
						<option value="Cataño">Cataño
						<option value="Cayey">Cayey
						<option value="Ceiba">Ceiba
						<option value="Ciales">Ciales
						<option value="Cidra">Cidra
						<option value="Coamo">Coamo
						<option value="Comerio">Comerio
						<option value="Corozal">Corozal
						<option value="Culebra">Culebra
						<option value="Dorado">Dorado
						<option value="Fajardo">Fajardo
						<option value="Florida">Florida
						<option value="Guanica">Guanica
						<option value="Guayama">Guayama
						<option value="Guayanilla">Guayanilla
						<option value="Guaynabo">Guaynabo
						<option value="Gurabo">Gurabo
						<option value="Hatillo">Hatillo
						<option value="Hormigueros">Hormigueros
						<option value="Humacao">Humacao
						<option value="Isabela">Isabela
						<option value="Jayuya">Jayuya
						<option value="Juana Diaz">Juana Diaz
						<option value="Juncos">Juncos
						<option value="Lajas">Lajas
						<option value="Lares">Lares
						<option value="Las Marias">Las Marias
						<option value="Las Piedras">Las Piedras
						<option value="Loiza">Loiza
						<option value="Luquillo">Luquillo
						<option value="Manati">Manati
						<option value="Maricao">Maricao
						<option value="Maunabo">Maunabo
						<option value="Mayaguez">Mayaguez
						<option value="Moca">Moca
						<option value="Morovis">Morovis
						<option value="Naguabo">Naguabo
						<option value="Naranjito">Naranjito
						<option value="Orocovis">Orocovis
						<option value="Patillas">Patillas
						<option value="Peñuelas">Peñuelas
						<option value="Ponce">Ponce
						<option value="Quebradillas">Quebradillas
						<option value="Rincón">Rincón
						<option value="Rio Grande">Rio Grande
						<option value="Sabana Grande">Sabana Grande
						<option value="Salinas">Salinas
						<option value="San German">San German
						<option value="San Juan">San Juan
						<option value="San Lorenzo">San Lorenzo
						<option value="San Sebastian">San Sebastian
						<option value="Santa Isabel">Santa Isabel
						<option value="Toa Alta">Toa Alta
						<option value="Toa Baja">Toa Baja
						<option value="Trujillo Alto">Trujillo Alto
						<option value="Utuado">Utuado
						<option value="Vega Baja">Vega Baja
						<option value="Vega Alta">Vega Alta
						<option value="Vieques">Vieques
						<option value="Villalba">Villalba
						<option value="Yabucoa">Yabucoa
						<option value="Yauco">Yauco
					</select> <select id="To" name="to" onchange="return setValue();">
						<option value="To:">To:
						<option value="Adjuntas">Adjuntas
						<option value="Aguada">Aguada
						<option value="Aguadilla">Aguadilla
						<option value="Aguas Buenas">Aguas Buenas
						<option value="Aibonito">Aibonito
						<option value="Añasco">Añasco
						<option value="Arecibo">Arecibo
						<option value="Arroyo">Arroyo
						<option value="Barceloneta">Barceloneta
						<option value="Barranquitas">Barranquitas
						<option value="Bayamon">Bayamon
						<option value="Cabo Rojo">Cabo Rojo
						<option value="Caguas">Caguas
						<option value="Camuy">Camuy
						<option value="Canovanas">Canovanas
						<option value="Carolina">Carolina
						<option value="Cataño">Cataño
						<option value="Cayey">Cayey
						<option value="Ceiba">Ceiba
						<option value="Ciales">Ciales
						<option value="Cidra">Cidra
						<option value="Coamo">Coamo
						<option value="Comerio">Comerio
						<option value="Corozal">Corozal
						<option value="Culebra">Culebra
						<option value="Dorado">Dorado
						<option value="Fajardo">Fajardo
						<option value="Florida">Florida
						<option value="Guanica">Guanica
						<option value="Guayama">Guayama
						<option value="Guayanilla">Guayanilla
						<option value="Guaynabo">Guaynabo
						<option value="Gurabo">Gurabo
						<option value="Hatillo">Hatillo
						<option value="Hormigueros">Hormigueros
						<option value="Humacao">Humacao
						<option value="Isabela">Isabela
						<option value="Jayuya">Jayuya
						<option value="Juana Diaz">Juana Diaz
						<option value="Juncos">Juncos
						<option value="Lajas">Lajas
						<option value="Lares">Lares
						<option value="Las Marias">Las Marias
						<option value="Las Piedras">Las Piedras
						<option value="Loiza">Loiza
						<option value="Luquillo">Luquillo
						<option value="Manati">Manati
						<option value="Maricao">Maricao
						<option value="Maunabo">Maunabo
						<option value="Mayaguez">Mayaguez
						<option value="Moca">Moca
						<option value="Morovis">Morovis
						<option value="Naguabo">Naguabo
						<option value="Naranjito">Naranjito
						<option value="Orocovis">Orocovis
						<option value="Patillas">Patillas
						<option value="Peñuelas">Peñuelas
						<option value="Ponce">Ponce
						<option value="Quebradillas">Quebradillas
						<option value="Rincón">Rincón
						<option value="Rio Grande">Rio Grande
						<option value="Sabana Grande">Sabana Grande
						<option value="Salinas">Salinas
						<option value="San German">San German
						<option value="San Juan">San Juan
						<option value="San Lorenzo">San Lorenzo
						<option value="San Sebastian">San Sebastian
						<option value="Santa Isabel">Santa Isabel
						<option value="Toa Alta">Toa Alta
						<option value="Toa Baja">Toa Baja
						<option value="Trujillo Alto">Trujillo Alto
						<option value="Utuado">Utuado
						<option value="Vega Baja">Vega Baja
						<option value="Vega Alta">Vega Alta
						<option value="Vieques">Vieques
						<option value="Villalba">Villalba
						<option value="Yabucoa">Yabucoa
						<option value="Yauco">Yauco
					</select>
					<div>
<img src="/EcoShare/SelectPrice.png" width="279" height="52" align="absmiddle"></br>				<form id="index" method="post" action="FindaRide">
					<input type="number" min=0 name="minprice" placeholder="Minimum Price"> 
					<input type="number" name="maxprice" placeholder="Maximum Price">
					</div>
<img src="/EcoShare/Date&Time.png" width="279" height="52" align="absmiddle"></br>				<form id="index" method="post" action="FindaRide">

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
