package icom5016.ecoshare.servlet;

import icom5016.ecoshare.Main.QueryManager;

import java.io.IOException;
import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Time;


import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ShareaRide
 */
@WebServlet(description = "Share a ride [EcoShare]", urlPatterns = { "/ShareaRide" })
public class ShareaRide extends HttpServlet {
	private static final long serialVersionUID = 1L;

	QueryManager qm;
	/**
	 * Default constructor. 
	 */
	public ShareaRide() {
		this.qm = new QueryManager();
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet method of ShareaRide Servlet.");

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
		String from= request.getParameter("from");
		String to = request.getParameter("to");
		String price = request.getParameter("price");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String email = request.getParameter("email");
		String comments = request.getParameter("comments");

		if(comments.equals("Please limit your response to 200 characters.")){
			comments = "No Comments";
		}

		System.out.println("doPost method of ShareaRide Servlet.");
		String rideID = generateRideID(email);
		String query = "INSERT into Ride (ride_id, from_location, to_location, price, date, time, comment)"
				+ " VALUES ('" + rideID +"', '"+from+"', '"+to+"', "+price+", '"+date+"', '"+time+"','"+comments+"');";
		System.out.println(query);
		if(qm.ShareRide(query, rideID, email)){
			request.getRequestDispatcher("/index.jsp").forward(request, response);
		}
		else{
			request.getRequestDispatcher("/About.jsp").forward(request, response);
		}
		//request.getRequestDispatcher("/Register.jsp").forward(request, response);	

	}

	private String generateRideID(String email){
		if(email.equals("")){
			email = "def";
		}
		String number = Long.toString(System.currentTimeMillis());
		String rideID = email.substring(0,2) + number.substring(number.length()-7, number.length()-1);
		return rideID;


	}

}
