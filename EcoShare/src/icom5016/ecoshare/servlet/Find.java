package icom5016.ecoshare.servlet;

import icom5016.ecoshare.Main.QueryManager;

import java.io.IOException;
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
 * Servlet implementation class Find
 */
@WebServlet(description = "Find a ride [EcoShare]", urlPatterns = { "/Find" })
public class Find extends HttpServlet {
	private static final long serialVersionUID = 1L;

	QueryManager qm;
    /**
     * Default constructor. 
     */
    public Find() {
    	this.qm = new QueryManager();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet method of Find Servlet.");

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String query = "SELECT * FROM Ride WHERE ";
		String from= request.getParameter("from");
		if(!from.equals("From:") && !from.equals("")){
			query = query + "from_location= '" + from + "' AND ";
		}
		String to = request.getParameter("to");
		if(!to.equals("To:") && !to.equals("")){
			query = query + "to_location= '" + to + "' AND ";
		}
		if(query.equals("SELECT * FROM Ride WHERE ")){
			query = "SELECT * FROM Ride";
		}
		
		query = query.substring(0, query.length()-4);
		query = query + ";";
		
		ArrayList<String[]> rides = qm.findRide(query);
		String[] ride = rides.get(0);
		String rideid = ride[0];
		
		request.getSession().setAttribute("rideID", rideid);
		request.getRequestDispatcher("/RideInformation.jsp").forward(request, response);
		return;
		
		//request.getRequestDispatcher("/FindaRide.jsp").forward(request, response);	
		
	}

}
