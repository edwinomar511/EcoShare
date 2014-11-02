package icom5016.ecoshare.Main;

import java.sql.*;

public class QueryManager {

	private Connection connect = null;
	private Statement statement = null;
	private ResultSet resultSet = null;

	public QueryManager(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://EcoShare" + "user=root&password=t12uprmicom");
		} catch (SQLException | ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public ResultSet findRide(String query) throws Exception{	 
		try {
			statement = connect.createStatement();
			resultSet = statement.executeQuery(query); 

		} catch (Exception e) {
			throw e;
		}
		return resultSet;
	}
	
	public boolean addRide(String[] ride){
		return false;	
	}

	public boolean removeRide(String rideID){
		return false;
	}
	
	public boolean addUser(String[] user){
		return false;
		
	}
	
	public boolean removeUser(String userID){
		return false;
		
	}
}
