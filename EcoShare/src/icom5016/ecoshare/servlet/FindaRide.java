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
 * Servlet implementation class FindaRide
 */
@WebServlet(description = "Find a ride [EcoShare]", urlPatterns = { "/FindaRide" })
public class FindaRide extends HttpServlet {
	private static final long serialVersionUID = 1L;

	QueryManager qm;
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
			query = query + "from.location= " + from + " ";
		}
		String to = request.getParameter("to");
		if(!to.equals("To:") && !to.equals("")){
			query = query + "to.location= " + to + " ";
		}
		String minprice = request.getParameter("minprice");
		if(!minprice.equals("")){
			query = query + "price >= " + minprice + " ";
		}
		String maxprice = request.getParameter("maxprice");
		if(!maxprice.equals("")){
			query = query + "price <= " + maxprice + " ";
		}
		String date = request.getParameter("date");
		if(!date.equals("")){
			query = query + "date = " + date + " ";
		}
		String time = request.getParameter("time");
		if(!time.equals("")){
			query = query + "time = " + time + " ";
		}
		query = query + ";";
//		System.out.println("doPost method of FindaRide Servlet.");
//		System.out.println(from);
//		System.out.println(to);
//		System.out.println("Price from: $"+minprice+" to: $"+maxprice);
//		System.out.println(date);
//		System.out.println(time);
		
		
		if(query.equals("SELECT * FROM Ride WHERE ")){
			query = "SELECT * FROM Ride";
		}
		System.out.println(query);
		request.getRequestDispatcher("/RideInformation.jsp").forward(request, response);	

	}

}
