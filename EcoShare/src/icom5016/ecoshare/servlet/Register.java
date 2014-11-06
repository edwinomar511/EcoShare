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
		
		String email= request.getParameter("email");
		String name = request.getParameter("name");
		String phone = request.getParameter("phone");
		String carMake = request.getParameter("carMake");
		String carModel = request.getParameter("carModel");
		String carYear = request.getParameter("carYear");
		
		String user_id = generateUserID(name,phone);
		
		String query1 = "INSERT into User (user_id, name, email, telephone)"
				+ " VALUES ('" + user_id +"', '"+name+"', '"+email+"', "+phone+");";
		qm.updateQuery(query1);
		
		String car_id = generateCarID(carMake,carModel,carYear);
		String query2 = "INSERT into Car (car_id, carMake, carModel, carYear)"
				+ " VALUES ('" + car_id +"', '"+carMake+"', '"+carModel+"', "+carYear+");";
		qm.updateQuery(query2);
		
		String query3 =  "INSERT into hasCar (user_id, car_id)"
				+ " VALUES ('" + user_id +"', '"+car_id+"', '"+");";
		qm.updateQuery(query3);
		
		request.getRequestDispatcher("/RideInformation.jsp").forward(request, response);	
		
		
	}
	
	private String generateUserID(String name, String phone){
		
		String user_id = (name.substring(0,2))+(phone.substring(3,9));
		return user_id;


	}
	
private String generateCarID(String carMake, String carModel, String carYear){
		
		String car_id = (carMake.substring(0,4))+(carModel.substring(0,2))+(carYear);
		return car_id;


	}

}