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
		String minprice = request.getParameter("minprice");
		String maxprice = request.getParameter("maxprice");
		String date = request.getParameter("date");
		String time = request.getParameter("time");
		String email = request.getParameter("email");
		String comments = request.getParameter("comments");
		System.out.println("doPost method of ShareaRide Servlet.");
		System.out.println(from);
		System.out.println(to);
		System.out.println("Price from: $"+minprice+" to: $"+maxprice);
		System.out.println(date);
		System.out.println(time);
		System.out.println(email);
		System.out.println(comments);
		if(email == ""){
			request.getRequestDispatcher("/Register.jsp").forward(request, response);	

		}
		else{
		request.getRequestDispatcher("/RideInformation.jsp").forward(request, response);	
		
		}
	}

}
