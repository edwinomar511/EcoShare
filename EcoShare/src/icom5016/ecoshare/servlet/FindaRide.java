package icom5016.ecoshare.servlet;

import icom5016.ecoshare.Main.QueryManager;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Time;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FindaRide
 */
@WebServlet(description = "Find a ride [EcoShare]", urlPatterns = { "/FindaRide" })
public class FindaRide extends HttpServlet {
	private static final long serialVersionUID = 1L;

	QueryManager qm;
	ArrayList<String[]> result = null;
    /**
     * Default constructor. 
     */
    public FindaRide() {
    	this.qm = new QueryManager();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet method of FindaRide Servlet.");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/*String from = request.getParameter("from");
		String to = request.getParameter("to");
		Time time = Time.valueOf(request.getParameter("time"));
		Date date = Date.valueOf(request.getParameter("date"));
		String price = request.getParameter("price");
		
		String query = "SELECT * FROM Ride WHERE Ride.from_location = " + from + "";
		
		ResultSet result = qm.findRide(query);
		
		if(result.equals(null)){
			//do something here
		}
		else{
			//do something here too haha...
		}*/
		
		String query = "SELECT * FROM Ride WHERE ";
		String from= request.getParameter("from");
		if(!from.equals("From:") && !from.equals("")){
			query = query + "from_location= '" + from + "' AND ";
		}
		String to = request.getParameter("to");
		if(!to.equals("To:") && !to.equals("")){
			query = query + "to_location= '" + to + "' AND ";
		}
		String minprice = request.getParameter("minprice");
		if(!minprice.equals("")){
			query = query + "price >= " + minprice + " AND ";
		}
		String maxprice = request.getParameter("maxprice");
		if(!maxprice.equals("")){
			query = query + "price <= " + maxprice + " AND ";
		}
		String date = request.getParameter("date");
		if(!date.equals("")){
			query = query + "date = '" + date + "' AND ";
		}
		String time = request.getParameter("time");
		if(!time.equals("")){
			query = query + "time = '" + time + "' AND ";
		}
		
		if(query.equals("SELECT * FROM Ride WHERE ")){
			query = "SELECT * FROM Ride";
		}
		query = query.substring(0, query.length()-4);
		query = query + ";";
		
		
		result = qm.findRide(query);
		request.getRequestDispatcher("/Search.jsp").forward(request, response);	
		PrintWriter pr = response.getWriter();
		pr.print(getHeader());
		while(!result.isEmpty()){
			
		}

	}
	
	private String getHeader(){
		return "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">"
				+ "<html lang=\"en\">"
				+ "<head>"
				+ "<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\">"
				+ "<title>EcoShare - Search Result</title>"
				+ "<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0">"
						+ "<meta name=\"description\" content="">"
								+ "<meta name=\"author\" content=\"\">"
								+ "<!-- Le styles -->
<link href="/EcoShare/bootstrap/css/bootstrap.css\" rel=\"stylesheet\">
<style type="text/css">
body {
	padding-top: 20px;
	padding-bottom: 60px;
	margin: 15px 0;
}

/* Custom container */
.container {
	margin: 0 auto;
	max-width: 2000px;
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
<script src="/EcoShare/SpryAssets/SpryValidationTextarea.js"
	type="text/javascript"></script>
<link href="/EcoShare/SpryAssets/SpryValidationTextField.css"
	rel="stylesheet" type="text/css">
<style type="text/css">
.btn2 {
	display: inline;
	margin-left: .3em;
	zoom: 1;
	white-space: nowrap;
}
</style>
<link href="/EcoShare/SpryAssets/SpryValidationTextarea.css"
	rel="stylesheet" type="text/css">
</head>

<body>

	<div class="masthead">
		<a href="/EcoShare/index.jsp"> <img
			src="/EcoShare/EcoShare_title.png" width="844" height="207"
			align="absmiddle">
		</a>
		<div class="navbar">
			<div class="navbar-inner">
				<div class="container">
					<ul class="nav">
						<li><a href="/EcoShare/FindaRide.jsp">Find a Ride</a></li>
						<li><a href="/EcoShare/ShareaRide.jsp">Share a Ride</a></li>
					</ul>
				</div>
			</div>
		</div>
		<!-- /.navbar -->
	</div>

	<!-- Jumbotron -->
	<div class="jumbotron">";
	}
	
	private String getFooter(){
		return "</div>"
				+ "<div class=\"row-fluid\">"
				+ "<div class=\"span4\">"
						+ "<form name=\"form1\" method=\"post\" action= \"\"></form>"
								+ "</div>"
								+ "<div class=\"span4\"></div>"
										+ "</div>"
										+ "<hr>"
										+ "<div class=\"footer\">"
												+ "<p>&copy; EcoShare 2014 by Victor, Edwin and Kevin</p>"
												+ "</div>"
												+ "</div>"
												+ "</body>"
												+ "</html>";
	}

}
