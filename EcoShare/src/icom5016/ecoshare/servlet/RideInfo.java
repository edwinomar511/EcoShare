package icom5016.ecoshare.servlet;

import icom5016.ecoshare.Main.QueryManager;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class RideInfo
 */
@WebServlet("/RideInfo")
public class RideInfo extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private QueryManager qm;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RideInfo() {
       qm = new QueryManager();
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String rideID = request.getParameter("rideID");
		String[] info = qm.rideInfo(rideID);		
		

		 request.getSession().setAttribute("", info);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}


}
