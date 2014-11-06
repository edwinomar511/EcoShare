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
		pr.println(getHeader());
		pr.println("<h3>Search Result</h3>");
		pr.println("<form id=\"index\" method=\"post\" action=\"FindaRide\">\n ");
		for(int i = 0; i<10; i++){
			if(result.isEmpty()){
				pr.println("No Results Found");
				break;
			}
			pr.println(this.displayRide(result.get(i)));
		}
		pr.println("</form>");		
		pr.println(this.getFooter());

	}


	private String getHeader(){
		return "<!DOCTYPE HTML PUBLIC \"-//W3C//DTD HTML 4.01 Transitional//EN\" \"http://www.w3.org/TR/html4/loose.dtd\">"
				+ "\n<html lang=\"en\">"
				+ "\n<head>"
				+ "\n<meta http-equiv=\"Content-Type\" content=\"text/html; class=\"\" style=\"white-space:pre\">" 
				+ "\n<title>EcoShare - Search Result</title>"
				+ "\n<meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">"
				+ "\n<meta name=\"description\" content=\"\">"
				+ "\n<meta name=\"author\" content=\"\">"
				+ "\n<!-- Le styles -->"
				+ "\n<link href=\"/EcoShare/bootstrap/css/bootstrap.css\" "
				+ "rel=\"stylesheet\">"
				+ "\n<style type=\"text/css\">"
				+ "\nbody {"
				+ "\npadding-top: 20px;"
				+ "\npadding-bottom: 60px;"
				+ "\nmargin: 15px 0;"
				+ "\n}"
				+ "\n/* Custom container */"
				+ "\n.container {"
				+ "\n	margin: 0 auto;"
				+ "\n	max-width: 2000px;"
				+ "\n}"
				+ "\n.container>hr {"
				+ "\n	margin: 60px 0;"
				+ "\n}"
				+ "\n.jumbotron {"
				+ "\n	margin: 0px 0;"
				+ "\n	text-align: center;"
				+ "\n}"
				+ "\n.jumbotron h1 {"
				+ "\n	font-size: 100px;"
				+ "\n	line-height: 1;"
				+ "\n}"
				+ "\n.jumbotron .lead {"
				+ "\n	font-size: 24px;"
				+ "\nline-height: 1.25;"
				+ "\n}"
				+ "\n.jumbotron .btn {"
				+ "\n	font-size: 21px;"
				+ "\n	padding: 14px 24px;"
				+ "\n	margin: 15px 0;"
				+ "\n}"
				+ "\n.jumbotron .btn1 {"
				+ "\n	font-size: 21px;"
				+ "\n	padding: 14px 24px;"
				+ "\n	margin: 15px 0;"
				+ "\n}"
				+ "\n/* Supporting marketing content */"
				+ "\n.marketing {"
				+ "\n	margin: 60px 0;"
				+ "\n}"
				+ "\n.marketing p+h4 {"
				+ "\n	margin-top: 28px;"
				+ "\n}"
				+ "\n/* Customize the navbar links to be fill the entire space of the .navbar */"
				+ "\n.navbar .navbar-inner {"
				+ "\n	padding: 0;"
				+ "\n}"
				+ "\n.navbar .nav {"
				+ "\n	display: table;"
				+ "\n	width: 100%;"
				+ "\n}"
				+ "\n.navbar .nav li {"
				+ "\n	display: table-cell;"
				+ "\n	width: 1%;"
				+ "\n	float: none;"
				+ "\n}"
				+ "\n.navbar .nav li a {"
				+ "\n	font-weight: bold;"
				+ "\n	text-align: center;"
				+ "\n	border-left: 1px solid rgba(255, 255, 255, .75);"
				+ "\n	border-right: 1px solid rgba(0, 0, 0, .1);"
				+ "\n}"
				+ "\n.navbar .nav li:first-child a {"
				+ "\n	border-left: 0;"
				+ "\n	border-radius: 3px 0px 0px 3px;"
				+ "\n}"
				+ "\n.navbar .nav li:last-child a {"
				+ "\n	border-right: 0;"
				+ "\n	border-radius: 0px 3px 3px 0px;"
				+ "\n}"
				+ "\n.nav a {"
				+ "\n	background-color: #ecf0f1 !important;"
				+ "\n	color: #2d525d !important;"
				+ "\n}"
				+ "\n</style>"
				+ "\n<link href=\"bootstrap/css/bootstrap-responsive.css\" rel=\"stylesheet\">"
				+ "\n<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->"
				+ "\n<!--[if lt IE 9]>"
				+ "\n    <script src=\"//cdnjs.cloudflare.com/ajax/libs/html5shiv/3.6/html5shiv.min.js\"></script>"
				+ "\n    <![endif]-->"
				+ "\n<!-- Fav and touch icons -->"
				+ "\n<link rel=\"apple-touch-icon-precomposed\" sizes=\"144x144\""
				+ "\n	href=\"/EcoShare/bootstrap/ico/apple-touch-icon-144-precomposed.png\">"
				+ "\n<link rel=\"apple-touch-icon-precomposed\" sizes=\"114x114\""
				+ "\n	href=\"/EcoShare/bootstrap/ico/apple-touch-icon-114-precomposed.png\">"
				+ "\n<link rel=\"apple-touch-icon-precomposed\" sizes=\"72x72\""
				+ "\n	href=\"/EcoShare/bootstrap/ico/apple-touch-icon-72-precomposed.png\">"
				+ "\n<link rel=\"apple-touch-icon-precomposed\""
				+ "\nhref=\"/EcoShare/bootstrap/ico/apple-touch-icon-57-precomposed.png\">"
				+ "\n<link rel=\"shortcut icon\" href=\"/EcoShare/bootstrap/ico/favicon.png\">"
				+ "\n<script type=\"text/javascript\""
				+ "\nsrc=\"/EcoShare/ScriptLibrary/jquery-latest.pack.js\"></script>"
				+ "\n<script type=\"text/javascript\" src=\"/EcoShare/bootstrap/js/bootstrap.js\"></script>"
				+ "\n<script src=\"/EcoShare/SpryAssets/SpryValidationTextField.js\""
				+ "\ntype=\"text/javascript\"></script>"
				+ "\n<script src=\"/EcoShare/SpryAssets/SpryValidationTextarea.js\""
				+ "\ntype=\"text/javascript\"></script>"
				+ "\n<link href=\"/EcoShare/SpryAssets/SpryValidationTextField.css\""
				+ "\nrel=\"stylesheet\" type=\"text/css\">"
				+ "\n<style type=\"text/css\">"
				+ "\n.btn2 {"
				+ "\ndisplay: inline;"
				+ "\nmargin-left: .3em;"
				+ "\nzoom: 1;"
				+ "\nwhite-space: nowrap;"
				+ "\n}"
				+ "\n</style>"
				+ "\n<link href=\"/EcoShare/SpryAssets/SpryValidationTextarea.css\""
				+ "\nrel=\"stylesheet\" type=\"text/css\">"
				+ "\n</head>"
				+ "\n<body>"
				+ "\n<div class=\"masthead\">"
				+ "\n<a href=\"/EcoShare/index.jsp\"> <img src=\"/EcoShare/EcoShare_title.png\" width=\"844\" height=\"207\""
				+ "\nalign=\"absmiddle\">"
				+ "\n</a>"
				+ "\n<div class=\"navbar\">"
				+ "\n<div class=\"navbar-inner\">"
				+ "\n<div class=\"container\">"
				+ "\n<ul class=\"nav\">"
				+ "\n<li><a href=\"/EcoShare/FindaRide.jsp\">Find a Ride</a></li>"
				+ "\n<li><a href=\"/EcoShare/ShareaRide.jsp\">Share a Ride</a></li>"
				+ "\n</ul>"
				+ "\n</div>"
				+ "\n</div>"
				+ "\n</div>"
				+ "\n<!-- /.navbar -->"
				+ "\n</div>"
				+ "\n<!-- Jumbotron -->"
				+ "\n<div class=\"jumbotron\">\";"
				+ "\n}"
				+ "\nprivate String getFooter(){"
				+ "\nreturn \"</div>\"\""
				+ "\n+ \"<div class=\"row-fluid\">"
				+ "\n<div class=\"span4\">"
				+ "\n<form name=\"form1\" method=\"post\" action= \"\"></form>"
				+ "\n</div>"
				+ "\n<div class=\"span4\"></div>"
				+ "\n</div>"
				+ "\n<hr>"
				+ "\n<div class=\"footer\">"
				+ "\n<p>&copy; EcoShare 2014 by Victor, Edwin and Kevin</p>"
				+ "\n</div>"
				+ "\n</div>"
				+ "\n</body>"
				+ "\n</html>";

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

	private String displayRide(String[] ride){
		return "<div name=\"" + ride[0] + "\" method=\"post\" action=\"RideInfo\">"
				+ "<a >From: " + ride[1] + "   To: " + ride[2] + "  Price: $" + ride[5] + "</a>"
				+ "<a >Date: " + ride[3] + "   Time: " + ride[4] + "</a>"
				+ "</div>";
	}

}
