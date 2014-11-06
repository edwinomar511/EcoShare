<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta charset="utf-8">


<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>EcoShare - Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="Victor, Edwin, Kevin">





<!-- Le styles -->
<link href="/EcoShare/bootstrap/css/bootstrap.css" rel="stylesheet">
<style type="text/css">
body {
	padding-top: 60px;
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
	border-radius: 3px 0 0 3px;
}

.navbar .nav li:last-child a {
	border-right: 0;
	border-radius: 0px 3px 3px 0px;
}

.nav a {
	background-color: #ecf0f1 !important;
	color: #2d525d !important;
}

.google-maps {
	position: relative;
	padding-bottom: 75%; // This is the aspect ratio height : 0;
	margin: 15px;
	overflow: hidden;
}

.google-maps iframe {
	position: absolute;
	top: 0;
	left: 0;
	width: 100% !important;
	height: 100% !important;
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
<link href="/EcoShare/SpryAssets/SpryValidationTextField.css"
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
		<img src="/EcoShare/FindaRide.png" width="279" height="52" align="absmiddle"></br>
			<form id="index" method="post" action="Find">
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
    <input type="hidden" name="dropdown" id="dropdown">
    <div>
    <input class="btn1 btn-large btn-success" type="submit"
									value="Quick Search">
	
									
    </form>
	<input class="btn1 btn-large btn-info" type="submit"
									value="  Advanced  ">
									</div>
									
									<script src='https://maps.googleapis.com/maps/api/js?key=AIzaSyBz6bocwBcmpSmNNBYfnA8s-so9mC5G9j4&sensor=false&extension=.js'></script> 
 
<script> 
    google.maps.event.addDomListener(window, 'load', init);
    var map;
    function init() {
        var mapOptions = {
            center: new google.maps.LatLng(18.307596,-66.403657),
            zoom: 9,
            zoomControl: true,
            zoomControlOptions: {
                style: google.maps.ZoomControlStyle.DEFAULT,
            },
            disableDoubleClickZoom: true,
            mapTypeControl: true,
            mapTypeControlOptions: {
                style: google.maps.MapTypeControlStyle.HORIZONTAL_BAR,
            },
            scaleControl: true,
            scrollwheel: true,
            panControl: true,
            streetViewControl: true,
            draggable : true,
            overviewMapControl: true,
            overviewMapControlOptions: {
                opened: false,
            },
            mapTypeId: google.maps.MapTypeId.ROADMAP,
            styles: [
	{
		featureType: 'water',
		elementType: 'geometry',
		stylers: [
			{ hue: '#71ABC3' },
			{ saturation: -10 },
			{ lightness: -21 },
			{ visibility: 'simplified' }
		]
	},{
		featureType: 'landscape.natural',
		elementType: 'geometry',
		stylers: [
			{ hue: '#7DC45C' },
			{ saturation: 37 },
			{ lightness: -41 },
			{ visibility: 'simplified' }
		]
	},{
		featureType: 'landscape.man_made',
		elementType: 'geometry',
		stylers: [
			{ hue: '#C3E0B0' },
			{ saturation: 23 },
			{ lightness: -12 },
			{ visibility: 'simplified' }
		]
	},{
		featureType: 'poi',
		elementType: 'all',
		stylers: [
			{ hue: '#A19FA0' },
			{ saturation: -98 },
			{ lightness: -20 },
			{ visibility: 'off' }
		]
	},{
		featureType: 'road',
		elementType: 'geometry',
		stylers: [
			{ hue: '#FFFFFF' },
			{ saturation: -100 },
			{ lightness: 100 },
			{ visibility: 'simplified' }
		]
	}
],
        }
        var mapElement = document.getElementById('EcoShare');
        var map = new google.maps.Map(mapElement, mapOptions);
        var locations = [
['Mayaguez', 'undefined', 'undefined', 'undefined', 'undefined', 18.2013463, -67.1451517, 'https://mapbuildr.com/assets/img/markers/default.png'],
['Caguas', 'undefined', 'undefined', 'undefined', 'undefined', 18.2387995, -66.035249, 'https://mapbuildr.com/assets/img/markers/default.png']
        ];
        for (i = 0; i < locations.length; i++) {
			if (locations[i][1] =='undefined'){ description ='';} else { description = locations[i][1];}
			if (locations[i][2] =='undefined'){ telephone ='';} else { telephone = locations[i][2];}
			if (locations[i][3] =='undefined'){ email ='';} else { email = locations[i][3];}
           if (locations[i][4] =='undefined'){ web ='';} else { web = locations[i][4];}
           if (locations[i][7] =='undefined'){ markericon ='';} else { markericon = locations[i][7];}
            marker = new google.maps.Marker({
                icon: markericon,
                position: new google.maps.LatLng(locations[i][5], locations[i][6]),
                map: map,
                title: locations[i][0],
                desc: description,
                tel: telephone,
                email: email,
                web: web
            });
     }

}
</script>
<style>
    #EcoShare {
        height:500px;
        width:650px;
        text-align: center;
         margin-left: auto;
  		margin-right: auto;
    }
    .gm-style-iw * {
        display: block;
        width: 50%;
    }
    .gm-style-iw h4, .gm-style-iw p {
        margin: 0;
        padding: 0;
    }
    .gm-style-iw a {
        color: #4272db;
    }
</style>
	<div id='EcoShare'></div>
		
		</div>
		<!-- Example row of columns -->
		<div class="row-fluid">
			<div class="span4"></div>
			<div class="span4"></div>
		</div>
		<hr>
		<div class="footer">
			<p>&copy; EcoShare 2014 by Victor, Edwin and Kevin</p>
		</div>
	</div>

</body>
</html>
