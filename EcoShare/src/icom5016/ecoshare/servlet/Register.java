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
 * Servlet implementation class Register
 */
@WebServlet(description = "Register [EcoShare]", urlPatterns = { "/Register" })
public class Register extends HttpServlet {
	private static final long serialVersionUID = 1L;

	QueryManager qm;
    /**
     * Default constructor. 
     */
    public Register() {
    	this.qm = new QueryManager();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet method of Register Servlet.");

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
		String email= request.getParameter("email");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String carMake = request.getParameter("carMake");
		String carModel = request.getParameter("carModel");
		String carYear = request.getParameter("carYear");
		System.out.println("doPost method of Register Servlet.");
		System.out.println(email);
		System.out.println(name);
		System.out.println(phone);
		System.out.println(carMake);
		System.out.println(carModel);
		System.out.println(carYear);
		
		request.getRequestDispatcher("/RideInformation.jsp").forward(request, response);	
		
		
	}

}