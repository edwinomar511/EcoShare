package icom5016.ecoshare.Main;

import java.sql.*;

public class QueryManager {

	private Connection connect = null;
	private Statement statement = null;
	private ResultSet resultSet = null;

	public QueryManager(){
		try {
			Class.forName("com.mysql.jdbc.Driver");
			connect = DriverManager.getConnection("jdbc:mysql://127.0.0.1/EcoShare" + "user=root&password=t12uprmicom");
			System.out.println("Wuujuuu!! Funciona!!");
		} catch (SQLException | ClassNotFoundException e) {
			System.out.println("Mierda!, no funcionó... :(");
		}
	}

	public ResultSet findRide(String query){	 
		try {
			statement = connect.createStatement();
			resultSet = statement.executeQuery(query); 

		} catch (Exception e) {
			return null;
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
